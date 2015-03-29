<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Login</title>
<link rel="stylesheet" type="text/css" href="css/style.css">

</head>
<body>
<table width="100%" height="100%">
<tr>
<td align="center" valign="middle">
<table border="1" bordercolor="#ABCC6A" align="center" height="180" width="280">
	<tr>
		<td align="center" bgcolor="#F3FAE8"><form:form>
			<table border="0">
				<tr>
					<td colspan="3" class="header_text" align="center">Login Information</td>
				</tr>
				<tr>
				<td height="30"></td>
				</tr>

				<%if(request.getParameter("mode")!=null){%>
				<tr>
					<td style="color: red;" colspan="3">User Id and Password does
					not match</td>
				</tr>
				<%}%>
				<tr>
					<td class="label_text">Login</td>
					<td>:</td>
					<td><form:input path="userId" cssClass="textfield_text" /></td>
					<td><form:errors path="userId" cssClass="error" /></td>
				</tr>
				<tr>
					<td class="label_text">Password</td>
					<td>:</td>
					<td><form:password path="password" cssClass="textfield_text" /></td>
					<td><form:errors path="password" cssClass="error" /></td>
				</tr>
				<tr>
					<td colspan="3" align="right"><input type="submit"
						value="Login" class="button_text" /></td>
				</tr>

			</table>
		</form:form></td>
	</tr>
</table>
</td>
</tr>
</table>
</body>
</html>
