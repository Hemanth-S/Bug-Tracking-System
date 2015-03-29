<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Main</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
function activeField()
{
//document.getElementById('headLine').disabled=false;
//document.getElementById('severity').disabled=false;
document.getElementById('state').disabled=false;
//document.getElementById('environment').disabled=false;
//document.getElementById('project').disabled=false;
//document.getElementById('priority').disabled=false;
//document.getElementById('resolutionGroup').disabled=false;
//document.getElementById('testPhase').disabled=false;
//document.getElementById('submitterId').disabled=false;
//document.getElementById('submitterName').disabled=false;
//document.getElementById('submittedDate').disabled=false;
//document.getElementById('qualityCenterRef').disabled=false;
//document.getElementById('remedyRef').disabled=false;
//document.getElementById('crType').disabled=false;
//document.getElementById('qualitedInVersion').disabled=false;
//document.getElementById('areaAffected').disabled=false;
//document.getElementById('description').disabled=false;
document.getElementById('btnUpdate').disabled=false;
}
</script>
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
										<form:form>
										<table border="0" align="center">
										<tr height="10">
										<td colspan="4"></td>
										</tr>
								<tr>
									<td class="label_text">Id:</td>
									<td><form:input path="defectId" id="defectId" disabled='true' /></td>									
									<td class="label_text">Severity:</td>
									<td><form:select path="severity" disabled='true' cssClass="combo_style">
									<form:option value="Sev1">Sev1</form:option>	
									<form:option value="Sev2">Sev2</form:option>	
									<form:option value="Sev3">Sev3</form:option>	
									<form:option value="Sev4">Sev4</form:option>
									</form:select></td>
									</tr><tr>
									<td class="label_text">Owner:</td>
									<td><form:input path="userId" id="userId" disabled='true' /></td>
									<td class="label_text">Full Name:</td>
									<td>
									<form:input path="usreName" id="usreName" disabled='true' /></td>
								</tr>
								
								
								<tr>
									<td class="label_text">Headline:</td>
									<td colspan="3">
									<form:textarea path="headLine" cols="56" rows="3"
										id="headLine" disabled='true'></form:textarea></td>
								</tr>
								
								<tr>
									<td class="label_text">Project:</td>
									<td colspan="3">
									<form:select path="project" id="project" cssStyle="width:468px;" disabled='true'>
									<form:options items="${projectList}" itemLabel="projectCode"
										itemValue="projectId"></form:options>
								</form:select>
								</td>
									
								</tr>
								
								<tr>
									<td class="label_text">State:</td>
									<td>
									<form:select path="state" disabled='true' cssClass="combo_style">
										<form:option value="Integration Failed">Integration Failed</form:option>
									<form:option value="Integration Tested">Integration Tested</form:option>
									<form:option value="Unit Tested">Unit Tested</form:option>
									<form:option value="Close">Close</form:option>
									<form:option value="Fixed">Fixed</form:option>
									<form:option value="Opened">Opened</form:option>
									<form:option value="Assigned">Assigned</form:option>
									<form:option value="Submitted">Submitted</form:option>
									</form:select></td>
									
									<td class="label_text">Priority:</td>
									<td>
									<form:select path="priority" cssClass="combo_style" disabled='true'>
									<form:option value="P1">P1</form:option>	
									<form:option value="P2">P2</form:option>	
									<form:option value="P3">P3</form:option>
									<form:option value="P4">P4</form:option>
									</form:select></td>
									
									
									</tr>
									
								<tr>									
									<td class="label_text">Resolution Group:</td>
									<td>
									<form:input path="resolutionGroup" id="resolutionGroup"
										disabled='true' /></td>
										<td class="label_text">Test Phase:</td>
									<td>
									<form:input path="testPhase" id="testPhase" disabled='true' /></td>
										</tr><tr>
									<td class="label_text">Submitter: </td>
									<td>

									<form:select path="submitterId" disabled='true' cssClass="combo_style">
										<form:options items="${userList}" itemLabel="userId"
											itemValue="userId"></form:options>
									</form:select></td>
									<td class="label_text">Full Name:</td>
									<td>
									<form:input path="submitterName" id="submitterName"
										disabled='true' /></td>
								</tr>
								<tr>
									
									<td class="label_text">Environment:</td>
									<td>
									<form:input path="environment" id="environment" disabled='true' /></td>
										<td class="label_text">Quality Center Ref: </td>
									<td>
									<form:input path="qualityCenterRef" id="qualityCenterRef"
										disabled='true' /></td>
										
										</tr><tr>
									
									<td class="label_text">Remedy Ref:</td>
									<td>
									<form:input path="remedyRef" id="remedyRef" disabled='true' /></td>
									<td class="label_text">CR_Type:</td>
									<td>
									<form:input path="crType" id="crType" disabled='true' /></td>
									
								</tr>
								
								<tr>
									<td class="label_text">Qualited In Version: </td>
									<td>
									<form:input path="qualitedInVersion" id="qualitedInVersion"
										disabled='true' /></td>
									<td class="label_text">Area Affected:</td>
									<td>
									<form:input path="areaAffected" id="areaAffected"
										disabled='true' /></td>
								</tr>
							
								<tr>
									<td class="label_text">
									Description:</td>
									<td colspan="4"><form:textarea path="description"
										id="description" cols="56" rows="3" disabled='true'></form:textarea>
									</td>
								</tr>
								<tr>
									<td colspan="4" align="center">
									<input type="button" value="Edit" onclick="activeField()" class="button_text">
									<input type="submit" value="Update" id="btnUpdate"
										disabled="disabled" class="button_text"></td>
								</tr>
							</table>
								</form:form>		
										
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
