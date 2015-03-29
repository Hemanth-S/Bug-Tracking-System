<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/style.css">

<script type="text/javascript">
var width  = 200;
var height = 200;

function popitup(url) {
	newwindow=window.open(url,'name','height=150,width=300,top=300,left=500');
	if (window.focus) {newwindow.focus()}
	return false;
}
</script>

</head>
<body leftmargin="0" topmargin="0">
<table width="235" border="0" cellpadding="0" cellspacing="0">
<tr>
<td>

<table width="235" height="5" cellspacing="0" cellpadding="0">
									<tr>
										<td valign="top" height="5"></td>
									</tr>
								</table>
								<table width="235" height="70" border="1" bordercolor="#ABCC6A"
									cellspacing="0" cellpadding="0">
									<tr>
										<td valign="top" height="70">
										<table width="230" height="70" border="0" cellspacing="0"
											cellpadding="0">
											<tr>
												<td valign="top" rowspan="3" width="5"></td>
												<td valign="top" colspan="2" height="8"></td>
											</tr>
											<tr>
												<td valign="top" height="26" width="150"><input
													name="Input" type="text" /></td>
												<td valign="top"><img src="images/go_btn1.jpg" alt="" /></td>
											</tr>
											<tr>
												<td valign="top">
												<table width="150" border="0" cellspacing="0"
													cellpadding="0">
													<tr>
														<td width="25"><input name="" type="radio" value="" /></td>
														<td width="63"><span class="redio_text">Full
														Text</span></td>
														<td width="24"><input name="" type="radio" value="" /></td>
														<td width="38"><span class="redio_text">By ID</span></td>
													</tr>
												</table>
												</td>
												<td valign="top"></td>
											</tr>
										</table>

										</td>
									</tr>
								</table>
								<table width="235" height="6" cellspacing="0" cellpadding="0">
									<tr>
										<td valign="top" height="6"></td>
									</tr>
								</table>
								<table width="235" height="213" border="1" bordercolor="#ABCC6A"
									cellspacing="0" cellpadding="0">
									<tr>
										<td valign="top" height="213"
											background="images/leftmenu_bg.jpg"
											style="background-repeat: no-repeat;">
										<table width="230" border="0" cellspacing="0" cellpadding="0">
											<tr>
												<td width="210" height="10"><a href="" class="menu_h1">
												Clear Quest Navogator</a></td>
												<td valign="bottom" width="20" height="10" align="center"><img
													src="images/downarrow_btn.gif" alt="" /></td>
											</tr>
											<tr>
											<td colspan="2">
											<table>
											<tr height="10">
											<td></td>
											</tr>
											<tr>
				<td colspan="2" class="no_text">Personal Queries </td></tr>
				<tr><td><a href="assignDefect.html" class="menu_h2"> Defects Assigned to me</a></td></tr>
				<tr><td><a href="searchByPrjId.html" class="menu_h2">Find By Project ID</a></td></tr>
				<tr><td><a href="searchByOwnerId.html" class="menu_h2">Find By Owner</a> </td></tr>
				<tr><td><a href="searchByDefectId.html" class="menu_h2">Find By Defect ID</a></td></tr>			
				<tr><td class="no_text"> Public Queries</td>
			</tr>
											</table>
											</td>
											</tr>
										</table>
										</td>

									</tr>
								</table>
								<table width="235" height="6" cellspacing="0" cellpadding="0">
									<tr>
										<td valign="top" height="6"></td>
									</tr>
								</table>
								<table width="235" height="26" border="1" bordercolor="#ABCC6A"
									cellspacing="0" cellpadding="0">
									<tr>
										<td valign="top" height="26"
											background="images/leftmenu_bg.jpg">
										<table width="230" border="0" cellspacing="0" cellpadding="0">
											<tr>
												<td width="210" height="10"><a href="" class="menu_h1">
												Clear Quest Favorites</a></td>
												<td valign="bottom" width="20" height="10" align="center"><img
													src="images/downarrow_btn.gif" alt="" /></td>
											</tr>
										</table>
										</td>
									</tr>
								</table>
								<table width="235" height="6" cellspacing="0" cellpadding="0">
									<tr>
										<td valign="top" height="6"></td>
									</tr>
								</table>
								<table width="235" height="322" border="1" bordercolor="#ABCC6A"
									cellspacing="0" cellpadding="0">
									<tr>
										<td valign="top" height="322"
											background="images/leftmenu_bg.jpg"
											style="background-repeat: no-repeat;">
										<table width="230" border="0" cellspacing="0" cellpadding="0">
											<tr>
												<td width="210" height="10"><a href="" class="menu_h1">
												Clear Quest Properties</a></td>
												<td valign="bottom" width="20" height="10" align="center"><img
													src="images/downarrow_btn.gif" alt="" /></td>
											</tr>
											<tr>
											<td colspan="2">
											<table>
											<tr height="10">
											<td colspan="2"></td>
											</tr>
											<tr>
				<td class="label_text1">Property:</td>
				<td class="label_text2">Value</td>
			</tr>
			<tr>
				<td class="label_text1">Mastered Location:</td>
				<td class="label_text2">local</td>
			</tr>
			<tr>
				<td class="label_text1">RecordType:</td>
				<td class="label_text2">ChanegReg</td>

			</tr>
			<tr>
				<td class="label_text1">Type:</td>
				<td class="label_text2">RECORD</td>
			</tr>
			<tr>
				<td class="label_text1">Name:</td>
				<td class="label_text2">PROD00025131</td>
			</tr>
			<tr>
				<td class="label_text1">isStateless:</td>
				<td class="label_text2">false</td>

			</tr>
			<tr>
				<td class="label_text1">isFamily:</td>
				<td class="label_text2">false</td>
			</tr>
			<tr>
				<td class="label_text1">isSubmittable:</td>
				<td class="label_text2">true</td>
			</tr>

			<tr>
				<td class="label_text1">isDupllcate:</td>
				<td class="label_text2">false</td>
			</tr>
			<tr>
				<td colspan="2" class="label_text1">Recent Items:</td>
			</tr>
			<tr>
				<td colspan="2" class="label_text2">ChangeReq/PROD00025131<br />
				Defects Assigned to me</td>
			</tr>
											</table>
											</td>
											</tr>
										</table>
										</td>
									</tr>
								</table>

</td>
</tr>
</table>
</body>
</html>