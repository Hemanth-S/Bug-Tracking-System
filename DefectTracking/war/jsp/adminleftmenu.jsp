<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script language="JavaScript" src="js/jquery.js"></script>
<script type="text/javascript">
<!--//---------------------------------+
//  Developed by Roshan Bhattarai 
//  Visit http://roshanbh.com.np for this script and more.
//  This notice MUST stay intact for legal use
// --------------------------------->
$(document).ready(function()
{
	//slides the element with class "menu_body" when paragraph with class "menu_head" is clicked 
	$("#firstpane p.menu_head").click(function()
    {
		$(this).css({backgroundImage:"url(images/down.png)"}).next("div.menu_body").slideToggle(300).siblings("div.menu_body").slideUp("slow");
       	$(this).siblings().css({backgroundImage:"url(images/left.png)"});
	});
	//slides the element with class "menu_body" when mouse is over the paragraph
	$("#secondpane p.menu_head").click(function()
    {
	     $(this).css({backgroundImage:"url(images/down.png)"}).next("div.menu_body").slideDown(500).siblings("div.menu_body").slideUp("slow");
         $(this).siblings().css({backgroundImage:"url(images/left.png)"});
	});
});
</script>
<style type="text/css">
body {
	margin: 10px auto;
	font: 75%/120% Verdana,Arial, Helvetica, sans-serif;
}
.menu_list {	
	width: 200px;
}
.menu_head {
	padding: 5px 10px;
	cursor: pointer;
	position: relative;
	margin:1px;
    font-weight:bold;
    background: #719F04 url(images/left.png) center right no-repeat;
}
.menu_body {
	display:none;
}
.menu_body a{
  display:block;
  color:#006699;
  background-color:#EFEFEF;
  padding-left:10px;
  font-weight:normal;
  text-decoration:none;
}
.menu_body a:hover{
  color: #000000;
  text-decoration:underline;
  }
</style>
</head>
<body style="margin: 0; background-color: #EBF6D6">
<table>
	<tr>
		<td><script language="JavaScript">

		//new tree (TREE_ITEMS, TREE_TPL);

	</script>
 
		<div style="float:left; margin-left:5px;"> <!--This is the second division of right-->
		  <div class="menu_list" id="secondpane"> <!--Code for menu starts here-->				
				<p class="menu_head">Manage User</p>
				<div class="menu_body">
		          <a href="viewUser.html" target="mainfrm">View All User</a>
		         <a href="addUser.html" target="mainfrm">Add User</a>
		         <!-- <a href="#" target="mainfrm">Change Password</a>		 -->
		                 		
		       </div>
		       
		       <p class="menu_head">Manage Project</p>
				<div class="menu_body">
		          <a href="viewProject.html" target="mainfrm">View All Project</a>
		         <a href="addProject.html" target="mainfrm">Add Project</a>		   		       		
		       </div>
		       
		       <p class="menu_head">Manage Admin</p>
				<div class="menu_body">
		          <a href="viewAdmin.html" target="mainfrm">View All Admin User</a>
		         <a href="addAdmin.html" target="mainfrm">Add Admin User</a>
		         <a href="changePassword.html" target="mainfrm">Change Password</a>	
		                 		
		       </div>
		       
		  </div>      <!--Code for menu ends here-->
		</div>
	</td>
	</tr>
</table>
</body>
</html>