package com.defecttracking.user.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;

//import com.restaurant.common.ControllerHelper;
import com.defecttracking.common.helper.ControllerHelper;
import com.defecttracking.user.service.UserManager;


/**
 * Class Name: ViewAdminUserController
 * ********************************************************************************
 * Class Description : This class is used view all user details 
 * ******************************************************************************** *
* 
 * @author Hemanth Shivasubramaniam
 * 
 * 
 */


public class ViewAdminUserController extends SimpleFormController{
	
	private UserManager userManager;
	
	

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
			List userList=userManager.getUserListByRoleId("1");			
			modelAndView.setViewName("viewAdmin");
			modelAndView.addObject("userList", userList);
			ControllerHelper.setPagingVar(pageIndx, modelAndView, userList);
		}
		else
		{
			modelAndView.setViewName("index");
		}
		return modelAndView;
	}

	

	/**
	 * Create a method setter method of UserManager class
	 * ****************************** * 
	 * @param object of the UserManager class	
	 * @return no return
	 */

	public void setUserManager(UserManager userManager) {
		this.userManager = userManager;
	}
	
	

}
