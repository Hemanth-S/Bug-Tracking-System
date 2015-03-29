package com.defecttracking.defect.command;

public class QueryCommand {

	private int queryId;
	
	private String userId=null;
	
	private String queryName=null;
	
	private String queryType=null;
	
	private String fields=null;
	
	private String filter=null;
	
	private String queryfields=null;
	
	private String filterName=null;
	
	private String presentationFeldsName=null;

	public int getQueryId() {
		return queryId;
	}

	public void setQueryId(int queryId) {
		this.queryId = queryId;
	}

	public String getQueryName() {
		return queryName;
	}

	public void setQueryName(String queryName) {
		this.queryName = queryName;
	}

	public String getQueryType() {
		return queryType;
	}

	public void setQueryType(String queryType) {
		this.queryType = queryType;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getFields() {
		return fields;
	}

	public void setFields(String fields) {
		this.fields = fields;
	}

	public String getFilter() {
		return filter;
	}

	public void setFilter(String filter) {
		this.filter = filter;
	}

	public String getQueryfields() {
		return queryfields;
	}

	public void setQueryfields(String queryfields) {
		this.queryfields = queryfields;
	}

	public String getFilterName() {
		return filterName;
	}

	public void setFilterName(String filterName) {
		this.filterName = filterName;
	}

	public String getPresentationFeldsName() {
		return presentationFeldsName;
	}

	public void setPresentationFeldsName(String presentationFeldsName) {
		this.presentationFeldsName = presentationFeldsName;
	}

	
	
	
}
