package com.defecttracking.user.service;

import java.util.ArrayList;
import java.util.List;

import com.defecttracking.user.bean.User;
import com.defecttracking.user.dao.UserDAO;

public class UserManagerImpl implements UserManager {

	private UserDAO userdao;

	// create a seter method of UserDao class's object

	public void setUserdao(UserDAO userdao) {
		this.userdao = userdao;
	}
	
	/**
	 * Create a method to check login
	 * ****************************** * 
	 * @param object of the User class	
	 * @return boolean status
	 */
	
	public boolean checkLogin(User user)
	{
		boolean status=false;
		status=userdao.checkLogin(user);
		return status;
	}
	

	/**
	 * Create a method to save a new user
	 * ****************************** * 
	 * @param object of the User class	
	 * @return no return
	 */
	
	
	public void saveUser(User user)	
	{
		userdao.saveUser(user);
	}
	
	
	/**
	 * Create a method to get all user details list
	 * ****************************** * 
	 * @param no parameter
	 * @return List userList
	 */
	
	public List getUserList()
	{
		List<User> userList=userdao.getUserList();
		return userList;
	}
	

	/**
	 * Create a method to get all user details list
	 * ****************************** * 
	 * @param no parameter
	 * @return List userList
	 */
	
	public List getUserListById(String userid)
	{		
		List userList=new ArrayList();
		userList=userdao.getUserListById(userid);
		return userList;
	}

	
	/**
	 * Create a method to delete a existing user
	 * ****************************** * 
	 * @param String userid	
	 * @return boolean status
	 */
	
	public boolean deleteUser(String userid)
	{
		boolean status=false;
		status=userdao.deleteUser(userid);
		return status;
	}
	
	
	/**
	 * Create a method to get a selected 
	 * user details list by roleid
	 * ****************************** * 
	 * @param String roleid
	 * @return List userList
	 */
	
	public List getUserListByRoleId(String roleid)
	{		
		List userList=new ArrayList();
		userList=userdao.getUserListByRoleId(roleid);
		return userList;
	}
	
	
}
