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
document.location='viewProject.html';	
}
</script>
</head>
<body style="margin: 0; background-color: #F3FAE8">
<form:form>
<table align="center">
<tr height="40">
<td colspan="3" valign="top" class="header_text" align="center"> <fmt:message key="title.editproject"/></td>
</tr>
<tr>
<td class="label_text"><fmt:message key="label.prjcode"/></td>
<td class="label_text">:</td>
<td><form:input path="projectCode"/> </td>
<td><form:errors path="projectCode" cssClass="error"/></td>
</tr>
<tr>
<td class="label_text"><fmt:message key="label.prjname"/></td>
<td class="label_text">:</td>
<td><form:input path="projectName"/> </td>
<td><form:errors path="projectName" cssClass="error"/></td>
</tr>
<tr>
<td class="label_text"><fmt:message key="label.clientname"/></td>
<td class="label_text">:</td>
<td><form:input path="clientName"/> </td>
<td><form:errors path="clientName" cssClass="error"/></td>
</tr>
<tr>
<td class="label_text"><fmt:message key="label.startdate"/></td>
<td class="label_text">:</td>
<td><form:input path="startDate"/> </td>
<td><form:errors path="startDate" cssClass="error"/></td>
</tr>
<tr>
<td class="label_text"><fmt:message key="label.totalday"/></td>
<td class="label_text">:</td>
<td><form:input path="totalDay"/> </td>
<td><form:errors path="totalDay" cssClass="error"/></td>
</tr>
<tr>
<td class="label_text"><fmt:message key="label.technology"/></td>
<td class="label_text">:</td>
<td><form:input path="technology"/> </td>
<td><form:errors path="technology" cssClass="error"/></td>
</tr>
<tr>
<td class="label_text"><fmt:message key="label.description"/></td>
<td class="label_text">:</td>
<td><form:textarea path="description" rows="3" cols="15"/> </td>
<td></td>
</tr>
<tr>
<td align="right" colspan="3"><input type="submit" value="<fmt:message key="button.savechanges"/>" class="button_text"  />&nbsp;&nbsp;
<input type="button" value="<fmt:message key="button.cancel"/>"  class="button_text" onclick="cancel()"/></td>
</tr>
</table>
</form:form>
</body>
</html>