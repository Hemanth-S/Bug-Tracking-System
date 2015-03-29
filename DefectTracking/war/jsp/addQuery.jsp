<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form:form>
User Id : <form:input path="userId" />
	<br>
Query Name: <form:input path="queryName" />
	<br>
Type: <form:select path="queryType">
		<form:option value="personal">Personal</form:option>
		<form:option value="public">Public</form:option>
	</form:select>
	<br>
	<input type="submit" value="Add Query" />
</form:form>
</body>
</html>