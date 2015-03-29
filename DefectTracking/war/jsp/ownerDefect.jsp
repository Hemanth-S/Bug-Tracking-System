<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
										
										
										
										<form:form id="frm1">
<table width="100%" border="0" cellspacing="1">

<tr>
<td colspan="9">
<table width="100%" cellpadding="0" cellspacing="0" border="0">
<tr bgcolor="#999999">
<td width="70%"></td>
<td width="30%" align="center">
<table width="98%" align="center">
							<tr>
								<td></td>
								<td align="right" class="table_text"><c:if
									test="${isNewestEnabled}">
									<a href="viewUser.html?pageIndx=1" class="paging_link">&lt;&lt;Newest</a>
								</c:if> <c:if test="${isNewerEnabled}">
									<a href="viewUser.html?pageIndx=${prvIndx}"
										class="paging_link">&lt;Newer</a>
								</c:if> <b>${pagingMsg}</b> <c:if test="${isOlderEnabled}">
									<a href="viewUser.html?pageIndx=${nxtIndx}"
										class="paging_link">Older&gt;</a>
								</c:if> <c:if test="${isOldestEnabled}">
									<a href="viewUser.html?pageIndx=${lastIndx}"
										class="paging_link">Oldest&gt;&gt;</a>
								</c:if></td>
							</tr>
						</table>

</td>
</tr>
</table>
</td>
</tr>

<tr bgcolor="#666666">
<td width="2%"></td>
<td width="10%" class="label-text_white"><fmt:message key="label.prjid"/></td>
<td width="10%" class="label-text_white"><fmt:message key="label.prjname"/></td>
<td width="25%" class="label-text_white"><fmt:message key="label.email"/></td>
<td width="10%" class="label-text_white"><fmt:message key="label.phone"/></td>
<td width="10%" class="label-text_white"><fmt:message key="label.createdby"/></td>
<td width="15%" class="label-text_white"><fmt:message key="label.creationdate"/></td>
<td width="8%" class="label-text_white"><fmt:message key="label.action"/></td>
</tr>

<%boolean color=false; %>
<c:forEach items="${userList}" var="user" begin="${startIndex}" end="${endIndex}">
<%if(color){ %>
<tr bgcolor="#cccccc">
<td></td>
<td class="label-text">${user.userId}</td>
<td class="label-text">${user.fullName}</td>
<td class="label-text">${user.email}</td>
<td class="label-text">${user.phone}</td>
<td class="label-text">${user.createdby}</td>
<td class="label-text">${user.creationdate}</td>
<td>&nbsp;&nbsp;<a href="editUser.html?userId=${user.userId}" target="mainfrm" class="blue_link"><img src="images/icon_edit.png" border="0" height="14" width="14" alt="edit"></a> &nbsp;
<c:if test="${user.userId!='admin'}">
<a href="#" class="body_text" onclick="deleteUser('${user.userId}','${user.fullName}')"><img src="images/delete_icon1.png" border="0" height="14" width="14" alt="delete"></a>
</c:if>
</td>
</tr>

<%
color=false;
}else{ %>
<tr bgcolor="#999999">
<td>
<c:if test="${user.userId!='admin'}">
<input type="checkbox" name="${user.fullName}"
value="${user.userId }" onclick="getUserId()"> 
</c:if>
</td>
<td class="label-text">${user.userId}</td>
<td class="label-text">${user.fullName}</td>
<td class="label-text">${user.email}</td>
<td class="label-text">${user.phone}</td>
<td class="label-text">${user.createdby}</td>
<td class="label-text">${user.creationdate}</td>
<td>&nbsp;&nbsp;<a href="editUser.html?userId=${user.userId}" class="blue_link"><img src="images/icon_edit.png" border="0" height="14" width="14" alt="edit"></a> &nbsp;
<c:if test="${user.userId!='admin'}">
<a href="#" class="body_text" onclick="deleteUser('${user.userId}','${user.fullName}')"><img src="images/delete_icon1.png" border="0" height="14" width="14" alt="delete"></a>
</c:if>
</td>
</tr>
<%
color=true;
} %>
</c:forEach>
<tr>
<td>
<input type="hidden" id="deleteItemsIds"></input> <input type="hidden"
	id="deleteItemsName" />
</td>
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
