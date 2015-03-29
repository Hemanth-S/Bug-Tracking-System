package com.defecttracking.defect.service;

import java.util.List;

import com.defecttracking.defect.bean.Defect;
import com.defecttracking.defect.bean.Notes;

public interface DefectManager {

	public List getDefectList();
	
	public List getDefectListByUserId(String userId);
	
	public String getLastDefectId();
	
	public List getDefectListById(String defectId);
	
	public void saveDefect(Defect defect) ;
	
	public void saveNotes(Notes notes);
	
	public List getNotesList();
	
	public List getNotesListById(String notesId);
	
	public List getNotesListByDefectId(String defectId);
	
	public List getDefectListByProjectId(String projectId);
	

}
