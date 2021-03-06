﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TowCdInsert.aspx.cs" Inherits="Maticsoft.Web.Li.Qxpz.TowCdInsert" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="../../css/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../../js/jquery.js"></script>
    <script type="text/javascript">

    $(function(){
        $.ajax({
            url: "../Handl/Ajax.ashx",
            type: 'POST',
            text: 'text',
            data: { lx: "lodfjcdname", cs: "lod" },
            success: function (msg) {
                $("#ddlzcd").html(msg);
            } //显示操作提示 
        });
    })

        function show() {
            $("#divlist").show();

        }
        function hide() {
            $("#divlist").hide();

        }
        function f_check_number(obj) {
            var je = $("#" + obj).val();
            if (isNaN(je)) {
                alert("请输入数字");
                document.getElementById(obj).focus();
                return;
            }

        }

        function SelectName(obj) {
           //加载父级下拉框
            $.ajax({
                url: "../Handl/Ajax.ashx",
                type: 'POST',
                text: 'text',
                data: { lx: "lodfjcdname", cs: obj },
                success: function (msg) {
                    $("#ddlzcd").html(msg);
                } //显示操作提示 
            });

            $.ajax({
                url: "../Handl/Ajax.ashx",
                type: 'POST',
                text: 'text',
                data: { lx: "towcdupdatename", id: obj },
                success: function (msg) {
                    $("#txtinsertname").val(msg);
                } //显示操作提示 
            });
            $.ajax({
                url: "../Handl/Ajax.ashx",
                type: 'POST',
                text: 'text',
                data: { lx: "towcdupdatepx", id: obj },
                success: function (msg) {
                    $("#txtinsertpx").val(msg);
                } //显示操作提示 
            });
            $("#txthid").val(obj);
            $("#divlist").show();
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <input type="hidden" id="txthid" runat="server" value="0"/>
    <div class="place">
        <span>位置：</span>
        <ul class="placeul">
            <li><a href="#">《二级菜单列表》</a></li>
        </ul>
    </div>
    <div>
        <div id="divlist" style="display: none; text-align: right; width: 300px; height: 260px;
            position: absolute; background-color: #fff; left: 400px; top: 150px; border: 1px solid #ADADAD;">
            <input type="button" style="cursor: pointer;" value="关闭" onclick="hide()" />
            <div style="text-align: left;" class="formtitle">
                <span>菜单信息</span></div>
                 <div style="margin-top: 20px; margin-left: 10px; text-align: left;">
                父级菜单：
               <select id="ddlzcd" name="ddlzcd" runat="server"  style="width:150px; height:25px; border:1px solid #ADADAD">
              
                </select>
            </div>
            <div style="margin-top: 20px; margin-left: 10px; text-align: left;">
                菜单名称：
                <input type="text" runat="server" style="width: 150px; height: 23px;" class="dfinput"
                    name="txtinsertname" id="txtinsertname" />
            </div>
            <div style="margin-top: 20px; margin-left: 10px; text-align: left;">
                <label>
                    菜单排序：</label>
                <input type="text" runat="server" onblur='f_check_number("txtinsertpx")' style="width: 150px;
                    height: 23px;" class="dfinput" name="txtinsertpx" id="txtinsertpx" />
            </div>
            <div style="margin-top: 30px; margin-left: 80px; text-align: left;">
                <asp:Button ID="btntj" Text="提交申请 " runat="server" OnClick="btntj_Click" CssClass="btn"
                    Width="90px" Height="28px" />
            </div>
        </div>
    </div>
    <br />
    <div style="text-align: left; margin-left: 5px; line-height: 28px; float: left">
        &nbsp;&nbsp;&nbsp;父菜单名称：
        <input type="text" runat="server" id="txtfname" style="width: 150px; height: 28px;"
            class="dfinput" name="txtfname" />
            &nbsp;&nbsp;&nbsp;子菜单名称：
        <input type="text" runat="server" id="txtzname" style="width: 150px; height: 28px;"
            class="dfinput" name="txtzname" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnSelect" Text="查询 " runat="server" OnClick="btnSelect_Click" CssClass="btn"
            Width="90px" Height="28px" />
        <input type="button" onclick="show()" class="btn" value="菜单添加" style="width: 90px;
            height: 28px;" />
    </div>
    <br />
    <br />
    <div>
        <table class="imgtable">
            <thead>
                <tr>
                    <th>
                        序号
                    </th>
                     <th>
                        父菜单名称
                    </th>
                    <th>
                        子菜单名称
                    </th>
                    <th>
                        排序
                    </th>
                    <th>
                        操作
                    </th>
                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="Repeater1" runat="server" onitemcommand="Repeater1_ItemCommand">
                    <ItemTemplate>
                        <tr onmouseover="this.style.backgroundColor='#C4E1FF'" onmouseout="this.style.backgroundColor=''">
                            <td>
                                <%#Eval("xh") %>
                            </td>
                             <td>
                                <%#Eval("fname") %>
                            </td>
                            <td>
                                <%#Eval("name") %>
                            </td>
                            <td>
                                <%#Eval("px") %>
                            </td>
                            <td>
                                <a href="javascript:void()" onclick="SelectName(<%#Eval("id") %>)">点击修改</a>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 <asp:LinkButton ID="lnkRow" OnClientClick="return confirm('确定要删除么？')" runat="server" CommandArgument='<%#DataBinder.Eval(Container.DataItem, "id")%>' CommandName="click">删除该菜单</asp:LinkButton>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>
        <div style="margin: 10px;">
            <webdiyer:AspNetPager ID="AspNetPager1" runat="server" CustomInfoHTML="共%PageCount%页，当前为第%CurrentPageIndex%页，每页%PageSize%条"
                CssClass="pages" CurrentPageButtonClass="cpb" FirstPageText="首页" LastPageText="尾页"
                NextPageText="下一页" PrevPageText="上一页" ShowBoxThreshold="1" ShowCustomInfoSection="left"
                Width="100%" OnPageChanged="AspNetPager1_PageChanged" PageSize="15">
            </webdiyer:AspNetPager>
        </div>
    </div>
    </form>
</body>
</html>
