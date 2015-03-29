package com.defecttracking.defect.bean;

import javax.jdo.annotations.IdentityType;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

@PersistenceCapable(identityType=IdentityType.APPLICATION)
public class Severity {

	@PrimaryKey
	private int severityId;
	@Persistent
	private String severityValue=null;

	public int getSeverityId() {
		return severityId;
	}

	public void setSeverityId(int severityId) {
		this.severityId = severityId;
	}

	public String getSeverityValue() {
		return severityValue;
	}

	public void setSeverityValue(String severityValue) {
		this.severityValue = severityValue;
	}
	
	
}
