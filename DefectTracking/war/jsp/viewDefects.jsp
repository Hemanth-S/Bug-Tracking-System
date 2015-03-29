<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<table width="100%" class="rad_color">
	<tr>
		<c:forEach items="${presentationFieldsList}" var="pf">

			<td>${pf.presentationField}</td>
		</c:forEach>
	</tr>
	<tr>
		<td colspan="5">
		<hr />
		</td>
	</tr>
	<c:forEach items="${defectList}" var="defect">
		<tr>


			<td align="center"><a href="main.html?DId=${defect.defectId }"
				class="menu">${defect.defectId}</a></td>

			<td class="table_text">${defect.userId}</td>
			<td class="table_text">${defect.headLine}</td>

		</tr>
	</c:forEach>
</table>
</body>
</html>