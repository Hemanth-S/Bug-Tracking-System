package com.defecttracking.user.controller;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;
import org.springframework.web.servlet.view.RedirectView;

import com.defecttracking.user.bean.User;
import com.defecttracking.user.command.UserCommand;
import com.defecttracking.user.service.UserManager;

public class LoginController extends SimpleFormController {

	protected final Log logger = LogFactory.getLog(getClass());

	private UserManager userManager;

	public void setUserManager(UserManager userManager) {
		this.userManager = userManager;
	}

	HttpSession session = null;

	// create a method to open the login page

	protected Object formBackingObject(HttpServletRequest request)
			throws Exception {

		UserCommand user = new UserCommand();
		session = request.getSession();
		session.setAttribute("uid", null);
		session.setAttribute("defId", null);
		return user;
	}

	// create a method to check user id and password for login in home page and
	// set session value

	public ModelAndView onSubmit(Object command) throws ServletException {
		UserCommand userCommand = (UserCommand) command;
		User user=new User();
		user.setUserId(userCommand.getUserId());
		user.setPassword(userCommand.getPassword());
		String forward = null;
		/*if(user.getUserId().equals("admin") && user.getPassword().equals("admin"))
		{
			forward="adminhome.html";
			session.setAttribute("uid", user.getUserId());
		}
		else{*/
		
		if(user!=null)
		{
		boolean loginStatus = userManager.checkLogin(user);
		
		
		if (loginStatus) {
			List userList=userManager.getUserListById(user.getUserId());
			if(userList!=null && userList.size()>0)
			{
				User user2=(User)userList.get(0);
				if(user2.getRoleid()==1)
				{
					if (session != null) {
						session.setAttribute("uid", user.getUserId());
					}			
					forward="adminhome.html";
				}
				else if(user2.getRoleid()==2)
				{
					if (session != null) {
						session.setAttribute("uid", user.getUserId());
					}			
					forward = getSuccessView();
				}
				else
				{
					forward = "login.html?mode=error";
				}
			}
			
		} else {
			forward = "login.html?mode=error";
		}
		}
		else {
			forward = "login.html?mode=error";
		}
		//}
		return new ModelAndView(new RedirectView(forward));

	}

}
