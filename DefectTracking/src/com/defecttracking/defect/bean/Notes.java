package com.defecttracking.defect.bean;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.IdentityType;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

@PersistenceCapable(identityType=IdentityType.APPLICATION)
public class Notes {
	
	@PrimaryKey
	@Persistent(valueStrategy =IdGeneratorStrategy.IDENTITY)
	private Long notesId;
	@Persistent
	private Long defectId;
	@Persistent
	private String userId;
	@Persistent
	private String comments=null;
	@Persistent
	private String submittedDate;
	
	
	public Long getNotesId() {
		return notesId;
	}
	public void setNotesId(Long notesId) {
		this.notesId = notesId;
	}
	public Long getDefectId() {
		return defectId;
	}
	public void setDefectId(Long defectId) {
		this.defectId = defectId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	public String getSubmittedDate() {
		return submittedDate;
	}
	public void setSubmittedDate(String submittedDate) {
		this.submittedDate = submittedDate;
	}
	
	
	
}
