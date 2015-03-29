package com.defecttracking.user.service;

import java.util.List;

import com.defecttracking.user.bean.User;

public interface UserManager {
public boolean checkLogin(User user);
	
	public void saveUser(User user);
	
	public List getUserList();
	
	public List getUserListById(String userid);
	
	public boolean deleteUser(String userid);
	
	public List getUserListByRoleId(String roleid);
}
