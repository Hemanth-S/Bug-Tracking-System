package com.defecttracking.defect.service;

import java.util.ArrayList;
import java.util.List;

import com.defecttracking.defect.bean.Defect;
import com.defecttracking.defect.bean.Notes;
import com.defecttracking.defect.dao.DefectDAO;

public class DefectManagerImpl implements DefectManager {

	private DefectDAO defectdao;
	
	
	

	public void setDefectdao(DefectDAO defectdao) {
		this.defectdao = defectdao;
	}

	public List getDefectList()
	{
		List defectList=new ArrayList();
		defectList=defectdao.getDefectList();
		return defectList;
	}
	
	public List getDefectListByUserId(String userId)
	{
		List defectList=new ArrayList();
		defectList=defectdao.getDefectListByUserId(userId);
		return defectList;
	}
	
	public String getLastDefectId()
	{
		String defectId=null;
		defectId=defectdao.getLastDefectId();
		return defectId;
	}
	
	/**
	 * Create a method to get a selected defect details list
	 * ****************************** * 
	 * @param String defectid
	 * @return List defectList
	 */
	
	public List getDefectListById(String defectId)
	{
		List defectDetails=new ArrayList();
		defectDetails=defectdao.getDefectListById(defectId);
		return defectDetails;
	}
	
		
	public void saveDefect(Defect defect) 
	{
		defectdao.saveDefect(defect);
	}


	/**
	 * Create a method to save a new Notes
	 * ****************************** * 
	 * @param object of the Notes class	
	 * @return no return
	 */
	
	public void saveNotes(Notes notes)
	{	
		defectdao.saveNotes(notes);
	}
	
	/**
	 * Create a method to get all user details list
	 * ****************************** * 
	 * @param no parameter
	 * @return List userList
	 */
	
	public List getNotesList()
	{	
		List notesList=new ArrayList();
		notesList=defectdao.getNotesList();
		return notesList;		
	}
	
	
	/**
	 * Create a method to get a selected Notes details list
	 * ****************************** * 
	 * @param String notesId
	 * @return List notesList
	 */
	
	public List getNotesListById(String notesId)
	{	
		List notesList=new ArrayList();
		notesList=defectdao.getNotesListById(notesId);
		return notesList;
	}
	
	
	/**
	 * Create a method to get a selected 
	 * Notes details list by userId
	 * ****************************** * 
	 * @param String userId
	 * @return List defectList
	 */
	
	public List getNotesListByDefectId(String defectId)
	{		
		List notesList=new ArrayList();
		notesList=defectdao.getNotesListByDefectId(defectId);
		return notesList;
	}
	
	
	/**
	 * Create a method to get a selected 
	 * defect details list by projectId
	 * ****************************** * 
	 * @param String projectId
	 * @return List defectList
	 */
	
	public List getDefectListByProjectId(String projectId)
	{		
		List defectList=new ArrayList();
		defectList=defectdao.getDefectListByProjectId(projectId);
		return defectList;
	}
	
	
}
