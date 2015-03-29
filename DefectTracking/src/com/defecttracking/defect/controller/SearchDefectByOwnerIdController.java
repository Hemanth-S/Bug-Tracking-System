package com.defecttracking.defect.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;
import org.springframework.web.servlet.view.RedirectView;

import com.defecttracking.user.command.UserCommand;

public class SearchDefectByOwnerIdController extends SimpleFormController{

	
		protected Object formBackingObject(HttpServletRequest request)
				throws Exception {
			UserCommand userCommand = new UserCommand();			
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
			return userCommand;
		}
		

		public ModelAndView onSubmit(Object command) throws ServletException {
			UserCommand userCommand = (UserCommand) command;
			String forword="assignDefect.html?ownid="+ userCommand.getUserId() +"";
			
			return new ModelAndView(new RedirectView(forword));

		}
	
}
