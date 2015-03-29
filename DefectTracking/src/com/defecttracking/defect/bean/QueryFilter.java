package com.defecttracking.defect.bean;

import javax.jdo.annotations.IdentityType;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;


@PersistenceCapable(identityType=IdentityType.APPLICATION)
public class QueryFilter {

	@PrimaryKey
	private int queryFilterId;
	@Persistent
	private int queryId;
	@Persistent
	private Query query;
	@Persistent
	private String filterName=null;
	@Persistent
	private String defaultValue=null;

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

	public Query getQuery() {
		return query;
	}

	public void setQuery(Query query) {
		this.query = query;
	}
	
	
}
