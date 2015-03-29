package com.defecttracking.project.service;

import java.util.List;

import com.defecttracking.project.bean.Project;

public interface ProjectManager {
	
	public void saveProject(Project project);
	
	public List getProjectList();
	
	public List getProjectListById(String projectid);
	
	public boolean deleteProject(String projectid);
	
	public List getProjectListByProjectCode(String projectCode);
}
