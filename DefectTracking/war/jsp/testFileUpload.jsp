<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form method="post" action="myFileUpload.jsp" name="upform">
<table width="60%" border="0" cellspacing="1" cellpadding="1"
	align="center" class="style1">
	<tr>
		<td>Enter UserId:<input type="text" name="uId">
		<td>
		<tr>
			<tr>
				<td>Enter Password:<input type="password" name="password">
				<td>
			</tr>
			<tr>
				<td>Enter Full Name:<input type="text" name="fullName">
				<td>
			</tr>
			<tr>
				<td>Enter EMail:<input type="text" name="email">
				<td>
			</tr>
			<tr>
				<td align="left"><b>Select a file to upload :</b></td>
			</tr>
			<tr>
				<td align="left"><input type="file" name="uploadfile" size="50">
				</td>
			</tr>
			<tr>
				<td align="left"><input type="hidden" name="todo"
					value="upload"> <input type="submit" name="Submit"
					value="Upload"> <input type="reset" name="Reset"
					value="Cancel"></td>
			</tr>
</table>
</form>
</body>
</html>
