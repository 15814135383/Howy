<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QXFP.aspx.cs" Inherits="Maticsoft.Web.Li.Qxpz.QXFP" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
      <link href="../../css/style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        body
        {
            font-family: Arial, "宋体";
            font-size: 14px;
        }
        .check
        {
            cursor: pointer;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table style="width: 95%; height: auto; margin-top: 15px; margin-left: 20px;">
        <tr>
            <td>
                <asp:Label ID="lblName" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <table width="100%" border="0" style="line-height: 30px" cellpadding="0" cellspacing="1">
                            <tr>
                                <td>
                                    <font color="#336699">
                                        <asp:CheckBox ID="ch_Module" runat="server" Text='<%#Eval("name") %>' onclick="selectAll(this)" />(全选)</font>
                                </td>
                            </tr>
                            <tr>
                                <td style="padding-left: 15px;">
                                    <asp:CheckBoxList ID="ch_Page" runat="server" RepeatLayout="table" RepeatColumns="4"
                                        DataTextField="name" DataValueField="id" DataSource='<%#GetPageDataSource(Eval("id").ToString())%>'>
                                    </asp:CheckBoxList>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:Repeater>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
               <asp:Button ID="btntj" Text="提交申请 " runat="server" OnClick="btntj_Click" CssClass="btn"
                    Width="90px" Height="28px" />
            </td>
        </tr>
    </table>
    </form>
    <script src="../../js/jquery.js" type="text/javascript"></script>
    <script type="text/javascript">
        function selectAll(obj) {
            if (document.getElementById(obj.id.replace("ch_Module", "ch_Page")) != null) {
                var allInput = document.getElementById(obj.id.replace("ch_Module", "ch_Page")).getElementsByTagName("input");
                var loopTime = allInput.length;
                for (i = 0; i < loopTime; i++) {
                    if (allInput[i].type == "checkbox") {
                        allInput[i].checked = obj.checked;
                    }
                }
            }
        }
    </script>
</body>
</html>

