<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><fmt:message key="title.adduser"/></title>
<link rel="stylesheet" href="css/style.css" type="text/css" />
<script type="text/javascript">
function cancel()
{
document.location='viewUser.html';	
}
</script>
</head>
<body style="margin: 0; background-color: #F3FAE8">
<form:form>
<table align="center">
<tr>
<td colspan="2" class="header_text" align="center"> <fmt:message key="title.changepassword"/></td>
</tr>

<tr>
<td class="label_text"><fmt:message key="label.oldpassword"/>: </td>
<td><form:password path="password"/> </td>
<td><form:errors path="password" cssClass="error"/></td>
</tr>
<tr>
<td class="label_text"><fmt:message key="label.newpassword"/>: </td>
<td><form:password path="newpassword"/> </td>
<td><form:errors path="newpassword" cssClass="error"/></td>
</tr>
<tr>
<td class="label_text"><fmt:message key="label.confpassword"/>: </td>
<td><form:password path="confpassword"/> </td>
<td><form:errors path="confpassword" cssClass="error"/></td>
</tr>
<%
			if (request.getParameter("mode") != null) {
		%>
		<tr>
			<td colspan="4" class="error"><fmt:message key="error.changepassword"/></td>
		</tr>
		<%
			}
		%>
<tr>
<td align="center" colspan="2"><input type="submit" value="<fmt:message key="button.changepassword"/>" class="button_text1"  />&nbsp;&nbsp;
<input type="button" value="<fmt:message key="button.cancel"/>"  class="button_text" onclick="cancel()"/></td>
</tr>
</table>
</form:form>
</body>
</html>