<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form:form>
	<table width="100%" class="rad_color">
		<c:forEach items="${filterList}" var="filter">
			<tr>
				<td align="center">${filter.filterName}</td>
				<td><input type="text" value="${filter.defaultValue}"></td>

			</tr>
		</c:forEach>
		<tr>
			<td><form:input path="path1" /></td>
			<td><form:input path="path2" /></td>
			<td><form:input path="path3" /></td>
		</tr>
		<tr>
			<td></td>
			<td><input type="submit" value="Run"></td>
		</tr>
	</table>
</form:form>
</body>
</html>