package com.defecttracking.defect.bean;

import javax.jdo.annotations.IdentityType;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;


@PersistenceCapable(identityType=IdentityType.APPLICATION)
public class Presentation {

	@PrimaryKey
	private int presentationId;
	@Persistent
	private int queryId;
	@Persistent
	private Query query;
	@Persistent
	private String presentationField=null;

	public String getPresentationField() {
		return presentationField;
	}

	public void setPresentationField(String presentationField) {
		this.presentationField = presentationField;
	}

	public int getPresentationId() {
		return presentationId;
	}

	public void setPresentationId(int presentationId) {
		this.presentationId = presentationId;
	}

	public int getQueryId() {
		return queryId;
	}

	public void setQueryId(int queryId) {
		this.queryId = queryId;
	}

	public Query getQuery() {
		return query;
	}

	public void setQuery(Query query) {
		this.query = query;
	}
	
	
	
}
