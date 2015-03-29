package com.defecttracking.defect.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class ViewDefectsController implements Controller{
	
	
	public ModelAndView handleRequest(HttpServletRequest request,
		HttpServletResponse response) throws ServletException, IOException {
		ModelAndView modelAndView = new ModelAndView("viewDefects");
		HttpSession session = request.getSession(true);
		List defectList=(List)session.getAttribute("defectList");
		List presentationFieldsList=(List)session.getAttribute("presentationFieldsList");
		System.out.println("Size "+defectList.size());
		modelAndView.addObject("defectList", defectList);
		modelAndView.addObject("presentationFieldsList", presentationFieldsList);
		return modelAndView;

	}

}
