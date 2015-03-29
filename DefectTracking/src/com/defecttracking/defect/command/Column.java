package com.defecttracking.defect.command;


/**
 * Class Name: Column
 * ********************************************************************************
 * Class Description : This class is used declare all propaties of Column for get 
 * all column name of booking table  with there seter and geter method
 * ********************************************************************************
 * @author Hemanth Shivasubramaniam
 
 * 
 */

public class Column {
	private int columnId;
	
	private String columnName=null;

	public int getColumnId() {
		return columnId;
	}

	public void setColumnId(int columnId) {
		this.columnId = columnId;
	}

	public String getColumnName() {
		return columnName;
	}

	public void setColumnName(String columnName) {
		this.columnName = columnName;
	}
	
	

}
