<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Home</title>
<link rel="stylesheet" href="css/style.css" type="text/css" />
</head>
<body leftmargin="0" topmargin="0">
<table align="center" width="950" height="950" border="0"
	cellspacing="0" cellpadding="0">
	<tr>
		<td valign="top" height="160"><%@include file="header.jsp"%>
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
										<td valign="top" height="562" align="center">
										<!-- Main Body -->
										
										<form:form>
						<table width="650" border="0">
						<tr height="10">
						<td colspan="7"> </td>
						</tr>
							<tr>
								<td width="0%"></td>
								<td width="20%" class="label_text">ID: </td>
								<td width="27%" ><form:input path="defectId" readonly="true" /></td>
								<td width="6%"></td>
								<td width="20%" class="label_text">State:</td>
								<td width="27%">
								<form:input path="state" readonly="true"/>
								<!--
								<form:select path="state" cssClass="combo_style">									
									<form:option value="Integration Failed">Integration Failed</form:option>
									<form:option value="Integration Tested">Integration Tested</form:option>
									<form:option value="Unit Tested">Unit Tested</form:option>
									<form:option value="Close">Close</form:option>
									<form:option value="Fixed">Fixed</form:option>
									<form:option value="Opened">Opened</form:option>
									<form:option value="Assigned">Assigned</form:option>
									<form:option value="Submitted">Submitted</form:option>
								</form:select>
								  -->
								</td>
								<td width="0%"></td>
							</tr>

							<tr>
								
								<td></td>
								<td class="label_text">Project:</td>
								<td colspan="4">								
								<form:select path="project" id="project" cssClass="combo_style1">
									<form:options items="${projectList}" itemLabel="projectCode"
										itemValue="projectId"></form:options>
								</form:select>
								<label class="error">*</label></td>
							</tr>
							<tr>
								<td></td>
								<td class="label_text">Owner ID: </td>
								<td>
								<form:select path="userId" id="userId" onchange="showUserName()" cssClass="combo_style">
									<form:options items="${userList}" itemLabel="userId"
										itemValue="userId"></form:options>
								</form:select></td>
								<td></td>
								<td class="label_text">Full Name:</td>
								<td>
								<form:input path="usreName" /></td>

							</tr>
							<tr>
								<td></td>
								<td class="label_text">Testphase: </td>
								<td>
								<form:input path="testPhase" /> <label class="error">*</label></td>
								<td></td>
								<td class="label_text">Priority:</td>
								<td>
								<form:select path="priority" size="width:30px;" cssClass="combo_style">
									<form:option value="P1">P1</form:option>	
									<form:option value="P2">P2</form:option>	
									<form:option value="P3">P3</form:option>
									<form:option value="P4">P4</form:option>
								</form:select> <label class="error">*</label></td>
							</tr>
							<tr>
								<td></td>
								
								<td class="label_text">Severity: </td>
								<td>
								<form:select path="severity" cssClass="combo_style">
								<form:option value="Sev1">Sev1</form:option>	
								<form:option value="Sev2">Sev2</form:option>	
								<form:option value="Sev3">Sev3</form:option>	
								<form:option value="Sev4">Sev4</form:option>									

								</form:select> <label class="error">*</label> </td>
																
								<td></td>
								<td class="label_text">Remedy Ref: </td>
								<td>
								<form:input path="remedyRef" /></td>
							</tr>
							<tr>
								<td></td>
								<td class="label_text">Resolution Group: </td>
								<td>
								<form:input path="resolutionGroup" /> <label class="error"></label></td>
								<td></td>
								<td class="label_text">Environment:</td>
								<td valign="top">
								<form:input path="environment" /> <label class="error"></label></td>

							</tr>

							<tr>
								<td></td>
								<td class="label_text">Area Affected: </td>
								<td>
								<form:input path="areaAffected" /></td>
								<td></td>
								<td class="label_text">Detected In version:</td>
								<td>
								<form:input path="qualitedInVersion" /></td>
							</tr>
							<tr>

								<td></td>
								<td  valign="top" class="label_text">Headline: </td>
								<td colspan="4">
								<form:textarea path="headLine" cols="58" rows="3" /><label class="error"></label></td>
							</tr>
							
							<tr>

								<td></td>
								<td  valign="top" class="label_text">Comment: </td>
								<td colspan="4">
								<form:textarea path="notes" cols="58" rows="10" /><label class="error"></label></td>
							</tr>
							
							<tr>
							<td></td>
								<td colspan="4" align="right"><input type="submit" value="Save" class="button_text">
								<input type="button" value="Cancel" class="button_text"></td>
								<td></td>
							</tr>
						</table>
					</form:form>
										
										<!-- End Main Body -->
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
						<td valign="bottom" width="100%"><%@include file="footer.jsp"%>
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
