package com.defecttracking.common.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;



/**
 * Class Name: AdminHome
 * ********************************************************************************
 * Class Description : This class is used open home page of the application
 * ******************************************************************************** *
 
 * @author Hemanth Shivasubramaniam

 * 
 */

public class AdminHomeController extends SimpleFormController{

	

	/**
	 * Create a method to open the home page
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
		if(userid!=null)
		{
			modelAndView.setViewName("adminhome");
		}
		else
		{
			modelAndView.setViewName("index");
		}
		return modelAndView;
	}
}
