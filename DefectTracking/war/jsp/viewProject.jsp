<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><fmt:message key="title.viewuser"/></title>
<link rel="stylesheet" href="css/style.css" type="text/css" />
<script type="text/javascript">
function deleteUser(prjid,prjname) {
	var status = confirm("Are you sure you want to delete the\n project "
			+ prjname);
	if (status == true) {		
		document.location = 'deleteProject.html?prjid='+prjid;
	}
}

function addPrj()
{
	document.location = 'addProject.html';
}


function deleteRecord(){
	var ids=document.getElementById('deleteItemsIds').value;
	var name=document.getElementById('deleteItemsName').value;	
	if(ids!=""){	
	var l=x.length;
	if(l==1){
		var l1=name.length;
		
		var status=confirm("Are you sure you want to delete the following project \n"+name);
		if(status == true){			
			document.location ='deleteProject.html?prjid='+ids;
		
		}
	}
	else if(l>1){				
			var status=confirm("Are you sure you want to delete the selected project \n"+name);
			if(status == true){					
				document.location ='deleteProject.html?prjid='+ids;
				
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
for (var i =2; i < aa.elements.length; i++) 
{
if(aa.elements[i].checked == true){
var n=aa.elements[i].name;
var a=aa.elements[i].value;
if(!isNaN(a)){	
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
		 if(!isNaN(a)){
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
&nbsp;<input type="button" value="<fmt:message key="button.addprj"/>" class="button_text" onclick="addPrj()">&nbsp;
<input type="button" value="<fmt:message key="button.delete"/>" class="button_text" onclick="deleteRecord()">
</td>
<td width="50%"></td>
<td width="20%" align="center">
<table width="98%" align="center">
							<tr>
								<td></td>
								<td align="right" class="table_text"><c:if
									test="${isNewestEnabled}">
									<a href="viewProject.html?pageIndx=1" class="paging_link">&lt;&lt;Newest</a>
								</c:if> <c:if test="${isNewerEnabled}">
									<a href="viewProject.html?pageIndx=${prvIndx}"
										class="paging_link">&lt;Newer</a>
								</c:if> <b>${pagingMsg}</b> <c:if test="${isOlderEnabled}">
									<a href="viewProject.html?pageIndx=${nxtIndx}"
										class="paging_link">Older&gt;</a>
								</c:if> <c:if test="${isOldestEnabled}">
									<a href="viewProject.html?pageIndx=${lastIndx}"
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
<td width="10%" class="label-text_white"><fmt:message key="label.prjcode"/></td>
<td width="10%" class="label-text_white"><fmt:message key="label.prjname"/></td>
<td width="10%" class="label-text_white"><fmt:message key="label.clientname"/></td>
<td width="10%" class="label-text_white"><fmt:message key="label.startdate"/></td>
<td width="10%" class="label-text_white"><fmt:message key="label.totalday"/></td>
<td width="15%" class="label-text_white"><fmt:message key="label.technology"/></td>
<td width="15%" class="label-text_white"><fmt:message key="label.description"/></td>
<td width="8%" class="label-text_white"><fmt:message key="label.action"/></td>
</tr>

<%boolean color=false; %>
<c:forEach items="${projectList}" var="project" begin="${startIndex}" end="${endIndex}">
<%if(color){ %>
<tr bgcolor="#cccccc">
<td>
<input type="checkbox" name="${project.projectName}"
value="${project.projectId}" onclick="getUserId()">
</td>
<td class="label-text">${project.projectCode}</td>
<td class="label-text">${project.projectName}</td>
<td class="label-text">${project.clientName}</td>
<td class="label-text">${project.startDate}</td>
<td class="label-text">${project.totalDay}</td>
<td class="label-text">${project.technology}</td>
<td class="label-text">${project.description}</td>
<td>&nbsp;&nbsp;<a href="editProject.html?prjid=${project.projectId}" target="mainfrm" class="blue_link"><img src="images/icon_edit.png" border="0" height="14" width="14" alt="edit"></a> &nbsp;
<a href="#" class="body_text" onclick="deleteUser('${project.projectId}','${project.projectName}')"><img src="images/delete_icon1.png" border="0" height="14" width="14" alt="delete"></a>
</td>
</tr>

<%
color=false;
}else{ %>
<tr bgcolor="#999999">
<td>
<input type="checkbox" name="${project.projectName}"
value="${project.projectId}" onclick="getUserId()"> 
</td>
<td class="label-text">${project.projectCode}</td>
<td class="label-text">${project.projectName}</td>
<td class="label-text">${project.clientName}</td>
<td class="label-text">${project.startDate}</td>
<td class="label-text">${project.totalDay}</td>
<td class="label-text">${project.technology}</td>
<td class="label-text">${project.description}</td>
<td>&nbsp;&nbsp;<a href="editProject.html?prjid=${project.projectId}" class="blue_link"><img src="images/icon_edit.png" border="0" height="14" width="14" alt="edit"></a> &nbsp;
<a href="#" class="body_text" onclick="deleteUser('${project.projectId}','${project.projectName}')"><img src="images/delete_icon1.png" border="0" height="14" width="14" alt="delete"></a>
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