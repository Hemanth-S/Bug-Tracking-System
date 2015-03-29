package com.defecttracking.defect.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;
import org.springframework.web.servlet.view.RedirectView;

import com.defecttracking.project.command.ProjectCommand;

public class SearchDefectByProjectIdController extends SimpleFormController{

	
		protected Object formBackingObject(HttpServletRequest request)
				throws Exception {
			ProjectCommand projectCommand = new ProjectCommand();			
			HttpSession session = request.getSession(true);
			String userId=(String)session.getAttribute("uid");
			ModelAndView modelAndView=new ModelAndView();
			if(userId!=null)
			{
				modelAndView.setViewName("searchByPrjId");
			}
			else
			{
				modelAndView.setViewName("index");
			}
			return projectCommand;
		}
		

		public ModelAndView onSubmit(Object command) throws ServletException {
			ProjectCommand projectCommand = (ProjectCommand) command;
			String forword="assignDefect.html?prjid="+ projectCommand.getProjectCode() +"";
			
			return new ModelAndView(new RedirectView(forword));

		}
	
}
