
<jsp:directive.page import="com.callcenter.dao.DBUtilDaoImp"/>
<jsp:directive.page import="com.callcenter.formbean.TicketForm"/>
<jsp:directive.page import="java.sql.ResultSet"/>
<jsp:directive.page import="java.util.ArrayList"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style>
td {font-size: 0.65em;font-family: Verdana, Geneva, Arial, Helvetica, sans-serif;font-size: 11px;}th {font-size: 0.85em;border-top: 2px solid #ddd;border-right: 2px solid #ddd;border-left: 2px solid #666;border-bottom: 2px solid #666;}table {border: 1px dotted #666;width: 80%;margin: 20px 0 20px 0;}th,td {margin: 0;padding: 0;text-align: left;vertical-align: top;background-repeat: no-repeat;list-style-type: none;}thead tr {background-color: #bbb;}tr.odd {background-color: #fff;}tr.even {background-color: #ddd;}</style>

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
<%@taglib uri="/WEB-INF/displaytag.tld" prefix="display"%>
<body onload="MM_preloadImages('images/header_05_01_01.png','images/header1_05_02.png','images/header_05_01_03.png','images/header_05_01_04.png','images/header_05_02.png','images/header_05_01_05.png','images/header_05_01_06.png','images/login1.png','images/header_05_01_07.png','images/header_05_01_08.png','images/add.jpg','images/add1.jpg','images/update1.jpg','images/delete1.jpg')">
<form action="getTickets" name="fn">

<% 
ArrayList  arrayList=new ArrayList();
try {
int id=0;
		//get parameter
		
ResultSet rs= DBUtilDaoImp.getConnection().createStatement().executeQuery("select User_id from user_master where Login_name='"+session.getAttribute("username").toString()+"'");
if(rs.next())
   id= rs.getInt("User_id");
  rs= DBUtilDaoImp.getConnection().createStatement().executeQuery("select * from createticket where User_id="+id+"");
		while(rs.next()){
			TicketForm  ticketForm=new TicketForm();
			ticketForm.setDate(rs.getDate("date"));
			ticketForm.setCategory(rs.getString("category"));
			ticketForm.setLoginName(rs.getString("Login_name"));
			
			ticketForm.setQdescription(rs.getString("Qdescription"));
			ticketForm.setTicketno(rs.getInt("ticketno"));
			ticketForm.setTicketno(rs.getInt("User_id"));
			arrayList.add(ticketForm);
			}
	} catch (Exception e) {
		e.printStackTrace();

	}
	session.setAttribute("TicketList", arrayList);
	System.out.println(arrayList.size());

 %>

<display:table name="sessionScope.TicketList" pagesize="10" export="true" decorator="" pagesize="5">
	<display:column property="ticketno" title="ID" sortable="true" sortable="true"/>
	<display:column property="qdescription" title="Ticket Decription" sortable="true"/>
		<display:column property="date" title="Date" sortable="true" />
		
		<%--
		<display:column property="userid" title="UserName" sortable="true"/>
		<display:column property="loginName" title="LoginName" sortable="true"/>
		--%><display:column property="category" title="Category" sortable="true"/>
	
	
	
	<display:column title="Status">  
                  <strong><%//=statusConta.getStagtus()%></strong>  
                        <select name="combo" id="Approvedstatus" >  
                            <option> </option>  
                            <option value="Approved" >Approved</option>  
                            <option value="NotApproved" >Not Approved</option>  
                            <option value="Checking" >Checking</option>  
                        </select>  </display:column>	
</display:table>
</form>
</body>
</html>