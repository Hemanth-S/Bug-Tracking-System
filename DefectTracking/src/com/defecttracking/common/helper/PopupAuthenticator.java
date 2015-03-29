package com.defecttracking.common.helper;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;


public class PopupAuthenticator  extends Authenticator {
	String username=null;
	String password=null;
	PopupAuthenticator(String uname,String pass)
	{
		username=uname;
		password=pass;
	}
    public PasswordAuthentication getPasswordAuthentication() {
        return new PasswordAuthentication(username, password);
    }
}