
<jsp:directive.page import="java.util.HashMap"/>
<jsp:directive.page import="java.util.Iterator"/>
<jsp:directive.page import="java.util.ArrayList"/>
<jsp:directive.page import="java.util.Collections"/>
<jsp:directive.page import="com.callcenter.formbean.RegistrationForm"/>
<jsp:directive.page import="com.callcenter.Service.RegistrationServiceImpl"/>
<jsp:directive.page import="java.util.TreeMap"/>

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

document.fn.action="add?un=add"
document.fn.submit();
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
<body onLoad="MM_preloadImages('images/header_05_01_01.png','images/header1_05_02.png','images/header_05_01_03.png','images/header_05_01_04.png','images/header_05_02.png','images/header_05_01_05.png','images/header_05_01_06.png','images/login1.png','images/header_05_01_07.png','images/header_05_01_08.png','images/add.jpg','images/add1.jpg','images/update1.jpg','images/delete1.jpg')">
<form action="" name="fn">


<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="84%" class="subheadings">Add Empoyee: </td>
                     
                    </tr>
                    <tr>
                      <td><div align="right"></div></td>
                      </tr>
                    
                    <tr>
                      <td><table width="70%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#CBE9FE">
                        <tr>
                          <td height="26" width="94%"><p align="center" class="blueheading"><font arial,="Arial," helvetica,="Helvetica," sans-serif="sans-serif">* Indicates Compulsory Fields</font></p></td>
                        </tr>
                        <tr>
                          <td height="26" width="94%"></td>
                        </tr>
                        <tr>
                          <td width="94%" height="200"><form action="registration" method="post" name="Enquiry" id="Enquiry" onSubmit="return onSubmit()">
                            <div align="center">
                                <label></label>
                                <table width="95%" border="0" align="center" cellpadding="5" cellspacing="1">
                                  <tbody>
                                   <tr>
                                      <td height="23" class="bodytext"><div align="left"><span class="style10"><font color="#000000" sans-serif="sans-serif" helvetica,="helvetica," arial,="arial,">User Type* :</font></span></div></td>
                                      <td height="23" class="bodytext"><div align="left">
                                        <input type="text" name="utype" maxlength="100" size="29"/>
                                      </div></td>
                                    </tr>
								   <tr>
                                       <td height="23" class="bodytext"><div align="left"><span class="style10"><font color="#000000" sans-serif="sans-serif" helvetica,="helvetica," arial,="arial,">First Name*: </font></span></div></td>
                                      <td height="23" class="bodytext"><div align="left">
                                        <input type="text" name="FirstName" maxlength="100" size="29"/>
                                      </div></td>
                                    </tr>
								  <tr>
                                       <td height="23" class="bodytext"><div align="left"><span class="style10"><font color="#000000" sans-serif="sans-serif" helvetica,="helvetica," arial,="arial,">Last Name*: </font></span></div></td>
                                      <td height="23" class="bodytext"><div align="left">
                                        <input type="text" name="LastName" maxlength="100" size="29"/>
                                      </div></td>
                                    </tr>
								  <tr>
                                       <td height="23" class="bodytext"><div align="left"><span class="style10"><font color="#000000" sans-serif="sans-serif" helvetica,="helvetica," arial,="arial,">User Name:* </font></span></div></td>
                                      <td height="23" class="bodytext"><div align="left">
                                        <input type="text" name="username" maxlength="100" size="29"/>
                                      </div></td>
                                    </tr>
								  <tr>
                                       <td height="23" class="bodytext"><div align="left"><span class="style10"><font color="#000000" sans-serif="sans-serif" helvetica,="helvetica," arial,="arial,">Password* :</font></span></div></td>
                                      <td height="23" class="bodytext"><div align="left">
                                        <input type="password" name="Password" maxlength="100" size="29"/>
                                      </div></td>
                                    </tr>

                                    <tr>
                                       <td height="23" class="bodytext"><div align="left"><span class="style10"><font color="#000000" sans-serif="sans-serif" helvetica,="helvetica," arial,="arial,">Re Enter Password* :</font></span></div></td>
                                      <td height="23" class="bodytext"><div align="left">
                                        <input type="password" name="RePassword" maxlength="100" size="29"/>
                                      </div></td>
                                    </tr>
                                    <tr>
                                       <td height="23" class="bodytext"><div align="left"><span class="style10"><font color="#000000" sans-serif="sans-serif" helvetica,="helvetica," arial,="arial,">Address* :&nbsp;</font></span></div></td>
                                      <td height="23" class="bodytext"><div align="left">
                                       
										<textarea name="Address" cols="24" rows="3" ></textarea>
                                      </div></td>
                                    </tr>
                                    <tr>
                                      <td height="23" class="bodytext"><div align="left"><span class="style10"><font color="#000000" sans-serif="sans-serif" helvetica,="helvetica," arial,="arial,">City*:&nbsp;</font></span></div></td>
                                      <td height="23" class="bodytext"><div align="left">
                                       
										 <input type="text" name="city" maxlength="100" size="29"/>
                                      </div></td>
                                    </tr>
									 <tr>
                                      <td height="23" class="bodytext"><div align="left"><span class="style10"><font color="#000000" sans-serif="sans-serif" helvetica,="helvetica," arial,="arial,">State*:&nbsp;</font></span></div></td>
                                      <td height="23" class="bodytext"><div align="left">
                                       
										<select name="State" size="1"  >
										<option>Maharastra</option>
										<option>Jharkhand</option>
										<option>Bihar</option>
										
										</select>
                                      </div></td>
                                    </tr>

                                    <tr>
                                      <td height="23" class="bodytext"><div align="left"><span class="style10"><font color="#000000" sans-serif="sans-serif" helvetica,="helvetica," arial,="arial,">Country*:&nbsp;</font></span></div></td>
                                      <td height="23" class="bodytext"><div align="left">
                                       
										<select name="Country" size="1"  >
										<option value="--select Country">Select Country</option>
										
										
										<% try{RegistrationForm registrationForm=(RegistrationForm)request.getAttribute("country");
										HashMap countrylist=registrationForm.getCountryList();
										Iterator countitr=countrylist.keySet().iterator();
										ArrayList al=new ArrayList();
										while(countitr.hasNext())
										{
										
										String array=(String)countitr.next();
										al.add(array);
										
										
										}
										Iterator itr=al.iterator();
										while(itr.hasNext())
										{
										String countryName=(String)itr.next();
										String countryid=(String)countrylist.get(countryName);
										 %>
										<option value="<%=countryName %>"><%=countryid%></option>
										
										<%}}catch(Exception e)
										{System.out.println(e);
										}
										 %>
										</select>
                                      </div></td>
                                    </tr>
                                    <tr>
                                      <td height="23" class="bodytext"><div align="left"><span class="style10"><font color="#000000" sans-serif="sans-serif" helvetica,="helvetica," arial,="arial,">Date of joining* :</font></span></div></td>
                                      <td height="23" class="bodytext"><div align="left">
                                        <input type="text" name="djoinig" maxlength="100" size="29"/>
                                      </div></td>
                                    </tr>
                                   
									<tr>
                                      <td height="23" class="bodytext"><div align="left"><span class="style10"><font color="#000000" sans-serif="sans-serif" helvetica,="helvetica," arial,="arial,">E-mail* :</font></span></div></td>
                                      <td height="23" class="bodytext"><div align="left">
                                        <input type="text" name="email" maxlength="100" size="29"/>
                                      </div></td>
                                    </tr>
                                    <tr>
                                      <td height="23" class="bodytext"><div align="left"><span class="style10"><font color="#000000" sans-serif="sans-serif" helvetica,="helvetica," arial,="arial,">Basic* :</font></span></div></td>
                                      <td height="23" class="bodytext"><div align="left">
                                        <input type="text" name="email" maxlength="100" size="29"/>
                                      </div></td>
                                    </tr
                                    <tr>
                                      <td height="23" class="bodytext"><div align="left">Mobile No* :</div></td>
                                      <td height="23" class="bodytext"><div align="left"><span class="style5"><font color="#000000" face="Verdana, Arial, Helvetica, sans-serif">
                                        <input maxlength="100" 
            name="mno" size="29" />
                                      </font></span></div></td>
                                    </tr>

									<tr>
                                      <td height="23" class="bodytext"><div align="left">Zip* :</div></td>
                                      <td height="23" class="bodytext"><div align="left"><span class="style5"><font color="#000000" face="Verdana, Arial, Helvetica, sans-serif">
                                        <input maxlength="100" 
            name="Zip" size="29" />
                                      </font></span></div></td>
                                    </tr>

                                  </tbody>
								  
                                </table>
								
                              </div>
                            <div align="center">
                                <table border="0" cellpadding="0" cellspacing="0" width="116">
                                  <tbody>
                                    <tr>
                                      <td height="27" width="65"><div align="center"><font color="#FFFFFF" size="1">
                                        <input name="submit" type="submit" value="Submit" />
                                      </font></div></td>
                                      <td height="27" width="42"><div align="center"><font color="#FFFFFF" size="1">
                                        <input name="reset" type="reset" value="Reset" />
                                      </font></div></td>
                                    </tr>
                                  </tbody>
                                </table>
  </tr>
</table>
</form>
</body>
</html>
