

<jsp:directive.page import="java.util.TreeMap"/>
<jsp:directive.page import="java.sql.ResultSet"/>
<jsp:directive.page import="com.callcenter.dao.DBUtilDaoImp"/>

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
function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
//-->
function addCountry()
{

window.location.href='addempoyee.jsp';
}
function updateCountry()
{

document.fn.action="update?un=update"
document.fn.submit();
}
function deleteCountry()
{

document.fn.action="delete?un=delete"
document.fn.submit();
}
</script>
</head>
<form action="" name="fn">
<body onload="MM_preloadImages('images/header_05_01_01.png','images/header1_05_02.png','images/header_05_01_03.png','images/header_05_01_04.png','images/header_05_02.png','images/header_05_01_05.png','images/header_05_01_06.png','images/login1.png','images/header_05_01_07.png','images/header_05_01_08.png','images/add.jpg','images/add1.jpg','images/update1.jpg','images/delete1.jpg')">
<form action="" name="fn">


<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="84%" height="40"><span class="subheadings">Employee Details : </span></td>
      </tr>
      <tr>
        <td height="40" class="subheadings style1"><div align="right"></div></td>
      </tr>
      
      <tr>
        <td valign="top"><table width="80%" height="200" border="1" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFE0B3">
            <tr>
              <td width="94%" height="150"><div align="center">
                  <table width="95%" border="1" align="center" cellpadding="5" cellspacing="1">
                    <tbody>
                      <tr>
                        <th height="23" class="bodytext"><div align="left"><span class="style10"><font color="#000000" sans-serif="sans-serif" helvetica,="helvetica," arial,="arial,"></font></span></div></th>
                        <th height="23" class="bodytext"><div align="left"> Id </div></th>
                        <th height="23" class="bodytext"><div align="left">First Name </div></th>
                        <th height="23" class="bodytext"><div align="left">Last Name</div></th>
                        <th height="23" class="bodytext"><div align="left"> Address </div></th>
                        <th height="23" class="bodytext"><div align="left"> Phone no </div></th>
                       
                        </font></span></div></td>
                      </tr>
                     <% try{
						ResultSet rs=DBUtilDaoImp.getConnection().createStatement().executeQuery("select eid,first_name,Last_name,address,mobile_no from user_master um,employee em where um.User_id=em.User_id");
						

		
		
										while(rs.next())
										
										{
										int id=rs.getInt("eid");
										String fname=rs.getString("first_name");
										String lname=rs.getString("Last_name");
										String address=rs.getString("address");
										String mno=rs.getString("mobile_no");
										 %>
                      <tr>
                        <th height="23" class="bodytext"><div align="left"><span class="style10"><font color="#000000" sans-serif="sans-serif" helvetica,="helvetica," arial,="arial,"><input type="radio" name="country"></font></span></div></th>
                        <th height="23" class="bodytext"><div align="left"><%=id %></div></th>
                        <th height="23" class="bodytext"><div align="left"><%=fname %> </div></th>
                        <th height="23" class="bodytext"><div align="left"><%=lname %></div></th>
                        <th height="23" class="bodytext"><div align="left"><%=address %> </div></th>
                        <th height="23" class="bodytext"><div align="left"><%=mno %> </div></th>
                        </font></span></div></td>
                      </tr>
                    <%}}catch(Exception e)
										{e.printStackTrace();
										}
										 %>
                    </tbody>
                  </table>
              </div>
                  <table border="0" width="100%">
                    <tr>
                      <td width="100%" height="30"><b><font face="Verdana, Arial, Helvetica, sans-serif" size="1" color="#000000">&nbsp;</font></b></td>
                    </tr>
                  </table>
                <div align="center">
                  <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="30%" height="50"><div align="center"><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image1','','images/add1.jpg',1)" onClick="addCountry();"><img src="images/add.jpg" name="Image1" width="108" height="25" border="0" id="Image1" /></a></div></td>
                      <td width="30%"><div align="center"><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image2','','images/update1.jpg',1)"onClick="updateCountry();"><img src="images/update.jpg" name="Image2" width="108" height="25" border="0" id="Image2" /></a></div></td>
                      <td width="30%"><div align="center"><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image3','','images/delete1.jpg',1)"onClick="deleteCountry();"><img src="images/delete.jpg" name="Image3" width="108" height="25" border="0" id="Image3" /></a></div></td>
                    </tr>
                  </table>
                </div>
                </td>
            </tr>
        </table></td>
      </tr>
      
    </table></td>
  </tr>
</table>
</form>
</body>
</html>
