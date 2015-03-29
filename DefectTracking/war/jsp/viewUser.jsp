<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><fmt:message key="title.viewuser"/></title>
<link rel="stylesheet" href="css/style.css" type="text/css" />
<script type="text/javascript">
function deleteUser(userid,username) {
	var status = confirm("Are you sure you want to delete the\n user "
			+ username);
	if (status == true) {		
		document.location = 'deleteUser.html?uid='+userid;
	}
}

function addUser()
{
	document.location = 'addUser.html';
}


function deleteRecord(){
	var ids=document.getElementById('deleteItemsIds').value;
	var name=document.getElementById('deleteItemsName').value;	
	if(ids!=""){	
	var l=x.length;
	if(l==1){
		var l1=name.length;
		
		var status=confirm("Are you sure you want to delete the following user \n"+name);
		if(status == true){			
			document.location ='deleteUser.html?uid='+ids;
		
		}
	}
	else if(l>1){				
			var status=confirm("Are you sure you want to delete the selected user \n"+name);
			if(status == true){					
				document.location ='deleteUser.html?uid='+ids;
				
			}
		}
	else{
		alert("Please select a checkBox");
	}
}
	else{
		alert("Please select a checkBox");
	}
}



var x=new Array();
var j=0;
function getUserId(){
var deleteItems="";
var deleteItemsName="";
var aa= document.getElementById('frm1');
for (var i =3; i < aa.elements.length; i++) 
{
if(aa.elements[i].checked == true){
var n=aa.elements[i].name;
var a=aa.elements[i].value;
if(isNaN(a)){	
x[j]=a;
deleteItems=aa.elements[i].value+"+"+deleteItems;
deleteItemsName=n+"\n"+deleteItemsName;
j++;
}
}
}
document.getElementById('deleteItemsIds').value=deleteItems;
document.getElementById('deleteItemsName').value=deleteItemsName;
}



checked=false;
function checkedAll (frm1) {
	var aa= document.getElementById('frm1');
	var deleteItems="";
	var deleteItemsName="";
	 if (checked == false)
          {
           checked = true
          }
        else
          {
          checked = false
          }
	for (var i =3; i < aa.elements.length-2; i++) 
	{
	//alert("Hi "+aa.elements.length);
	 aa.elements[i].checked = checked;
	 if(aa.elements[i].checked == true){
		 var a=aa.elements[i].value;
		 var n=aa.elements[i].name;
		 if(isNaN(a)){
		 x[j]=aa.elements[i].value;
		 deleteItems=aa.elements[i].value+"+"+deleteItems;
		 deleteItemsName=n+" \n "+deleteItemsName;
		  j++;
		 }
		 }
	}	
	document.getElementById('deleteItemsIds').value=deleteItems;
	document.getElementById('deleteItemsName').value=deleteItemsName;
	      }




</script>
</head>
<body style="margin: 0; background-color: #F3FAE8">
<table height="100%" width="100%" cellspacing="0">
<tr>
<td valign="top">
<form:form id="frm1">
<table width="100%" border="0" cellspacing="1">

<tr>
<td colspan="9">
<table width="100%" cellpadding="0" cellspacing="0" border="0">
<tr bgcolor="#999999">
<td width="30%">
&nbsp;<input type="button" value="<fmt:message key="button.adduser"/>" class="button_text" onclick="addUser()">&nbsp;
<input type="button" value="<fmt:message key="button.delete"/>" class="button_text" onclick="deleteRecord()">
</td>
<td width="50%"></td>
<td width="20%" align="center">
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
<td width="2%"><input type="checkbox" name='checkall' onclick='checkedAll(frm1);'> </td>
<td width="10%" class="label-text_white"><fmt:message key="label.userid"/></td>
<td width="10%" class="label-text_white"><fmt:message key="label.fname"/></td>
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
<td>
<c:if test="${user.userId!='admin'}">
<input type="checkbox" name="${user.fullName}"
value="${user.userId }" onclick="getUserId()">
</c:if> </td>
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
</td>
</tr>
</table>

</body>
</html>