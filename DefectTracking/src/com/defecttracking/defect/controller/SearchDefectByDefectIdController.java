package com.defecttracking.defect.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;
import org.springframework.web.servlet.view.RedirectView;

import com.defecttracking.defect.command.DefectCommand;

public class SearchDefectByDefectIdController extends SimpleFormController{

	
		protected Object formBackingObject(HttpServletRequest request)
				throws Exception {
			DefectCommand defectCommand = new DefectCommand();			
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
			return defectCommand;
		}
		

		public ModelAndView onSubmit(Object command) throws ServletException {
			DefectCommand defectCommand = (DefectCommand) command;
			String forword="assignDefect.html?defid="+ defectCommand.getDefectId() +"";
			
			return new ModelAndView(new RedirectView(forword));

		}
	
}
