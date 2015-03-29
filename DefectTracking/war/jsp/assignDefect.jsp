<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Defect Assign</title>
<link rel="stylesheet" href="css/style.css" type="text/css" />
</head>
<body leftmargin="0" topmargin="0">
<table align="center" width="950" height="950" border="0"
	cellspacing="0" cellpadding="0">
	<tr>
		<td valign="top" height="160">
		<%@include file="header.jsp"%>
		</td>
	</tr>
	<tr>
		<td valign="top" height="723">
		<table width="950" height="740" border="1" bordercolor="#ABCC6A"
			cellspacing="0" cellpadding="0">
			<tr>
				<td height="813" valign="top">
				<table width="950" height="813" border="0" cellspacing="0"
					cellpadding="0">


					<tr>
						<td valign="top" height="669">
						<table width="950" height="669" border="0" cellspacing="0"
							cellpadding="0">
							<tr>
								<td valign="top" height="662" width="5"></td>
								<td valign="top" width="235">
								
								<%@include file="leftmenu.jsp" %>
								
								
								
								
								</td>
								<td height="662" width="5"></td>
								<td valign="top" width="700">
								<table width="700" height="5" cellspacing="0" cellpadding="0">
									<tr>
										<td valign="top" height="5"></td>
									</tr>
								</table>
								<table width="700" height="31" cellspacing="0" cellpadding="0">
									<tr>
										<td valign="top" height="31">
										<table width="700" height="31" border="0" cellspacing="0"
											cellpadding="0">
											<tr>
												<td width="114" background="images/gray_btn1.jpg"><a
													href=""
													onmouseover="document.but01.src='images/gray_hvbtn1.jpg'"
													onmouseout="document.but01.src='images/gray_btn1.jpg'">
												<img src="images/gray_btn1.jpg" name="but01" border="0"
													alt="" /></a></td>

												<td width="3"></td>

												<td width="222" background="images/gray_btn2.jpg"><a
													href=""
													onmouseover="document.but02.src='images/gray_hvbtn2.jpg'"
													onmouseout="document.but02.src='images/gray_btn2.jpg'">
												<img src="images/gray_btn2.jpg" name="but02" border="0"
													alt="" /></a></td>

												<td width="3"></td>

												<td width="161" background="images/gray_btn3.jpg"
													style="background-repeat: no-repeat;"><a href=""
													onmouseover="document.but03.src='images/gray_hvbtn3.jpg'"
													onmouseout="document.but03.src='images/gray_btn3.jpg'">
												<img src="images/gray_btn3.jpg" name="but03" border="0"
													alt="" /></a></td>

												<td width="197"></td>
											</tr>
										</table>

										</td>
									</tr>
								</table>
								<table width="700" height="2" cellspacing="0" cellpadding="0">
									<tr>
										<td valign="top" height="2"></td>
									</tr>
								</table>
								<table width="700" height="58" cellspacing="0" cellpadding="0">
									<tr>
										<td valign="top" width="700" height="58"
											background="images/bodymenu_bg.jpg">
										
										<!-- Main Menu Link -->
										<%@include file="menulink.jsp"%>
										
										<!-- End Link -->
										</td>
									</tr>
								</table>
								<table width="700" height="5" cellspacing="0" cellpadding="0">
									<tr>
										<td valign="top" height="5"></td>
									</tr>
								</table>			
								
								<table width="700" height="562" border="1" bordercolor="#ABCC6A"
									cellspacing="0" cellpadding="0">
									<tr>
										<td valign="top" height="562">
										
										<!-- Main Body -->
										<div style="overflow:scroll; height:262px; width: 700px;">
										<table width="1700" border="0">
										<tr bgcolor="#F3FAE8">
										<td class="label_text1" width="70" align="center">Defect Id</td>										
										<td class="label_text1" width="200" align="center">Project Name</td>
										<td class="label_text1" width="30" align="center">Priority</td>
										<td class="label_text1" width="70" align="center">Severity</td>
										<td class="label_text1" width="100" align="center">Testphase</td>
										<td class="label_text1" width="100" align="center">State</td>
										<td class="label_text1" width="150" align="center">Area Affected</td>
										<td class="label_text1" width="200" align="center">Headline</td>
										<td class="label_text1" width="150" align="center">Submitter</td>
										<td class="label_text1" width="150" align="center">Submitted Date</td>
										<td class="label_text1" width="150" align="center">Last Modified By</td>
										<td class="label_text1" width="150" align="center">Last Modification Date</td>
										</tr>
										
										<c:forEach items="${defectList}" var="defect">
										<tr>
										<td align="center" class="label_text2"><a href="main.html?DId=${defect.defectId}"> ${defect.defectId}</a></td>
										<td align="center" class="label_text2"> ${defect.projectName}</td>
										<td align="center" class="label_text2"> ${defect.priority}</td>
										<td align="center" class="label_text2"> ${defect.severity}</td>
										<td align="center" class="label_text2"> ${defect.testPhase}</td>
										<td align="center" class="label_text2"> ${defect.state}</td>
										<td align="center" class="label_text2"> ${defect.areaAffected}</td>
										<td align="center" class="label_text2"> ${defect.headLine}</td>
										<td align="center" class="label_text2"> ${defect.submitterName}</td>
										<td align="center" class="label_text2"> ${defect.submittedDate}</td>
										<td align="center" class="label_text2"> ${defect.modifiedby}</td>
										<td align="center" class="label_text2"> ${defect.modificationdate}</td>										
										</tr>
										</c:forEach>
										</table>
										</div>
										<!-- End of Main Body -->
										
										</td>
									</tr>
								</table>
								</td>
								<td valign="top" height="662" width="5"></td>
							</tr>
							<tr>
								<td colspan="5" height="7"></td>
							</tr>
						</table>

						</td>
					</tr>
					<tr>
						<td valign="top" width="100%"><%@include file="footer.jsp"%>
						</td>

					</tr>
				</table>
				</td>
			</tr>
		</table>
		</td>
	</tr>
	<tr>
		<td valign="top" height="62"></td>
	</tr>
</table>

</body>
</html>
