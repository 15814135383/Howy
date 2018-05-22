<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="left.aspx.cs" Inherits="Maticsoft.Web.Li.Login.left" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
<link href="../../css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="../../js/jquery.js"></script>

<script type="text/javascript">
    $(function () {
        //导航切换
    
        $('.title').click(function () {
            var $ul = $(this).next('ul');
            $('dd').find('ul').slideUp();
            if ($ul.is(':visible')) {
                $(this).next('ul').slideUp();
            } else {
                $(this).next('ul').slideDown();
            }
        });
    })	
</script>


</head>

<body style="background:#f0f9fd;">
	<div class="lefttop"><span></span>Operation List</div>
    
    <dl class="leftmenu">
        
   <%=info %>
   
    </dl>
    
</body>
</html>