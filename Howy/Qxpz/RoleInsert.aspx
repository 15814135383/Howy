<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RoleInsert.aspx.cs" Inherits="Maticsoft.Web.Li.Qxpz.RoleInsert" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="../../css/style.css" rel="stylesheet" type="text/css" />
    <script src="../../js/jquery.js" type="text/javascript"></script>
    <script src="../../jBox/jBox/jquery.jBox-2.3.min.js" type="text/javascript"></script>
    <link href="../../jBox/jBox/Skins/样式说明(以Default皮肤为例).css" rel="stylesheet" type="text/css" />
    <script src="../../jBox/jBox/i18n/jquery.jBox-zh-CN.js" type="text/javascript"></script>
    <script type="text/javascript">
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

            $.ajax({
                url: "../Handl/Ajax.ashx",
                type: 'POST',
                text: 'text',
                data: { lx: "roleupdatename", id: obj },
                success: function (msg) {
                    $("#txtinsertname").val(msg);
                } //显示操作提示 
            });
            $("#txthid").val(obj);
            $("#divlist").show();
        }

        function showPop(obj,name) {
            $.jBox.open("iframe:QXFP.aspx?Rolesname="+name+"&RolesID=" + obj, "分配权限", 700, 500, { buttons: {} });

        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <input type="hidden" id="txthid" runat="server" value="0"/>
    <div class="place">
        <span>位置：</span>
        <ul class="placeul">
            <li><a href="#">《角色部门信息》</a></li>
        </ul>
    </div>
    <div>
        <div id="divlist" style="display: none; text-align: right; width: 300px; height: 230px;
            position: absolute; background-color: #fff; left: 400px; top: 150px; border: 1px solid #ADADAD;">
            <input type="button" style="cursor: pointer;" value="关闭" onclick="hide()" />
            <div style="text-align: left;" class="formtitle">
                <span>角色信息</span></div>
            <div style="margin-top: 20px; margin-left: 10px; text-align: left;">
                角色名称：
                <input type="text" runat="server" style="width: 150px; height: 23px;" class="dfinput"
                    name="txtinsertname" id="txtinsertname" />
            </div>
            
            <div style="margin-top: 30px; margin-left: 80px; text-align: left;">
                <asp:Button ID="btntj" Text="提交申请 " runat="server" OnClick="btntj_Click" CssClass="btn"
                    Width="90px" Height="28px" />
            </div>
        </div>
    </div>
    <br />
    <div style="text-align: left; margin-left: 5px; line-height: 28px; float: left">
        &nbsp;&nbsp;&nbsp;角色名称：
        <input type="text" runat="server" id="txtname" style="width: 150px; height: 28px;"
            class="dfinput" name="txtname" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnSelect" Text="查询 " runat="server" OnClick="btnSelect_Click" CssClass="btn"
            Width="90px" Height="28px" />
        <input type="button" onclick="show()" class="btn" value="角色添加" style="width: 90px;
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
                        部门名称
                    </th>
                    <th>
                        操作
                    </th>
                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr onmouseover="this.style.backgroundColor='#C4E1FF'" onmouseout="this.style.backgroundColor=''">
                            <td>
                                <%#Eval("xh") %>
                            </td>
                            <td>
                                <%#Eval("name") %>
                            </td>
                           
                            <td>
                                <a href="javascript:void()" onclick="SelectName(<%#Eval("id") %>)">点击修改</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 <a href="javascript:void()" onclick="showPop(<%#Eval("id") %>,'<%#Eval("name") %>')">分配权限</a>
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
