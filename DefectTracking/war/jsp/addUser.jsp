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
<tr height="40">
<td colspan="3" valign="top" class="header_text" align="center"> <fmt:message key="title.adduser"/></td>
</tr>
<tr>
<td class="label_text"><fmt:message key="label.userid"/></td>
<td class="label_text">:</td>
<td><form:input path="userId"/> </td>
<td><form:errors path="userId" cssClass="error"/></td>
</tr>
<tr>
<td class="label_text"><fmt:message key="label.password"/></td>
<td class="label_text">:</td>
<td><form:password path="password"/> </td>
<td><form:errors path="password" cssClass="error"/></td>
</tr>
<tr>
<td class="label_text"><fmt:message key="label.confpassword"/></td>
<td class="label_text">:</td>
<td><form:password path="confpassword"/> </td>
<td><form:errors path="confpassword" cssClass="error"/></td>
</tr>
<tr>
<td class="label_text"><fmt:message key="label.fname"/></td>
<td class="label_text">:</td>
<td><form:input path="fullName"/> </td>
<td><form:errors path="fullName" cssClass="error"/></td>
</tr>
<tr>
<td class="label_text"><fmt:message key="label.email"/></td>
<td class="label_text">:</td>
<td><form:input path="email"/> </td>
<td><form:errors path="email" cssClass="error"/></td>
</tr>
<tr>
<td class="label_text"><fmt:message key="label.phone"/></td>
<td class="label_text">:</td>
<td><form:input path="phone"/> </td>
<td><form:errors path="phone" cssClass="error"/></td>
</tr>
<tr>
<td align="right" colspan="3"><input type="submit" value="<fmt:message key="button.adduser"/>" class="button_text"  />&nbsp;&nbsp;
<input type="button" value="<fmt:message key="button.cancel"/>"  class="button_text" onclick="cancel()"/></td>
</tr>
</table>
</form:form>
</body>
</html>