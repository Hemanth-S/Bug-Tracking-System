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
<table width="700" border="0" cellspacing="0" cellpadding="0">
											<tr>
												<td valign="top" colspan="10" height="29" width="580">
												<table width="580" border="0" cellspacing="0"
													cellpadding="2">
													<tr>
														<td height="25" width="15"></td>
														<td align="right" class="no_text">
														<%if(session.getAttribute("defId")!=null){ %>
														ChangeReq: <%=session.getAttribute("defId") %>
														
														
														<%} %>
														</td>
														<td width="15" valign="bottom" align="left"><img
															src="images/downarrow_btn.gif" alt="" /></td>
														<td width="270" valign="middle">&nbsp;</td>
														<td width="25"><img src="images/arrow.gif" alt="" /></td>
														<td width="25"><img src="images/print.gif" alt="" /></td>
														<td width="25"><img src="images/star.gif" alt="" /></td>
														<td width="15" valign="bottom"><img
															src="images/downarrow_btn.gif" alt="" /></td>
														<td width="25" valign="middle"><img
															src="images/clender.gif" alt="" /></td>
														<td width="15" valign="bottom"><img
															src="images/downarrow_btn.gif" alt="" /></td>
														<td>&nbsp;</td>
														<td>&nbsp;</td>
													</tr>
												</table>

												</td>
												<td valign="middle" height="29" width="120"><span
													class="no_text">Modify | Change</span></td>
											</tr>
											<tr>
												<td width="14"></td>

												<td width="110" height="29"><a href="main.html"
													onmouseover="document.but1.src='images/main_hvbtn.jpg'"
													onmouseout="document.but1.src='images/main_btn.jpg'">
												<img src="images/main_btn.jpg" name="but1" border="0" alt="" /></a></td>

												<td width="4"></td>

												<td width="110" height="29"><a href="buildRelease.html"
													onmouseover="document.but2.src='images/build_hvbtn.jpg'"
													onmouseout="document.but2.src='images/build_btn.jpg'">
												<img src="images/build_btn.jpg" name="but2" border="0"
													alt="" /></a></td>
												<td width="4"></td>

												<td width="110" height="29"><a href="notes.html"
													onmouseover="document.but3.src='images/notes_hvbtn.jpg'"
													onmouseout="document.but3.src='images/notes_btn.jpg'">
												<img src="images/notes_btn.jpg" name="but3" border="0"
													alt="" /></a></td>

												<td width="4"></td>

												<td width="110" height="29"><a href="resolution.html"
													onmouseover="document.but4.src='images/resolution_hvbtn.jpg'"
													onmouseout="document.but4.src='images/resolution_btn.jpg'">
												<img src="images/resolution_btn.jpg" name="but4" border="0"
													alt="" /></a></td>

												<td width="4"></td>

												<td width="110" height="29"><a href="attachments.html"
													onmouseover="document.but5.src='images/attach_hvbtn.jpg'"
													onmouseout="document.but5.src='images/attach_btn.jpg'">
												<img src="images/attach_btn.jpg" name="but5" border="0"
													alt="" /></a></td>

												<td width="120"></td>

											</tr>
										</table>
</body>
</html>