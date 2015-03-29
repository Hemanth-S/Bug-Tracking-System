<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/listbox.js"></script>
</head>
<body class="body">
<form:form>
	<table width="100%" border="1">
		<tr>
			<td colspan="2" width="100%">
			<table class="tbel_color" border="1" width="100%">
				<tr class="h10_style">
					<td></td>
					<td class="h2_style">Rational Clearquest</td>
					<td>Welcome &nbsp;&nbsp;&nbsp;<b><%=session.getAttribute("uid")%></b></td>
					<td>|</td>
					<td>7.1_local/PROD <br />
					you have 0 new items</td>
					<td>|</td>
					<td>Log out</td>
				</tr>

				<tr class="tbel2_color">
					<td><a href="New request.html">New Changereq </a></td>
					<td></td>
					<td>Manage Reports</td>
					<td></td>
					<td>Preferences</td>
					<td></td>
					<td>Help</td>
				</tr>
			</table>
			</td>
		</tr>

		<tr>
			<td valign="top" width="20%">
			<div style="overflow: scroll; height: 500px">
			<table border="1" class="rad_color">
				<tr>

					<td colspan="2" class="h6_style">&nbsp;Personal Queries <br />
					&nbsp; &nbsp; &nbsp; Defects Assigned to me <br />
					&nbsp;&nbsp; &nbsp; Find By CO_ID <br />
					&nbsp;&nbsp; &nbsp; Find By Owner <br />
					&nbsp;&nbsp; &nbsp; Find By QC_ID <br />
					&nbsp;&nbsp; &nbsp; NVN-TEAM-DEFECTS <br />
					&nbsp; Public Queries</td>
				</tr>
				<tr>
					<td colspan="2" class="rad_color">Clearquest Favorites</td>
				</tr>
				<tr>
					<td colspan="2">Clearquest Properties</td>
				</tr>
				<tr>
					<td>Property</td>
					<td>Value</td>
				</tr>
				<tr>
					<td>Mastered Location</td>
					<td><br />
					local</td>
				</tr>
				<tr>
					<td>RecordType</td>
					<td>ChanegReg</td>
				</tr>
				<tr>
					<td>Type</td>
					<td>RECORD</td>
				</tr>
				<tr>
					<td>Name</td>
					<td>PROD00025131</td>
				</tr>
				<tr>
					<td>isStateless</td>
					<td>false</td>
				</tr>
				<tr>
					<td>isFamily</td>
					<td>false</td>
				</tr>
				<tr>
					<td>isSubmittable</td>
					<td>true</td>
				</tr>

				<tr>
					<td>isDupllcate</td>
					<td>false</td>
				</tr>
				<tr>
					<td colspan="2">Recent Items</td>
				</tr>
				<tr>
					<td colspan="2">&nbsp;&nbsp;&nbsp;ChangeReq/PROD00025131<br />
					&nbsp;&nbsp;&nbsp;Defects Assigned to me</td>
				</tr>
			</table>
			</div>
			</td>


			<td valign="top" width="60%">
			<div style="overflow: scroll; height: 500px">
			<table width="100%" class="rad_color" border="1">
				<tr>
					<td>

					<table border="1">
						<tr>
							<td class="white2_color">Welcome</td>
							<td class="white2_color">Defecrs Assigned tro me</td>
							<td>PROD00025131</td>
							<td>TTM Changes</td>
						</tr>
					</table>
					</td>
				</tr>

				<tr>
					<td>
					<table class="label_color" width="100%">
						<tr>
							<td width="75%">Get my Qc record.</td>
							<td width="75%">New Query</td>
						</tr>
					</table>
					</td>
				</tr>

				<tr>
					<td>
					<table class="label_color" width="100%">
						<tr>
							<td width="5%"></td>
							<td class="rad5_color">Query Name:<form:input
								path="queryName" /></td>
							<td><select style="">
								<option>Save</option>
							</select> <input type="submit" value="Save" class="button_text"></td>
							<td><input type="button" value="Run" class="button_text"
								onclick="getFilterName()" /></td>
							<td><input type="button" value="Cancel" class="button_text" /></td>
						</tr>
						<tr>
							<td width="5%"></td>
							<td colspan="4">Record Type: ChangeReg</td>
						</tr>

					</table>
					</td>
				</tr>


				<tr>
					<td>
					<table class="label_color" width="100%">
						<tr>
							<td width="15px"></td>
							<td>
							<table class="rad5_color" width="100%" style="height: 400px;"
								border="1">
								<tr>
									<td height="2%" class="h6_style" valign="top" width="130px;">
									Fields.</td>
								</tr>
								<tr valign="top">
									<td width="100%"><form:select path="fields"
										multiple="multiple" size="22" id="list1"
										cssStyle="width:170px;">
										<form:options items="${columnsList}" itemLabel="columnName"
											itemValue="columnName"></form:options>
									</form:select> <!-- 
							</td>
								<td>All_Notes<br />
								AreaAffected<br />
								Attachments<br />
								CandidateRelease<br />
								CC_activities<br />
								CR_Build_id<br />
								CR_releease_id<br />
								CR_Type<br />
								Date_Submitted<br />
								Description<br />
								Datected_In_Ver<br />
								dev_lead_note<br />
								Duplicate<br />
								Environment<br />
								headline<br />
								histry<br />

								</td>
								 -->
								</tr>
							</table>
							</td>
							<td height="100%">
							<table border="0" height="100%">

								<tr>
									<td><input type="button" value="   &gt;   "
										onclick="moveRight(document.forms[0].list1,document.forms[0].list2);"
										id="btnRight" /><br />
									<input type="button" value="  &gt;&gt;  "
										onclick="moveRightAll(document.forms[0].list1,document.forms[0].list2);"
										id="btnRightAll" /><br />
									<input type="button" value="   &lt;   "
										onclick="moveLeft(document.forms[0].list2,document.forms[0].list1);"
										id="btnLeft" /><br />
									<input type="button" value="  &lt;&lt;  "
										onclick="moveLeftAll(document.forms[0].list2,document.forms[0].list1);"
										id="btnLeftAll" /><br />
									</td>
								</tr>
								<tr>
									<td><input type="button" value="   &gt;   "
										onclick="moveRight(document.forms[0].list1,document.forms[0].list3);"
										id="btnRight" /><br />
									<input type="button" value="  &gt;&gt;  "
										onclick="moveRightAll(document.forms[0].list1,document.forms[0].list3);"
										id="btnRightAll" /><br />
									<input type="button" value="   &lt;   "
										onclick="moveLeft(document.forms[0].list3,document.forms[0].list1);"
										id="btnLeft" /><br />
									<input type="button" value="  &lt;&lt;  "
										onclick="moveLeftAll(document.forms[0].list3,document.forms[0].list1);"
										id="btnLeftAll" /><br />
									</td>
								</tr>
							</table>
							</td>
							<td valign="top">
							<table width="100%" height="50%" border="1">
								<tr>
									<td width="50%">
									<table border="0" width="100%" style="height: 180px;"
										class="rad5_color">
										<tr class="h6_style">
											<td width="60px;" height="2%" valign="top" class=>Filters</td>
											<td width="5px;">|</td>
											<td></td>
											<td width="5px;">|</td>
											<td width="30px;"><input type="button" value="AND" /></td>
											<td width="20px;"><input type="button" value="OR" /></td>
										</tr>
										<tr>
											<td valign="top" colspan="6"><form:select path="filter"
												multiple="multiple" size="10" id="list2"
												cssStyle="width:150px;">

											</form:select> <form:input path="filterName" id="selectedFieldsName" /></td>
										</tr>
										<tr>
											<td colspan="5" valign="bottom"><input type="checkbox" />Use
											these as the default for<br />
											new queries</td>
										</tr>

									</table>
									</td>

									<td valign="top" width="50%">
									<table width="100%" height="50%" border="0">
										<tr>
											<td>
											<table border="1" width="100%" style="height: 180px;"
												class="rad5_color">
												<tr>
													<td height="2" valign="top" class="h6_style">Define
													Query Filter</td>
												</tr>

												<tr>
													<td></td>
												</tr>

											</table>
										</tr>

									</table>
									</td>
								</tr>
								<tr>
									<td colspan="2" height="200px;" valign="top">
									<table border="1" width="100%" height="100%">
										<tr class="rad5_color">
											<td valign="top" height="20px;">Quary Presentation</td>
										</tr>
										<tr>
											<td height="30px;" class="h6_style">
											<table width="100%" border="1" height="100%">
												<tr>
													<td width="20%">Field</td>
													<td width="20%">Title</td>
													<td width="20%">Show</td>
													<td width="20%">Sort</td>
													<td width="20%">Sort Order</td>
												</tr>
											</table>
											</td>
										</tr>
										<tr>
											<td class="rad5_color"><form:select path="queryfields"
												multiple="multiple" size="10" id="list3"
												cssStyle="width:150px;">

											</form:select> <form:input path="presentationFeldsName"
												id="presentationFeldsName" /></td>
										</tr>
									</table>
									</td>
							</table>
						</tr>
					</table>
				</tr>
			</table>
			</div>
			</td>
		</tr>

		<tr>
			<td colspan="2">
			<table class="h14_style" width="100%">
				<tr>
					<td width="15%">IBM</td>
					<td>Licensed Material-Property of IBM (C) Copyright by IBM
					Corp.and other (s) 2002, 2008</td>
					<td><input type="button" class="h21_style" value="Rational." />Software</td>
				</tr>
			</table>
			</td>
		</tr>
	</table>
</form:form>
</body>
</html>

