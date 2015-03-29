package com.defecttracking.defect.command;

import com.defecttracking.defect.bean.Query;

public class QueryFilterCommand {

	
	private int queryFilterId;
	
	private int queryId;
	
	private Query query;
	
	private String filterName=null;
	
	private String defaultValue=null;
	
	private String path1=null;
	
	private String path2=null;
	
	private String path3=null;

	public String getDefaultValue() {
		return defaultValue;
	}

	public void setDefaultValue(String defaultValue) {
		this.defaultValue = defaultValue;
	}

	public String getFilterName() {
		return filterName;
	}

	public void setFilterName(String filterName) {
		this.filterName = filterName;
	}

	public String getPath1() {
		return path1;
	}

	public void setPath1(String path1) {
		this.path1 = path1;
	}

	public String getPath2() {
		return path2;
	}

	public void setPath2(String path2) {
		this.path2 = path2;
	}

	public String getPath3() {
		return path3;
	}

	public void setPath3(String path3) {
		this.path3 = path3;
	}

	public Query getQuery() {
		return query;
	}

	public void setQuery(Query query) {
		this.query = query;
	}

	public int getQueryFilterId() {
		return queryFilterId;
	}

	public void setQueryFilterId(int queryFilterId) {
		this.queryFilterId = queryFilterId;
	}

	public int getQueryId() {
		return queryId;
	}

	public void setQueryId(int queryId) {
		this.queryId = queryId;
	}
	
	

}
