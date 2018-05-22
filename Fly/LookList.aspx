<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LookList.aspx.cs" Inherits="Maticsoft.Web.Fly.LookList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
 <script language="javascript" type="text/javascript" src="../Scripts/WdatePicker.js"> </script>   
 <link href="../swfupload/default.css" rel="stylesheet" />
 <script src="../Scripts/jquery-1.4.1.min.js"></script> 
 <script src="../swfupload/swfupload.js"></script>
 <script src="../simpledemo/js/swfupload.queue.js"></script>
 <script src="../simpledemo/js/fileprogress.js"></script>
 <script src="../simpledemo/js/handlers.js"></script>
 <script type="text/javascript"> 
  $(function () {
      $(":text").height("20px");
      });
 </script>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
        body {
            font-size:medium;           
        }
        .auto-style2 {
            height: 23px;
            width: 200px;
        }
        .auto-style3 {
            width: 200px;
        }
        .auto-style4 {
            height: 30px;
        }
        .auto-style5 {
            height: 30px;
            width: 292px;
        }
        .auto-style6 {
            height: 23px;
            width: 292px;
        }
        .auto-style7 {
            width: 292px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin-left:auto;margin-right:auto">
    <table   cellspacing="0" cellpadding="0" border="1" style="margin-left:auto;margin-right:auto;margin-top:10px; color: #000000;width:1200px">
      <tr>
    <th colspan="2" scope="col" style="border-style: none; border-color: inherit; border-width: medium; background-color:#D4E7F0;" ><div align="left">Search condition setting</div></th>
    <td style="border-style: none; border-color: inherit; border-width: medium; background-color:#D4E7F0;"></td>
    <div style="margin-top:2px;margin-bottom:2px">
    <td style="border-style: none; border-color: inherit; border-width: medium; background-color:#D4E7F0;" ><span style="margin-left:200px;margin-top:5px;margin-bottom:5px"><asp:Button ID="BtnSelectData" runat="server" BackColor="#3C95C8" BorderStyle="None" Text="Select Data" Font-Bold="True" Font-Italic="False"  Font-Strikeout="False" ForeColor="White"  Height="30px" OnClick="BtnSelectData_Click"/></span><span style="margin-left:5px;margin-top:5px;margin-bottom:5px"><asp:Button ID="BtnClearSetting" runat="server" BackColor="#3C95C8" BorderStyle="None" Text="Clear Setting" Font-Bold="True" Font-Italic="False"  Font-Strikeout="False" ForeColor="White"  Height="30px" OnClick="BtnClearSetting_Click"/></span>
        </td>
    </div>
  </tr>
<tr>
    <td width="200" scope="col" >CAR ID</td>
    <td width="300" scope="col">
        <asp:TextBox ID="TxtCARID" runat="server" Width="95%"></asp:TextBox>
      </td>
    <td scope="col" >Title</td>
    <td scope="col" >
        <asp:TextBox ID="TxtTitle" runat="server" Width="97%"></asp:TextBox>
        </td>
  </tr>
  <tr>
    <td >CAR#</td>
    <td >
        <asp:TextBox ID="TxtCarName" runat="server" Width="95%"></asp:TextBox>
        </td>
    <td >Eff_Site</td>
    <td >
        <asp:DropDownList ID="DropEffSite" runat="server" Height="30px" Width="100%">
            <asp:ListItem>Please Choose</asp:ListItem>
            <asp:ListItem>HeMei</asp:ListItem>
            <asp:ListItem>Erdos</asp:ListItem>
            <asp:ListItem>Both</asp:ListItem>
        </asp:DropDownList>
      </td>
  </tr>
  <tr>
    <td >WO</td>
    <td >
        <asp:DropDownList ID="DropWO" runat="server" Height="30px" Width="100%">
            <asp:ListItem>Please Choose</asp:ListItem>
            <asp:ListItem>1064</asp:ListItem>
            <asp:ListItem>1069</asp:ListItem>
            <asp:ListItem>1074</asp:ListItem>
            <asp:ListItem>1075</asp:ListItem>
            <asp:ListItem>1076</asp:ListItem>
            <asp:ListItem>1078</asp:ListItem>
            <asp:ListItem>1080</asp:ListItem>
            <asp:ListItem>1081</asp:ListItem>
            <asp:ListItem>1083</asp:ListItem>
        </asp:DropDownList>
      </td>
    <td>All_WO</td>
    <td>
        <asp:DropDownList ID="DropAllWo" runat="server" Height="30px" Width="100%">
            <asp:ListItem>Please Choose</asp:ListItem>
            <asp:ListItem>Yes</asp:ListItem>
            <asp:ListItem>No</asp:ListItem>
        </asp:DropDownList>
      </td>
  </tr>
  <tr>
    <td>Issuer</td>
    <td>
        <asp:DropDownList ID="DropIssuer" runat="server" Height="30px" Width="100%">
        </asp:DropDownList>
      </td>
    <td >Issue Date</td>
    <td ><input id="startDate"  style="height:20px;width:97%" type="text" onclick="WdatePicker({ dateFmt: 'yyyy-MM-dd HH:mm:ss', skin:'blue', readOnly: true })" runat="server" /></td>
  </tr>
  <tr>
    <td>Sect</td>
    <td>
        <asp:TextBox ID="TxtSect" runat="server" Width="95%"></asp:TextBox>
        </td>
    <td>Catagory</td>
    <td>
        <asp:DropDownList ID="DropCatagory" runat="server" Height="30px" Width="100%">
            <asp:ListItem>Please Choose</asp:ListItem>
            <asp:ListItem>Documentation</asp:ListItem>
            <asp:ListItem>Materials</asp:ListItem>
            <asp:ListItem>TBD</asp:ListItem>
            <asp:ListItem>OperERR</asp:ListItem>
        </asp:DropDownList>
      </td>
  </tr>
  <tr>
    <td>page</td>
    <td>
        <asp:TextBox ID="TxtPage" runat="server" Width="95%"></asp:TextBox>
        </td>
    <td>KeySteps</td>
    <td>
        <asp:DropDownList ID="DropKeyStep" runat="server" Height="30px" Width="100%">
            <asp:ListItem>Please Choose</asp:ListItem>
            <asp:ListItem>VAT reply</asp:ListItem>
            <asp:ListItem>VAT confirm</asp:ListItem>
            <asp:ListItem>HMB reply</asp:ListItem>
            <asp:ListItem>Solution Complete</asp:ListItem>
        </asp:DropDownList>
      </td>
  </tr>
  <tr>
    <td>Step</td>
    <td>
        <asp:TextBox ID="TxtStep" runat="server" Width="95%"></asp:TextBox>
        </td>
    <td>Status</td>
    <td>
        <asp:DropDownList ID="DropStatus" runat="server" Height="30px" Width="100%">
            <asp:ListItem>Please Choose</asp:ListItem>
            <asp:ListItem>Open</asp:ListItem>
            <asp:ListItem>Closed</asp:ListItem>
        </asp:DropDownList>
      </td>
  </tr>

<div style="margin-top:10px">
<tr><td colspan="6" class="auto-style1">
    <asp:GridView ID="GVList" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#9999FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" EnableModelValidation="True" GridLines="Horizontal" Width="1198px" CaptionAlign="Left" Font-Size="Small">
            <AlternatingRowStyle BackColor="#D4E7F0" />
            <Columns>
                <asp:HyperLinkField DataTextField="CarID" HeaderText="CarID"  DataNavigateUrlFields="CarID" DataNavigateUrlFormatString="HelicopterDetails.aspx?CarID={0}" >
                <ItemStyle HorizontalAlign="Left" />
                </asp:HyperLinkField>
                <asp:BoundField DataField="Title" HeaderText="Title" >
                <ItemStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="CarName" HeaderText="Car#" >
                <ItemStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="Eff_Site" HeaderText="Eff_Site" >
                <ItemStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="WO" HeaderText="WO" />
                <asp:BoundField DataField="All_WO" HeaderText="All_WO" />
                <asp:BoundField DataField="Issuer" HeaderText="Issuer" />
                <asp:BoundField DataField="IssueDate" HeaderText="IssueDate" />
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#D4E7F0" Font-Bold="True" ForeColor="Black" Font-Size="Medium" HorizontalAlign="Left" />
            <PagerStyle BackColor="#D4E7F0" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Left" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        </asp:GridView>





    </td></tr>

  <tr>
    <td colspan="6">
        <asp:Panel ID="PanelShow" runat="server">
            共有<asp:Label ID="lblRecordCount" runat="server" ForeColor="red"></asp:Label>
            条记录 当前为<asp:Label ID="lblCurrentPage" runat="server" ForeColor="Red"></asp:Label>
            /
            <asp:Label ID="lblPageCount" runat="server" ForeColor="Red"></asp:Label>
            页 &nbsp;
            <asp:DropDownList ID="Ddl_PageNumber" runat="server" AutoPostBack="true" CssClass="lanyu">
            </asp:DropDownList>
            <asp:LinkButton ID="BtnFirst" runat="server" CommandName="First" Font-Size="10pt" OnCommand="Page_OnClick" Text="首页">首页</asp:LinkButton>
            <asp:LinkButton ID="lbnPrevPage" runat="server" CommandName="prev" Font-Size="10pt" OnCommand="Page_OnClick" Text="上一页"></asp:LinkButton>
            &nbsp;
            <asp:LinkButton ID="lbnNextPage" runat="server" CommandName="next" Font-Size="10pt" OnCommand="Page_OnClick" Text="下一页"></asp:LinkButton>
            <asp:LinkButton ID="BtnLast" Runat="server" CommandName="Last" Font-Size="10pt" OnCommand="Page_OnClick" text="尾页">尾页</asp:LinkButton>
            <asp:Label ID="labedit" runat="server" Text="Label" Visible="False"></asp:Label>
        </asp:Panel>
      </td>
  </tr>
</div>









    </table>
    
    </div>
    </form>
</body>
</html>
