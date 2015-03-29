package com.defecttracking.user.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;

import com.defecttracking.common.helper.ControllerHelper;
import com.defecttracking.user.service.UserManager;


/**
 * Class Name: DeleteUserController
 * ********************************************************************************
 * Class Description : This class is used to delete a user details 
 * ******************************************************************************** *
* 
 * @author Hemanth Shivasubramaniam
 * 
 * 
 */

public class DeleteUserController extends SimpleFormController{
	

	/**
	 * Create a method to delete a selected user page
	 * ******************************
	 * 
	 * @param HttpServletRequest	
	 * @param HttpServletResponse 
	 * @throws Exception
	 * @return ModelAndView
	 */
	
	private UserManager userManager;
	
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		ModelAndView modelAndView = new ModelAndView();	
		HttpSession session=request.getSession();
		String userid=(String)session.getAttribute("uid");
		String uid=(String)request.getParameter("uid");		
		if(userid!=null)
		{
				int l = uid.length();
				char c = uid.charAt(l - 1);
				if (c == ' ') {
					String[] userId = uid.split(" ");
					if (null != userId) {
						for (int i = 0; i < userId.length; i++) {
							userManager.deleteUser(userId[i]);							
						}
					}
				} else {
					userManager.deleteUser(uid);
				}
			
			
			/*if(uid!=null)
			{
			restaurantManager.deleteUser(uid);
			}*/
			String pageIndx=(String)request.getParameter("pageIndx");
			if(pageIndx==null)
			{
				pageIndx="1";
			}
			List userList=userManager.getUserList();
			modelAndView.addObject("userList", userList);
			modelAndView.setViewName("viewUser");
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
