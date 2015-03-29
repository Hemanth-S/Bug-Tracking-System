package com.defecttracking.project.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;

//import com.restaurant.common.ControllerHelper;
import com.defecttracking.common.helper.ControllerHelper;
import com.defecttracking.project.service.ProjectManager;
import com.defecttracking.user.service.UserManager;


/**
 * Class Name: ViewUserController
 * ********************************************************************************
 * Class Description : This class is used view all user details 
 * ******************************************************************************** *
* 
 * @author Hemanth Shivasubramaniam
 * 
 * 
 */


public class ViewProjectController extends SimpleFormController{
	
	private ProjectManager projectManager;
	
	

	/**
	 * Create a method to open the view user page
	 * ******************************
	 * 
	 * @param HttpServletRequest	
	 * @param HttpServletResponse 
	 * @throws Exception
	 * @return ModelAndView
	 */
	
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		HttpSession session=request.getSession();
		String userid=(String)session.getAttribute("uid");
		String pageIndx=null;
		if(userid!=null)
		{
			pageIndx=(String)request.getParameter("pageIndx");
			if(pageIndx==null)
			{
				pageIndx="1";
			}
			List projectList=projectManager.getProjectList();
			modelAndView.setViewName("viewProject");
			modelAndView.addObject("projectList", projectList);
			ControllerHelper.setPagingVar(pageIndx, modelAndView, projectList);
		}
		else
		{
			modelAndView.setViewName("index");
		}
		return modelAndView;
	}



	/**
	 * Create a method setter method of ProjectManager class
	 * ****************************** * 
	 * @param object of the ProjectManager class	
	 * @return no return
	 */
	

	public void setProjectManager(ProjectManager projectManager) {
		this.projectManager = projectManager;
	}

	

	

}
