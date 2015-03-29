package com.defecttracking;

import javax.jdo.JDOHelper;
import javax.jdo.PersistenceManagerFactory;

public class PMF {

	public static final PersistenceManagerFactory pmfInstance=JDOHelper.getPersistenceManagerFactory("transactions-optional");
}