package com.defecttracking.user.command;

import javax.jdo.annotations.IdentityType;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;


@PersistenceCapable(identityType=IdentityType.APPLICATION)
public class UserCommand {
	@PrimaryKey
	private String userId = null;
	@Persistent
	private String password = null;
	@Persistent
	private String newpassword=null;
	@Persistent
	private String confpassword = null;
	@Persistent
	private String fullName=null;
	@Persistent
	private String email=null;
	@Persistent
	private String phone=null;	
	@Persistent
	private String createdby=null;
	@Persistent
	private String creationdate=null;
	@Persistent
	private String modifiedby=null;
	@Persistent
	private String modificationdate=null;
	

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getConfpassword() {
		return confpassword;
	}

	public void setConfpassword(String confpassword) {
		this.confpassword = confpassword;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getCreatedby() {
		return createdby;
	}

	public void setCreatedby(String createdby) {
		this.createdby = createdby;
	}

	public String getCreationdate() {
		return creationdate;
	}

	public void setCreationdate(String creationdate) {
		this.creationdate = creationdate;
	}

	public String getModifiedby() {
		return modifiedby;
	}

	public void setModifiedby(String modifiedby) {
		this.modifiedby = modifiedby;
	}

	public String getModificationdate() {
		return modificationdate;
	}

	public void setModificationdate(String modificationdate) {
		this.modificationdate = modificationdate;
	}

	public String getNewpassword() {
		return newpassword;
	}

	public void setNewpassword(String newpassword) {
		this.newpassword = newpassword;
	}
	
	

}
