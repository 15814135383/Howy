<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loging.aspx.cs" Inherits="Maticsoft.Web.Li.Login.loging" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Welcome To The Management System Of HMB Helicopter Inc.</title>
    <link href="../../css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="../../js/jquery.js"></script>
<script src="../../js/cloud.js" type="text/javascript"></script>

<script language="javascript">
    $(function () {
        $('.loginbox').css({ 'position': 'absolute', 'left': ($(window).width() - 692) / 2 });
        $(window).resize(function () {
            $('.loginbox').css({ 'position': 'absolute', 'left': ($(window).width() - 692) / 2 });
        })
    });  
</script> 

</head>

<body style="background-color:#1c77ac; background-image:url(images/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;">
 <form id="form1" runat="server">
    <div id="mainBody">
      <div id="cloud1" class="cloud"></div>
      <div id="cloud2" class="cloud"></div>
    </div>  
<div class="logintop">    
    <span title="Welcome To The Management System Of HMB Helicopter Inc.">Welcome To The Management System Of HMB Helicopter Inc.</span>    
    </div>
    
    <div class="loginbody">
    
    <span class="systemlogo" title="Welcome To The Management System Of HMB Helicopter Inc."></span> 
       
    <div class="loginbox">
    
    <ul>
    <li>
    
    <input name="txtusername" id='txtusername' runat="server" type="text" class="loginuser" value="admin" onclick="JavaScript:this.value=''" title="Please enter your username!"/>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtusername"
            ErrorMessage="No empty" Display="None"></asp:RequiredFieldValidator>
    </li>
    <li><input name="txtuserpwd" id='txtuserpwd' runat="server" type="password" class="loginpwd"  value="PassWord" onclick="JavaScript:this.value=''" title="Please enter your password!"/></li>
    <li><span style="margin-left:100px"><asp:Button ID="btnlog"  runat="server" 
            Text="LOGIN" CssClass='loginbtn' onclick="btnlog_Click" OnClientClick="isnull()" /></span></li>
    </ul>
<%-- <div class="mainindex" style="font-family: 'Yu Gothic UI Semibold'; font-size: 20px; font-weight: bolder; color: #CC0000; text-align: center; clip: rect(200px, auto, auto, 200px); list-style-position: inherit; vertical-align: bottom; font-style: inherit; padding-top: 60px;" align="center" title="Tafel资讯技术部设计V1.0">
        Tafel资讯技术部设计V1.0
    </div>--%>
    </form>
</body>
</html>
<script>
    function isnull() {
        if ($("#txtusername").val() == "" || $("#txtuserpwd").val() == "") {
            return alert("Dear!the username or password can not be empty.");
        }
    }
</script>
