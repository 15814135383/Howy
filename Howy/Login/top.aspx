<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="top.aspx.cs" Inherits="Maticsoft.Web.Li.Login.top" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
<link href="../../css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="../../js/jquery.js"></script>
<script type="text/javascript">
    $(function () {
        //顶部导航切换
        $(".nav li a").click(function () {
            $(".nav li a.selected").removeClass("selected")
            $(this).addClass("selected");
        })
    })	
</script>


</head>

<body style="background:url(../../images/topbg.gif) repeat-x;">

    <form id="form1" runat="server">

    <div class="topleft">
    <a href="main.aspx" target="_parent"><img src="../../images/FlyLogo.png" title="Home Page" height="70" width="270"/></a>
    </div>
   
    <div class="topright">    
    <ul>
    <li><span><img src="../../images/help.png" title="Help"  class="helpimg"/></span><a href="#">Help</a></li>
    <li><a href="#">About</a></li>
    <li><a href="loging.aspx" target="_parent">Sign Out</a></li>
    </ul>
    <div class="user">
       <asp:Label ID="LabUserName" runat="server" Text="Label"></asp:Label>
    </div>       
    </div>
    </form>


</body>
</html>