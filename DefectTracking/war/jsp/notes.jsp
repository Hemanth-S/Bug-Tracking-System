<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Notes</title>
<link rel="stylesheet" href="css/style.css" type="text/css" />
<script type="text/javascript">
function loadbody()
{
	document.getElementById('allNotes').innerHTML=document.getElementById('allComments').value;
}
</script>
</head>
<body leftmargin="0" topmargin="0" onload="loadbody()">
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
										<form:form>
										<table>
										
									<tr>
										<td width="25"></td>
										<td class="label_text">All Notes:</td>
										</tr>
									<tr>
						<td width="25"></td>
						<td>
						<div id="allNotes" class="note_div">
						
						</div>
						<form:hidden path="allComments"/></td>
					</tr>
					<tr>
										<td width="25"></td>
										<td class="label_text">New Note:</td>
										</tr>
										<tr>
									<td width="25"></td>
									<td><form:textarea path="comments" cols="70" rows="6"></form:textarea></td>
									</tr>
					<tr>
					<td colspan="2" align="right"><input type="submit" value="Post Comment" class="button_text1"> </td>
					<td width="75"></td>
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
