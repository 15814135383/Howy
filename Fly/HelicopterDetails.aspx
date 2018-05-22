<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HelicopterDetails.aspx.cs" Inherits="Maticsoft.Web.Fly.HelicopterDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
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
      $("#aaa").hide();
      $("#bbb").hide();
      $("#ccc").hide();
      $("#BtnShowChinese").click(function () {
          $("#aaa").slideToggle();
          $("#bbb").slideToggle();
          $("#ccc").slideToggle();
          if ($("#BtnShowChinese").val() == "Show Chinese") {
              $("#BtnShowChinese").val("Close Chinese")
          }
          else { $("#BtnShowChinese").val("Show Chinese") }
          //$(":button").css('background-color', '#D4E7F0');
          //$(this).css('background-color', '#FEE69A');
      })
      var CARID = $("#TxtCARID").val();
      $("#LookNotes").click(function () {
          if (CARID == "") {
              alert("Dear! No CAR ID can not be look Notes!");
              return;
          }
          //$(":button").css('background-color', '#D4E7F0');
          //$(this).css('background-color', '#FEE69A');
          window.open("LookNotesList.aspx?CARID=" + CARID + "", "", "top=100,left=200,width=1004,height=800,toolbar=yes, menubar=yes, scrollbars=yes, resizable=yes,location=yes, status=yes'");
          //window.showModelessDialog("AddNotes.aspx");//对话框形式打开
      });
      $("#AddNotes").click(function () {
          if (CARID == "") {
              alert("Dear! No CAR ID can not be add Notes!");
              return;
          }
          //$(":button").css('background-color', '#D4E7F0');
          //$(this).css('background-color', '#FEE69A');
          window.open("AddNotes.aspx?CARID=" + CARID + "", "", "top=100,left=200,width=1004,height=800,toolbar=yes, menubar=yes, scrollbars=yes, resizable=yes,location=yes, status=yes'");
          //window.showModelessDialog("AddNotes.aspx");//对话框形式打开
      });




      });
 </script>

    <script type="text/javascript">     
        var swfu1;
        var swfu;
        var swfu2;
        window.onload = function () {

              //var swfu1;
			var settingsIMG = {
			    flash_url: "../swfupload/swfupload.swf",
			    //upload_url: "uploadFile.aspx",
			    upload_url: "ImageUpload.aspx",
				post_params: {
				    // "ASPSESSID": "<%=Session.SessionID %>",
				     "CARID": "<%=TxtCARID.Text.Trim().ToString() %>",
                     "User": "<%=LabUser.Text.Trim().ToString() %>"
				},
				file_size_limit : "3 MB",
				file_types: "*.jpg;*.jif;*.png",
				file_types_description : "All Files",
				file_upload_limit : 5,
				file_queue_limit : 0,
				custom_settings : {
					progressTarget : "fsUploadProgress1",
					cancelButtonId : "btnCancel1"
				},
				debug: false,

				// Button settings
				button_image_url: "../ImageForUPFile/NewIMGButtonNoText_160x22.png",
				button_placeholder_id: "spanButtonPlaceHolder1",
				button_width: 130,
				button_height: 22,
				button_text: '<span class="button">Select Image(3MB)<span class="buttonSmall"></span></span>',
				button_text_style: '.button { font-family: Helvetica, Arial, sans-serif; font-size: 14pt; } .buttonSmall { font-size:10pt; }',
				button_text_top_padding: 1,
				button_text_left_padding: 5,              
				
				// The event handler functions are defined in handlers.js
				file_queued_handler : fileQueued,
				file_queue_error_handler : fileQueueError,
				//file_dialog_complete_handler : fileDialogComplete,
				upload_start_handler : uploadStart,
				upload_progress_handler : uploadProgress,
				upload_error_handler : uploadError,
				upload_success_handler : uploadSuccess,
				upload_complete_handler : uploadComplete,
				queue_complete_handler : queueComplete1	// Queue plugin event
			};
		    swfu1 = new SWFUpload(settingsIMG);

			var settings = {
			    flash_url: "../swfupload/swfupload.swf",
			    //upload_url: "uploadFile.aspx",
			    upload_url: "ECNUpload.aspx",
				post_params: {
				    // "ASPSESSID": "<%=Session.SessionID %>",
				    "CARID": "<%=TxtCARID.Text.Trim().ToString() %>",
                    "User": "<%=LabUser.Text.Trim().ToString() %>"
				},
				file_size_limit : "3 MB",
				file_types: "*.pdf;*.ppt;*.pptx;*.doc;*.docx;*.xls;*.xlsx;*.jpg;*.jif;*.png",
				file_types_description : "All Files",
				file_upload_limit : 5,
				file_queue_limit : 0,
				custom_settings : {
					progressTarget : "fsUploadProgress",
					cancelButtonId : "btnCancel"
				},
				debug: false,

				// Button settings
				button_image_url: "../ImageForUPFile/NewIMGButtonNoText_160x22.png",
				button_placeholder_id: "spanButtonPlaceHolder",
				button_width: 125,
				button_height: 22,
				button_text: '<span class="button">Select File(3MB)<span class="buttonSmall"></span></span>',
				button_text_style: '.button { font-family: Helvetica, Arial, sans-serif; font-size: 14pt; } .buttonSmall { font-size: 10pt; }',
				button_text_top_padding: 1,
				button_text_left_padding: 5,
				
				// The event handler functions are defined in handlers.js
				file_queued_handler : fileQueued,
				file_queue_error_handler : fileQueueError,
				//file_dialog_complete_handler : fileDialogComplete,
				upload_start_handler : uploadStart,
				upload_progress_handler : uploadProgress,
				upload_error_handler : uploadError,
				upload_success_handler : uploadSuccess,
				upload_complete_handler : uploadComplete,
				queue_complete_handler : queueComplete	// Queue plugin event
			};
		    swfu = new SWFUpload(settings);

            var settingsWI = {
			    flash_url: "../swfupload/swfupload.swf",
			    //upload_url: "uploadFile.aspx",
			    upload_url: "WIFileUpload.aspx",
				post_params: {
				    // "ASPSESSID": "<%=Session.SessionID %>",
				    "CARID": "<%=TxtCARID.Text.Trim().ToString() %>",
                    "User": "<%=LabUser.Text.Trim().ToString() %>"
				},
				file_size_limit : "3 MB",
				file_types: "*.pdf;*.ppt;*.pptx;*.doc;*.docx;*.xls;*.xlsx;*.jpg;*.jif;*.png",
				file_types_description : "All Files",
				file_upload_limit : 5,
				file_queue_limit : 0,
				custom_settings : {
					progressTarget : "fsUploadProgress2",
					cancelButtonId : "btnCancel2"
				},
				debug: false,

				// Button settings
				button_image_url: "../ImageForUPFile/NewIMGButtonNoText_160x22.png",
				button_placeholder_id: "spanButtonPlaceHolder2",
				button_width: 130,
				button_height: 22,
				button_text: '<span class="button">Select FileWI(3MB)<span class="buttonSmall"></span></span>',
				button_text_style: '.button { font-family: Helvetica, Arial, sans-serif; font-size: 14pt; } .buttonSmall { font-size: 10pt; }',
				button_text_top_padding: 1,
				button_text_left_padding: 5,
				
				// The event handler functions are defined in handlers.js
				file_queued_handler : fileQueued,
				file_queue_error_handler : fileQueueError,
				//file_dialog_complete_handler : fileDialogComplete,
				upload_start_handler : uploadStart,
				upload_progress_handler : uploadProgress,
				upload_error_handler : uploadError,
				upload_success_handler : uploadSuccess,
				upload_complete_handler : uploadComplete,
				queue_complete_handler : queueComplete2	// Queue plugin event
			};
		    swfu2 = new SWFUpload(settingsWI);

          
        };

        function startUploadIMG() {
            //判断问题编号是否为空,为空时提示用户
            if ($("#TxtCARID").val() == "") {
                alert("Dear! No CAR ID can not be uploaded Oh!");
                return;
            }
            swfu1.startUpload();
        }
        function startUploadFile() {
            //判断问题编号是否为空,为空时提示用户
            if ($("#TxtCARID").val() == "")
            {
                alert("Dear! No CAR ID can not be uploaded Oh!");
                return;
            }
            swfu.startUpload();         
        }

        function startUploadWI() {
            
            if ($("#TxtCARID").val() == "") {
                alert("Dear! No CAR ID can not be uploaded Oh!");
                return;
            }
            swfu2.startUpload();
        }
    </script>


    <title>Helicopter Details</title>
    <style type="text/css">
        body{font-size:large}
        .auto-style1 {
            height: 18px;
        }
        tr,td{font-size:16px;
              color:#000000;
              background:#ffffff;
              text-align:left
        }
        .auto-style2 {
            height: 14px;
        }
        .auto-style3 {
            height: 21px;
        }
        .auto-style4 {
            width: 120px;
            height: 30px;
        }
        .auto-style6 {
            width: 101px;
        }
        .auto-style7 {
            height: 160px;
        }
        .auto-style8 {
            width: 41px;
        }
        .auto-style9 {
            width: 88px;
        }
        .auto-style11 {
            height: 30px;
        }
        .auto-style12 {
            width: 78px;
        }
        .auto-style13 {
            width: 120px;
            height: 30px;
            margin-left: 0px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
   <div style="margin-left:auto;margin-right:auto;margin-top:10px">
<table width="1100"  cellspacing="0" cellpadding="0" border="1" style="margin-left:auto;margin-right:auto">
      <tr>
    <th colspan="4" scope="col" class="auto-style1"><div align="left" style="margin-left:5px;margin-top:2px;margin-bottom:1px">
        <asp:Button ID="UpdataData" runat="server" BackColor="#3C95C8" BorderStyle="None" Text="Update Data" Font-Bold="True" Font-Italic="False"  Font-Strikeout="False" ForeColor="White"  Height="30px" OnClick="UpdataData_Click"/>
        <input id="AddNotes" type="button" value="Add Notes" runat="server" style="background-color:#3C95C8; font-weight: bold; color: #FFFFFF; height:30px;margin-left:2px;margin-top:2px;margin-bottom:1px" />
        <input id="LookNotes" runat="server" style="background-color:#3C95C8; font-weight: bold; color: #FFFFFF; height:30px;margin-left:2px;margin-top:2px;margin-bottom:1px" type="button" value="Look Notes" /></div></th>
  </tr>
  <tr>
    <th colspan="4" scope="col" class="auto-style1" style="height:30px;background-color:#D4E7F0"><div align="left">General<span id="SaveData" style="display:"><asp:Label ID="LabUser" runat="server" Text="Label" Visible="False"></asp:Label>
        </span></div></th>
  </tr>
  <tr>
    <td width="200" scope="col" class="auto-style1">CAR ID</td>
    <td width="300" scope="col" class="auto-style1">
        <asp:TextBox ID="TxtCARID" runat="server" Width="96%" ReadOnly="true"></asp:TextBox>
      </td>
    <td width="200" scope="col" class="auto-style1">Title</td>
    <td width="292" scope="col" class="auto-style1">
        <asp:TextBox ID="TxtTitle" runat="server" Width="96%"></asp:TextBox>
        </td>
  </tr>
  <tr>
    <td class="auto-style3">CAR#</td>
    <td class="auto-style3">
        <asp:TextBox ID="TxtCarName" runat="server" Width="96%"></asp:TextBox>
        </td>
    <td class="auto-style3">Eff_Site</td>
    <td class="auto-style3">
        <asp:DropDownList ID="DropEffSite" runat="server" Height="30px" Width="100%">
            <asp:ListItem>HeMei</asp:ListItem>
            <asp:ListItem>Erdos</asp:ListItem>
            <asp:ListItem>Both</asp:ListItem>
        </asp:DropDownList>
      </td>
  </tr>
  <tr>
    <td class="auto-style2">WO</td>
    <td class="auto-style2">
        <asp:DropDownList ID="DropWO" runat="server" Height="30px" Width="100%">
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
    <td class="auto-style2">All_WO</td>
    <td class="auto-style2">
        <asp:DropDownList ID="DropAllWo" runat="server" Height="30px" Width="100%">
            <asp:ListItem>Yes</asp:ListItem>
            <asp:ListItem>No</asp:ListItem>
        </asp:DropDownList>
      </td>
  </tr>
  <tr>
    <td class="auto-style2">Issuer</td>
    <td class="auto-style2">
        <asp:DropDownList ID="DropIssuer" runat="server" Height="30px" Width="100%">
        </asp:DropDownList>
      </td>
    <td class="auto-style2">Issue Date</td>
    <td><input id="startDate"  style="height:20px;width:96%" type="text" onclick="WdatePicker({ dateFmt: 'yyyy-MM-dd HH:mm:ss', skin:'blue', readOnly: true })" runat="server" /></td>
  </tr>
  <tr>
    <td class="auto-style1">Sect</td>
    <td class="auto-style1">
        <asp:TextBox ID="TxtSect" runat="server" Width="96%"></asp:TextBox>
        </td>
    <td class="auto-style1">Catagory</td>
    <td class="auto-style1">
        <asp:DropDownList ID="DropCatagory" runat="server" Height="30px" Width="100%">
            <asp:ListItem>Documentation</asp:ListItem>
            <asp:ListItem>Materials</asp:ListItem>
            <asp:ListItem>TBD</asp:ListItem>
            <asp:ListItem>OperERR</asp:ListItem>
        </asp:DropDownList>
      </td>
  </tr>
  <tr>
    <td class="auto-style2">page</td>
    <td class="auto-style2">
        <asp:TextBox ID="TxtPage" runat="server" Width="96%"></asp:TextBox>
        </td>
    <td class="auto-style2">KeySteps</td>
    <td class="auto-style2">
        <asp:DropDownList ID="DropKeyStep" runat="server" Height="30px" Width="100%">
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
        <asp:TextBox ID="TxtStep" runat="server" Width="96%"></asp:TextBox>
        </td>
    <td>Status</td>
    <td>
        <asp:DropDownList ID="DropStatus" runat="server" Height="30px" Width="100%">
            <asp:ListItem>Open</asp:ListItem>
            <asp:ListItem>Closed</asp:ListItem>
        </asp:DropDownList>
      </td>
  </tr>

  <tr>
    <td class="auto-style1">Image Upload</td>
    
       <td class="auto-style11" colspan="4"><span class="STYLE4" >
    <asp:Repeater ID="RepeaterForImage" runat="server">
    <HeaderTemplate>　　　　　　　　　　　　　　
      <table id="tb">
      <tr id="tr_head">
      <td>文件名</td>　
      <td>文件链接</td>　　　　　　　　　　　　　　　　
      </tr>
    </HeaderTemplate>
    <ItemTemplate>
      <tr class="tr_item">
      <%-- <td><%#Eval("FileName") %></td> --%>    
      <td><%# DataBinder.Eval(Container.DataItem,"FileName")%></td>
      <td>
      <a href="<%# DataBinder.Eval(Container.DataItem,"UpLoadFilePath")%>" target="_blank" >显示或下载文件</a> 
      </td>
      </tr>
      </ItemTemplate>            
      <FooterTemplate></table></FooterTemplate>      　　　　
      </asp:Repeater>
        <asp:Button ID="BtnLooKFile" runat="server"  Text="View Picture" OnClick="BtnLooKFile_Click" BackColor="#3C95C8" Height="30px" Width="100px" ForeColor="White" Font-Bold="true"/>
              </h2>
	         <div>
				<span id="spanButtonPlaceHolder1"></span>                                
				<input id="btnCancel1" type="button" value="Cancel Upload" onclick="swfu1.cancelQueue();" disabled="disabled"  style="margin-left: 2px;; font-size: 9pt; background-color:#3C95C8; font-weight: bold; color: #FFFFFF;" class="auto-style6"  /> <span class="STYLE4">
                  <input id="btnUpload" type="button" value="Upload Photos"
                        onclick="startUploadIMG();"  class="auto-style13" style="background-color:#3C95C8; font-weight: bold; color: #FFFFFF;" 
                        /></span>
			</div>
			<p>&nbsp;</p>
			<div class="fieldset flash" id="fsUploadProgress1">
			    <span class="legend">Upload Progress &gt;Show</span>						
			</div>
		<div id="divStatus1">0&nbsp; Files have been uploaded</div>
        
        </span></td>


  </tr>





  <tr>
    <td style="height:30px">Descriptions</td>
    <td colspan="3"><asp:TextBox ID="TxtDescriptions" runat="server"  Height="95%" Rows="12"  TextMode="MultiLine" Width="98.7%" style="overflow-x:hidden;margin-top:auto;margin-bottom:auto; overflow-y:auto;" BorderWidth="1px" BorderStyle="Solid" ></asp:TextBox></td>
  </tr>
  <tr>
    <td>Analysis</td>
    <td colspan="3"><asp:TextBox ID="TxtAnalysis" runat="server"  Height="95%" Rows="12"  TextMode="MultiLine" Width="98.7%" style="overflow-x:hidden;margin-top:auto;margin-bottom:auto; overflow-y:auto;" BorderWidth="1px" BorderStyle="Solid" ></asp:TextBox></td>
  </tr>
  <tr>
    <td class="auto-style7">Suggestions</td>
    <td colspan="3" class="auto-style7"><asp:TextBox ID="TxtSuggestions" runat="server"  Height="95%" Rows="12"  TextMode="MultiLine" Width="98.7%" style="overflow-x:hidden;margin-top:auto;margin-bottom:auto;overflow-y:auto;" BorderWidth="1px" BorderStyle="Solid" ></asp:TextBox></td>
  </tr>
    <tr>
    <th colspan="4" scope="col" class="auto-style1" style="height:30px;background-color:#D4E7F0"><div align="left" style="margin-left:5px;margin-top:3px;margin-bottom:3px"><span><input id="BtnShowChinese" type="button" value="Show Chinese" style="background-color:#3C95C8; font-weight: bold; color: #FFFFFF"></span></div></th>
  </tr>
 
    <tr id="aaa">
    <td >问题描述</td>
    <td colspan="3"><asp:TextBox ID="TxtDesChina" runat="server"  Height="99.7%" Rows="12"  TextMode="MultiLine" Width="98.7%" style="overflow-x:hidden;margin-top:auto;margin-bottom:auto; overflow-y:auto;" BorderWidth="1px" BorderStyle="Solid" ></asp:TextBox></td>
  </tr>
  <tr id="bbb">
    <td>原因分析</td>
    <td colspan="3"><asp:TextBox ID="TxtAnalysisChina" runat="server"  Height="99.7%" Rows="12"  TextMode="MultiLine" Width="98.7%" style="overflow-x:hidden;margin-top:auto;margin-bottom:auto; overflow-y:auto;" BorderWidth="1px" BorderStyle="Solid" ></asp:TextBox></td>
  </tr>
  <tr id="ccc">
    <td>建议</td>
    <td colspan="3"><asp:TextBox ID="TxtSugChina" runat="server"  Height="99.7%" Rows="12"  TextMode="MultiLine" Width="98.7%" style="overflow-x:hidden;margin-top:auto;margin-bottom:auto; overflow-y:auto;" BorderWidth="1px" BorderStyle="Solid" ></asp:TextBox></td>
  </tr>
  

</table>
<table width="1100" border="1" cellspacing="0" cellpadding="0" style="margin-top:5px;margin-left:auto;margin-right:auto">
      <tr>
    <th colspan="8" scope="col" style="background-color:#D4E7F0" class="auto-style11"><div align="left">Solution</div></th>
  </tr>
  <tr>
    <td width="120" scope="col">ECN#</td>
    <td colspan="3" scope="col">
         <asp:Repeater ID="RepeaterForECN" runat="server">
    <HeaderTemplate>　　　　　　　　　　　　　　
      <table id="tb">
      <tr id="tr_head">
      <td>文件名</td>　
      <td>文件链接</td>　　　　　　　　　　　　　　　　
      </tr>
    </HeaderTemplate>
    <ItemTemplate>
      <tr class="tr_item">
      <%-- <td><%#Eval("FileName") %></td> --%>    
      <td><%# DataBinder.Eval(Container.DataItem,"FileName")%></td>
      <td>
      <a href="<%# DataBinder.Eval(Container.DataItem,"UpLoadFilePath")%>" target="_blank" >显示或下载文件</a> 
      </td>
      </tr>
      </ItemTemplate>            
      <FooterTemplate></table></FooterTemplate>      　　　　
      </asp:Repeater>
        <asp:Button ID="BtnViewECN" runat="server"  Text="View ECN" OnClick="BtnViewECN_Click" BackColor="#3C95C8" Height="30px" Width="100px" ForeColor="White" Font-Bold="true"/>
              </h2>
	         <div>
				<span id="spanButtonPlaceHolder"></span>
				<input id="btnCancel" type="button" value="Cancel Upload" onclick="swfu.cancelQueue();" disabled="disabled"  style="margin-left: 2px;; font-size: 9pt; background-color:#3C95C8; font-weight: bold; color: #FFFFFF;" class="auto-style6"  /> <span class="STYLE4">
                  <input id="BtnUpECN" type="button" value="Upload ECN"
                        onclick="startUploadFile();" runat="server" class="auto-style4" style="background-color:#3C95C8; font-weight: bold; color: #FFFFFF;" 
                        /></span>
			</div>
				<p>&nbsp;</p>
			<div class="fieldset flash" id="fsUploadProgress">
			    <span class="legend"><span class="STYLE4" >
                Upload Progress</span>> Show</span>						
			</div>
		<div id="divStatus">0&nbsp; Files have been uploaded</div>
        
        </span>



    </td>
    <td scope="col" class="auto-style12">Approver</td>
    <td scope="col" class="auto-style9">
        <asp:DropDownList ID="DropApprover1" runat="server" Height="30px" Width="100%">
            <asp:ListItem>Tanner</asp:ListItem>
            <asp:ListItem>Dale</asp:ListItem>
            <asp:ListItem>Ken</asp:ListItem>
            <asp:ListItem>Vic</asp:ListItem>
            <asp:ListItem>Jenny</asp:ListItem>
        </asp:DropDownList>
      </td>
    <td scope="col" class="auto-style8">Date</td>
    <td width="120" scope="col">
        <input id="startAppDate1" runat="server" onclick="WdatePicker({ dateFmt: 'yyyy-MM-dd HH:mm:ss', skin:'blue', readOnly: true })" style="height:20px;width:90%" type="text" /></td>
  </tr>
  <tr>
    <td>WI</td>
    <td colspan="3"> <asp:Repeater ID="RepeaterForWI" runat="server">
    <HeaderTemplate>　　　　　　　　　　　　　　
      <table id="tb">
      <tr id="tr_head">
      <td>文件名</td>　
      <td>文件链接</td>　　　　　　　　　　　　　　　　
      </tr>
    </HeaderTemplate>
    <ItemTemplate>
      <tr class="tr_item">
      <%-- <td><%#Eval("FileName") %></td> --%>    
      <td><%# DataBinder.Eval(Container.DataItem,"FileName")%></td>
      <td>
      <a href="<%# DataBinder.Eval(Container.DataItem,"UpLoadFilePath")%>" target="_blank" >显示或下载文件</a> 
      </td>
      </tr>
      </ItemTemplate>            
      <FooterTemplate></table></FooterTemplate>      　　　　
      </asp:Repeater>
        <asp:Button ID="BtnViewWi" runat="server"  Text="View WI" OnClick="BtnViewWi_Click" BackColor="#3C95C8" Height="30px" Width="100px" ForeColor="White" Font-Bold="true"/>
              </h2>
	         <div>
				<span id="spanButtonPlaceHolder2"></span>  
				<input id="btnCancel2" type="button" value="Cancel Upload" onclick="swfu2.cancelQueue();" disabled="disabled"  style="margin-left: 2px;; font-size: 9pt; background-color:#3C95C8; font-weight: bold; color: #FFFFFF;" class="auto-style6"  /> <span class="STYLE4">
                  <input id="BtnUploadWI" type="button" value="Upload WI"
                        onclick="startUploadWI();" runat="server" class="auto-style4" style="background-color:#3C95C8; font-weight: bold; color: #FFFFFF;" 
                        /></span>
			</div>
				<p>&nbsp;</p>
			<div class="fieldset flash" id="fsUploadProgress2">
			    <span class="legend"><span class="STYLE4" >
                Upload Progress
        
        </span>> Show</span>						
			</div>
		<div id="divStatus2">0&nbsp; Files have been uploaded</div>
        
        </span></td>
    <td class="auto-style12">Approver</td>
    <td class="auto-style9">
        <asp:DropDownList ID="DropApprover2" runat="server" Height="30px" Width="100%">
            <asp:ListItem>Tanner</asp:ListItem>
            <asp:ListItem>Dale</asp:ListItem>
            <asp:ListItem>Ken</asp:ListItem>
            <asp:ListItem>Vic</asp:ListItem>
            <asp:ListItem>Jenny</asp:ListItem>
        </asp:DropDownList>
      </td>
    <td class="auto-style8">Date</td>
    <td>
        <input id="startAppDate2" runat="server" onclick="WdatePicker({ dateFmt: 'yyyy-MM-dd HH:mm:ss', skin:'blue', readOnly: true })" style="height:20px;width:90%" type="text" /></td>
  </tr>
  <tr>
    <td>Solution</td>
    <td colspan="7"><asp:TextBox ID="TxtSolution" runat="server"  Height="95%" Rows="12"  TextMode="MultiLine" Width="99%" style="overflow-x:hidden;margin-top:auto;margin-bottom:auto; overflow-y:auto;" BorderWidth="1px" BorderStyle="Solid" ></asp:TextBox></td>
  </tr>
  <tr>
    <td class="auto-style1">解决方法</td>
    <td colspan="7" class="auto-style1"><asp:TextBox ID="TxtSolutionChina" runat="server"  Height="95%" Rows="12"  TextMode="MultiLine" Width="99%" style="overflow-x:hidden;margin-top:1px; overflow-y:auto;" BorderWidth="1px" BorderStyle="Solid" ></asp:TextBox></td>
  </tr>
  <tr>
    <td class="auto-style7">Notes</td>
    <td colspan="7" class="auto-style7"><asp:TextBox ID="TxtNotes" runat="server"  Height="95%" Rows="12"  TextMode="MultiLine" Width="99%" style="overflow-x:hidden; margin-top:1px; overflow-y:auto;" BorderWidth="1px" BorderStyle="Solid" ></asp:TextBox></td>
  </tr>
  <tr>
    <td colspan="8" class="auto-style1" style="height:30px;background-color:#D4E7F0"></td>
  </tr>
</table>
</div>
    </form>
</body>
</html>
