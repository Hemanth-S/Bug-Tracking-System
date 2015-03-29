package com.defecttracking.project.command;

import javax.jdo.annotations.IdentityType;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;



@PersistenceCapable(identityType=IdentityType.APPLICATION)
public class ProjectCommand {
	@PrimaryKey
	private Long projectId = null;
	@Persistent
	private String projectCode = null;
	@Persistent
	private String projectName=null;
	@Persistent
	private String clientName=null;
	@Persistent
	private String startDate=null;
	@Persistent
	private String totalDay=null;
	@Persistent
	private String technology=null;	
	@Persistent
	private String description=null;	
	@Persistent
	private String createdby=null;
	@Persistent
	private String creationdate=null;
	@Persistent
	private String modifiedby=null;
	@Persistent
	private String modificationdate=null;
	
	public Long getProjectId() {
		return projectId;
	}
	public void setProjectId(Long projectId) {
		this.projectId = projectId;
	}
	public String getProjectCode() {
		return projectCode;
	}
	public void setProjectCode(String projectCode) {
		this.projectCode = projectCode;
	}
	public String getProjectName() {
		return projectName;
	}
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getTotalDay() {
		return totalDay;
	}
	public void setTotalDay(String totalDay) {
		this.totalDay = totalDay;
	}
	public String getTechnology() {
		return technology;
	}
	public void setTechnology(String technology) {
		this.technology = technology;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
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
	public String getClientName() {
		return clientName;
	}
	public void setClientName(String clientName) {
		this.clientName = clientName;
	}
	
	

}
