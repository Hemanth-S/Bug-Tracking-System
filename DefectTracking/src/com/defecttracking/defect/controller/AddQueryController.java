package com.defecttracking.defect.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;
import org.springframework.web.servlet.view.RedirectView;

import com.defecttracking.defect.bean.Query;
import com.defecttracking.defect.command.QueryCommand;
import com.defecttracking.defect.service.DefectManager;

public class AddQueryController extends SimpleFormController{

	
	private DefectManager defectManager;

		public void setDefectManager(DefectManager defectManager) {
		this.defectManager = defectManager;
	}
		
	
		protected Object formBackingObject(HttpServletRequest request)
				throws Exception {
			QueryCommand query = new QueryCommand();			
			
			return query;
		}
		

		public ModelAndView onSubmit(Object command) throws ServletException {
			QueryCommand queryCommand = (QueryCommand) command;
			Query query=new Query();
			//defectManager.saveQuery(query);
			
			return new ModelAndView(new RedirectView(getSuccessView()));

		}
}
