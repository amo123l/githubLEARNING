
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
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

<body onload="MM_preloadImages('images/header_05_01_01.png','images/header1_05_02.png','images/header_05_01_03.png','images/header_05_01_04.png','images/header_05_02.png','images/header_05_01_05.png','images/header_05_01_06.png','images/login1.png','images/header_05_01_07.png','images/header_05_01_08.png','images/add.jpg','images/add1.jpg','images/update1.jpg','images/delete1.jpg')">
<form action="ticket" name="fn">
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
       <tr>
        <td >Hello :<%=session.getAttribute("username") %></td>
      </tr>
      <tr>
        <td width="84%"><span class="subheadings">Add Plan : </span></td>
        <td width="16%" rowspan="4"><div align="right"><a href="contact-us.html"></a> </div></td>
      </tr>
      <tr>
        <td class="subheadings style1">&nbsp;</td>
      </tr>
      <tr>
        <td><div align="right"></div></td>
      </tr>
      <tr>
        <td valign="top"><table width="50%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#CBE9FE">
            <tr>
              <td width="94%" height="200"><div align="center">
                  <table width="95%" border="0" align="center" cellpadding="5" cellspacing="1">
                    <tbody>
                      <tr>
                        <td height="23" class="bodytext"><div align="left"><span class="style10"><font color="#000000" sans-serif="sans-serif" helvetica,="helvetica," arial,="arial,">Account Type:</font></span></div></td>
                        <td height="23" class="bodytext"><div align="left"><span class="style5"><font color="#000000" face="Verdana, Arial, Helvetica, sans-serif">
                           <select name="service" size="1"  >
										<option>select Account type</option>
										<option value="prepaid">prepaid</option>
										<option value="postpaid">postpaid</option>
										</select>
                        </font></span></div></td>
                        
                      </tr>
                      <tr>
                        <td height="23" class="bodytext"><div align="left"><span class="style10"><font color="#000000" sans-serif="sans-serif" helvetica,="helvetica," arial,="arial,">Enter Plan Name:</font></span></div></td>
                        <td height="23" class="bodytext"><div align="left"><span class="style5"><font color="#000000" face="Verdana, Arial, Helvetica, sans-serif">
                           <input type="text" name="planname"/>
                        </font></span></div></td>
                        
                      </tr>
                      <tr>
                        <td height="23" class="bodytext"><div align="left"><span class="style10"><font color="#000000" sans-serif="sans-serif" helvetica,="helvetica," arial,="arial,">Free sms:</font></span></div></td>
                        <td height="23" class="bodytext"><div align="left"><span class="style5"><font color="#000000" face="Verdana, Arial, Helvetica, sans-serif">
                            <input type="text" name="Freesms"/>
                        </font></span></div></td>
                        
                      </tr>
                      
                     <tr>
                        <td height="23" class="bodytext"><div align="left"><span class="style10"><font color="#000000" sans-serif="sans-serif" helvetica,="helvetica," arial,="arial,">Vaidity:</font></span></div></td>
                        <td height="23" class="bodytext"><div align="left"><span class="style5"><font color="#000000" face="Verdana, Arial, Helvetica, sans-serif">
                            <input type="text" name="Vaidity"/>
                        </font></span></div></td>
                        
                      </tr>
                      
                      <tr>
                        <td height="" class="bodytext"><div align="left"><span class="style5"><font color="#000000" face="Verdana, Arial, Helvetica, sans-serif">
                            <input type="submit" maxlength="100" 
            name="CompanyName22" size="30" value="SUBMIT"/>
                        <td><div align="left">
                       </div></td>
                      </tr>
                      <tr>
                       
                    </tbody>
                  </table>
              </div></td>
            </tr>
        </table></td>
      </tr>
      <tr>
        <td><table width="30%" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>
<%---
try{
if(request.getParameter("descreption")!=null && !"".equals(request.getParameter("descreption")) ){
String sql="insert into createticket (User_id,Qdescription,date,priority,Login_name,category) "+
" values ('"+request.getParameter("userId")+"','"+request.getParameter("descreption")+"',CURDATE(),'"+request.getParameter("priority")+"','"+session.getAttribute("username")+"','"+request.getParameter("category")+"')";

boolean flag=DBUtilDaoImp.getConnection().createStatement().execute(sql);
if(flag){
out.print("Your Ticket Has Been Logged");
}
}
}catch(Exception e){
e.printStackTrace();
}


 --%>
</form>
</body>
</html>