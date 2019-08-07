<jsp:directive.page import="com.callcenter.dao.DBUtilDaoImp"/>
<jsp:directive.page import="java.sql.ResultSet"/>
<jsp:directive.page import="java.util.ArrayList"/>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Call Center Management</title>
<style type="text/css">
@import url("test.css");

body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #CBE9FE;
}
a:link {
	text-decoration: none;
}
a:visited {
	text-decoration: none;
}
a:hover {
	text-decoration: none;
}
a:active {
	text-decoration: none;
}
.style1 {
	font-size: 16px;
	color: #000000;
}
</style>
<script type="text/JavaScript">
<!--

function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}
//-->
</script>
</head>

<body onload="MM_preloadImages('images/header_05_01_01.png','images/header1_05_02.png','images/header_05_01_03.png','images/header_05_01_04.png','images/header_05_02.png','images/header_05_01_05.png','images/header_05_01_06.png','images/login1.png','images/header_05_01_07.png','images/header_05_01_08.png','images/add.jpg')">
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="84%" height="40"><span class="subheadings">Hello :<%=session.getAttribute("username") %></span></td>
      </tr>
      <tr>
        <td height="40" class="subheadings style1"><div align="right"></div></td>
      </tr>
      
      <tr>
        <td valign="top">&nbsp;</td>
      </tr>
      
 			<% ResultSet rs=DBUtilDaoImp.getConnection().createStatement().executeQuery("select * from user_master where Login_name='"+session.getAttribute("username").toString()+"'");
 			while(rs.next())
 			
 			{%>
 			 <tr>
 			 <td>First Name:</td>
        <td><%=rs.getString("first_name") %></td>
      </tr>
 			 <tr>
 			 <td>Last Name:</td>
        <td><%=rs.getString("Last_name") %></td>
      </tr>
       <tr>
 			 <td>Email Id:</td>
        <td><%=rs.getString("Email") %></td>
      </tr>
       <tr>
 			 <td>Address:</td>
        <td><%=rs.getString("address") %></td>
      </tr>
      
 			<%}
 			
 			
 			%>     
      
     
      <tr>
        <td valign="top">&nbsp;</td>
      </tr>
      <tr>
        <td valign="top">&nbsp;</td>
      </tr>
      
    </table></td>
  </tr>
</table>
</body>
</html>
