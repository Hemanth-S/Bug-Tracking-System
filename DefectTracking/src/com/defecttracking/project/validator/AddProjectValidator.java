package com.defecttracking.project.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.defecttracking.project.command.ProjectCommand;



/**
 * Class Name: AddProjectValidator
 * ********************************************************************************
 * Class Description : This class is used set validation on add user page
 * ********************************************************************************
* 
 * @author Hemanth Shivasubramaniam
 * 
 *  
 */

public class AddProjectValidator implements Validator {
	public boolean supports(Class aClass) {
		return ProjectCommand.class.equals(aClass);
	}

	
	/**
	 * Create a method to validate the add user page
	 * ****************************** * 
	 * @param Object of command class
	 * @param Object of Spring Error Class
	 * @return no return
	 */
	
	public void validate(Object obj, Errors errors) {
		ProjectCommand projectCommand = (ProjectCommand) obj;
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "projectCode",
				"field.required", "Project Code required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "projectName",
				"field.required", "Project Name Required");			
		
	}
}
