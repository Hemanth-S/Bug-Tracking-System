package com.defecttracking.user.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.defecttracking.user.command.UserCommand;



/**
 * Class Name: ChangePasswordValidator
 * ********************************************************************************
 * Class Description : This class is used set validation on change password page
 * ******************************************************************************** *
* 
 * @author Hemanth Shivasubramaniam
 * 
 * 
 * 
 */

public class ChangePasswordValidator implements Validator {
	public boolean supports(Class aClass) {
		return UserCommand.class.equals(aClass);
	}

	
	/**
	 * Create a method to validate the add user page
	 * ****************************** * 
	 * @param Object of command class
	 * @param Object of Spring Error Class
	 * @return no return
	 */
	
	public void validate(Object obj, Errors errors) {
		UserCommand userCommand = (UserCommand) obj;
				
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password",
				"field.required", "Old Password Required");		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "confpassword",
				"field.required", "Confirm Password required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "newpassword",
				"field.required", "New Password Required");			
		
		
		if (!errors.hasFieldErrors("newpassword")) {
			if(!userCommand.getNewpassword().equals(userCommand.getConfpassword()))
				errors.rejectValue("confpassword", "not_zero",
				"New Password and Confirm Password should be match");
			}			
			
		
		
	}
}
