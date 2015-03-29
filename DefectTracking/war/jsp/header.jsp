<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style.css" type="text/css" />
</head>
<body leftmargin="0" topmargin="0">
<table width="950" border="1" bordercolor="#ABCC6A" cellspacing="0" cellpadding="0">
	   <tr>
	   <td>
	   <table width="950" border="0" cellspacing="0" cellpadding="0">
	   <tr>
           <td align="center" height="75" width="150"><a href="home.html"><img src="images/logo.jpg" alt="" border="0" /></a></td>
           <td width="660"></td>
           <td valign="top" width="140">
		     <table width="140" border="0" cellspacing="0" cellpadding="0">
               <tr>
                 <td colspan="2" height="20"></td>
               </tr>
              <tr>
                <td width="50" height="20"><a href="login.html" class="logout">logout</a></td>
                <td height="20"><img src="images/logout_btn.jpg" alt="" /></td>
              </tr>
              <tr>
                <td height="35" colspan="2"></td>
              </tr>
               
        </table></td>
      </tr>
	   </table>
	   </td>
	   </tr>
         
      <tr>
		<td height="50"  valign="top" background="images/header_img.jpg" style="background-repeat:no-repeat;" align="right">
		Welcome &nbsp;&nbsp;&nbsp;<b><%=session.getAttribute("uid") %></b>&nbsp;&nbsp;&nbsp;
		</td>
	 </tr>
	 
	 <tr>
					<td  height="30" valign="top" background="images/header_menu.jpg" style="background-repeat:no-repeat;">
						<table width="950" border="0" cellspacing="0" cellpadding="0">
						  <tr>
							<td width="119" height="25"><a href="addNewDefect.html" class="menu_h2">New ChangeReq</a></td>
							<td valign="bottom" width="18" align="center"><img src="images/downarrow_btn.gif" alt="" /></td>
							<td width="265">&nbsp;</td>
							<td width="239">&nbsp;</td>
							<td width="136"><a href="" class="menu_h2">Manage Reports</a></td>
							<td width="109"><a href="" class="menu_h2">Preferences</a></td>
							<td width="42"><a href="" class="menu_h2">Help</a></td>
							<td valign="bottom" width="22" align="center"><img src="images/downarrow_btn.gif" alt="" /></td>
						  </tr>
						</table>

					
					</td>
				  </tr>
    </table>
</body>
</html>