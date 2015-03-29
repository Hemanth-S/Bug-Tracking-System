package com.defecttracking.defect.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.defecttracking.defect.bean.Defect;
import com.defecttracking.defect.service.DefectManager;
import com.defecttracking.project.bean.Project;
import com.defecttracking.project.service.ProjectManager;

public class AssignDefectToUserController implements Controller{
	
	public DefectManager defectManager;
	public ProjectManager projectManager;
	
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		ModelAndView modelAndView = new ModelAndView("assignDefect");
		HttpSession session = request.getSession(true);
		String userId=(String)session.getAttribute("uid");
		List defectList=new ArrayList();
		if(userId!=null)
		{	
			String prjCode=request.getParameter("prjid");
			String ownid=request.getParameter("ownid");
			String defid=request.getParameter("defid");
			if(prjCode!=null)
			{
				List projectList=projectManager.getProjectListByProjectCode(prjCode);
				if(projectList!=null && projectList.size()>0)
				{
					Project project=(Project)projectList.get(0);
				defectList=defectManager.getDefectListByProjectId(String.valueOf(project.getProjectId()));
				}
			}
			else if(ownid!=null)
			{
			defectList=defectManager.getDefectListByUserId(ownid);
			}
			else if(defid!=null)
			{
			defectList=defectManager.getDefectListById(defid);
			}
			
			else if(userId!=null)
			{
			defectList=defectManager.getDefectListByUserId(userId);
			}
			
			
			if(defectList!=null && defectList.size()>0)
			{
				for(int i=0;i<defectList.size();i++)
				{
					
					Defect defect=(Defect)defectList.get(i);
					String projectId=defect.getProject();
					if(projectId!=null)
					{
						List projectList=projectManager.getProjectListById(projectId);
						if(projectList!=null && projectList.size()>0)
						{
							Project project=(Project)projectList.get(0);
							defect.setProjectCode(project.getProjectCode());
							defect.setProjectName(project.getProjectName()+"("+ project.getProjectCode() +")");
						}
					}
				}
			}
			
			modelAndView.addObject("defectList", defectList);
		}
		else
		{
			modelAndView.setViewName("index");
		}
		
		return modelAndView;

	}

	
	
	
	public void setDefectManager(DefectManager defectManager) {
		this.defectManager = defectManager;
	}




	public void setProjectManager(ProjectManager projectManager) {
		this.projectManager = projectManager;
	}
	
	

}
