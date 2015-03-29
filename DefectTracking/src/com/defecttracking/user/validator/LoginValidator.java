package com.defecttracking.user.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.defecttracking.user.command.UserCommand;



/**
 * Class Name: LoginValidator
 * ********************************************************************************
 * Class Description : This class is used set validation on login page
 * ******************************************************************************** *
* 
 * @author Hemanth Shivasubramaniam
 * 
 *  
 * 
 */

public class LoginValidator implements Validator {
	public boolean supports(Class aClass) {
		return UserCommand.class.equals(aClass);
	}

	
	/**
	 * Create a method to validate the login page
	 * ****************************** * 
	 * @param Object of command class
	 * @param Object of Spring Error Class
	 * @return no return
	 */
	
	public void validate(Object obj, Errors errors) {
		UserCommand userCommand = (UserCommand) obj;
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "userid",
				"field.required", "User Id Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password",
				"field.required", "Password Required");		
		
		
	}
}
