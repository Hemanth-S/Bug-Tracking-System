<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
</head>
<body style="margin: 0; background-color: #EBF6D6" >
<table width="100%" height="70px;" border="0">
<tr>
<td width="87%"></td>
<td align="right"> 
<%if(session.getAttribute("userid")!=null){ %>
<%=session.getAttribute("userid") %> 
<%} %>
<br>
<a href="login.html" class="logout" target="_parent"><fmt:message key="label.logout"/></a></td>
<td width="20"></td>
</tr>
<tr>
<td align="center" class="page_header_text" colspan="4"><fmt:message key="label.header"/></td>
</tr>
</table>
</body>
</html>