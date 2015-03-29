package com.defecttracking.project.service;

import java.util.ArrayList;
import java.util.List;

import com.defecttracking.project.bean.Project;
import com.defecttracking.project.dao.ProjectDAO;

public class ProjectManagerImpl implements ProjectManager {

	private ProjectDAO projectdao;

	// create a seter method of ProjectDAO class's object


	public void setProjectdao(ProjectDAO projectdao) {
		this.projectdao = projectdao;
	}

	
	

	/**
	 * Create a method to save a new Project
	 * ****************************** * 
	 * @param object of the Project class	
	 * @return no return
	 */
	
	
	public void saveProject(Project project)	
	{
		projectdao.saveProject(project);
	}
	
	
	/**
	 * Create a method to get all Project details list
	 * ****************************** * 
	 * @param no parameter
	 * @return List ProjectList
	 */
	
	public List getProjectList()
	{
		List<Project> projectList=projectdao.getProjectList();
		return projectList;
	}
	

	/**
	 * Create a method to get all Project details list
	 * ****************************** * 
	 * @param no parameter
	 * @return List ProjectList
	 */
	
	public List getProjectListById(String projectid)
	{		
		List projectList=new ArrayList();
		projectList=projectdao.getProjectListById(projectid);
		return projectList;
	}

	
	/**
	 * Create a method to delete a existing Project
	 * ****************************** * 
	 * @param String Projectid	
	 * @return boolean status
	 */
	
	public boolean deleteProject(String projectid)
	{
		boolean status=false;
		status=projectdao.deleteProject(projectid);
		return status;
	}
	
	

	/**
	 * Create a method to get a selected 
	 * project details list by projectId
	 * ****************************** * 
	 * @param String projectId
	 * @return List projectList
	 */
	
	public List getProjectListByProjectCode(String projectCode)
	{		
		List projectList=new ArrayList();
		projectList=projectdao.getProjectListByProjectCode(projectCode);
		return projectList;
	}
	
	
}
