package com.defecttracking.user.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;
import org.springframework.web.servlet.view.RedirectView;

import com.defecttracking.user.command.UserCommand;
import com.defecttracking.user.service.UserManager;

public class FileUploadController extends SimpleFormController{

	private UserManager userManager;

	public void setUserManager(UserManager userManager) {
		this.userManager = userManager;
	}

	HttpSession session = null;

	// create a method to open the login page

	protected Object formBackingObject(HttpServletRequest request)
			throws Exception {

		UserCommand user = new UserCommand();
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.addObject("testFileUpload");
		return user;
	}

	// create a method to check user id and password for login in home page and
	// set session value

	public ModelAndView onSubmit(Object command) throws ServletException {
		UserCommand user = (UserCommand) command;

		
		return new ModelAndView(new RedirectView(getSuccessView()));

	}

}
