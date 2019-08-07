
<jsp:directive.page import="com.callcenter.dao.DBUtilDaoImp"/>
<jsp:directive.page import="com.callcenter.formbean.vacancy"/>
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

		//get parameter
		
ResultSet rs= DBUtilDaoImp.getConnection().createStatement().executeQuery("select * from post_vacancy");

		while(rs.next()){
			vacancy vac=new vacancy();
			
			vac.setVacancyName(rs.getString("vacancyname"));
			vac.setDiscreption(rs.getString("discreption"));
			vac.setKeyskill(rs.getString("keyskill"));
			vac.setDesignation(rs.getString("designation"));
			vac.setSalaryrange(rs.getString("salaryrange"));
			
			arrayList.add(vac);
			}
	} catch (Exception e) {
		e.printStackTrace();

	}
	session.setAttribute("vacancyLit", arrayList);
	System.out.println(arrayList.size());

 %>

<display:table name="sessionScope.vacancyLit" pagesize="10" export="true" decorator="" pagesize="5">
	<display:column property="vacancyName" title="Name" sortable="true" sortable="true"/>
	<display:column property="discreption" title="Vacancy Decription" sortable="true"/>
		<display:column property="keyskill" title="Skill" sortable="true" />
		<display:column property="designation" title="Designation" sortable="true"/>
		
		<%--
		<display:column property="userid" title="UserName" sortable="true"/>
		<display:column property="loginName" title="LoginName" sortable="true"/>
		--%>
		
</display:table>
</form>
</body>
</html>