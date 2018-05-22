<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddNotes.aspx.cs" Inherits="Maticsoft.Web.Fly.AddNotes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Add Note</title>
    <script language="javascript" type="text/javascript" src="../Scripts/WdatePicker.js"> </script>   
 <link href="../swfupload/default.css" rel="stylesheet" />
 <script src="../Scripts/jquery-1.4.1.min.js"></script> 
 <script src="../swfupload/swfupload.js"></script>
 <script src="../simpledemo/js/swfupload.queue.js"></script>
 <script src="../simpledemo/js/fileprogress.js"></script>
 <script src="../simpledemo/js/handlers.js"></script>
 <script type="text/javascript">     
        var swfu1;
        window.onload = function () {
			var settingsIMG = {
			    flash_url: "../swfupload/swfupload.swf",
			    //upload_url: "uploadFile.aspx",
			    upload_url: "EventFilesUpload.aspx",
				post_params: {
				    // "ASPSESSID": "<%=Session.SessionID %>",
				    "CARID": "<%=TxtCARID.Text.Trim().ToString() %>",
				    "User": "<%=LabUser.Text.Trim().ToString() %>",
                    "NoteID":"<%=TxtNoteID.Text.Trim().ToString() %>"
				},
				file_size_limit : "3 MB",
				file_types: "*.pdf;*.ppt;*.pptx;*.doc;*.docx;*.xls;*.xlsx;*.jpg;*.jif;*.png",
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
				button_width: 150,
				button_height: 22,
				button_text: '<span class="button">Select Event Files(3MB)<span class="buttonSmall"></span></span>',
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
        };

        function startUploadEvent() {
            //判断问题编号是否为空,为空时提示用户
            if ($("#TxtCARID").val() == "") {
                alert("Dear! No CAR ID can not be uploaded Oh!");
                return;
            }
            if ($("#TxtNoteID").val() == "")
            {
                alert("Dear! No Note ID can not be uploaded Oh!");
                return;
            }
            swfu1.startUpload();
        }
    </script>

 <script type="text/javascript"> 
  $(function () {
      $(":text").height("20px");
      });
 </script>
    <style type="text/css">
        .auto-style1 {
            height: 18px;
        }
        .auto-style2 {
            height: 21px;
        }
        .auto-style3 {
            height: 30px;
            width: 100%;
            border-width: 1px;
            margin-bottom: 2px;
            padding: 5px;
        }
        body{font-size:large}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table width="1200" border="1" cellspacing="0" cellpadding="0" style="margin-left:auto;margin-right:auto">
<tr><td colspan="4"><div align="left" style="margin-left:5px;margin-top:2px;margin-bottom:1px">
        <asp:Button ID="BtnSaveEvent" runat="server" BackColor="#3C95C8" BorderStyle="None" Text="Save Event" Font-Bold="True" Font-Italic="False"  Font-Strikeout="False" ForeColor="White"  Height="30px" OnClick="BtnSaveEvent_Click" /></div></td></tr>
  <tr>
    <th colspan="4" scope="col"><div align="left">Notes<span id="SaveData" style="display:"><asp:Label ID="LabUser" runat="server" Text="Label" Visible="false"></asp:Label>
        </span></th>
  </tr>
  <tr>
    <td width="200" scope="col" class="auto-style2">CAR ID</td>
    <td width="300" scope="col" class="auto-style2"><asp:TextBox ID="TxtCARID" runat="server"  ReadOnly="true" Width="96%"></asp:TextBox></td>
        
        <td width="200" scope="col" class="auto-style2">Note ID 
    <td width="292" scope="col" class="auto-style2"><asp:TextBox ID="TxtNoteID" runat="server"  ReadOnly="true" Width="96%"></asp:TextBox></td>  </tr>
  <tr>
    <td>Title</td>
    <td>
        <asp:TextBox ID="TxtTitle" runat="server" Width="96%"></asp:TextBox>
        </td>
    <td>Date</td>
    <td><input id="startDate"  style="height:20px;width:96%" type="text" onclick="WdatePicker({ dateFmt: 'yyyy-MM-dd HH:mm:ss', skin:'blue', readOnly: true })" runat="server" /></td>
  </tr>
  <tr>
    <td class="auto-style1">Person</td>
    <td class="auto-style1">
        <asp:DropDownList ID="DropPerson" runat="server" Height="30px" Width="100%">
        </asp:DropDownList>
      </td>
    <td class="auto-style1">Remarks</td>
    <td class="auto-style1"><asp:TextBox ID="TxtRemarks" runat="server"  Width="96%"></asp:TextBox></td>
  </tr>
  <tr>
    <td>Event Records</td>
    <td colspan="3">
   <asp:TextBox ID="TxtEventRecord" runat="server"  Height="95%" Rows="12"  TextMode="MultiLine" Width="98.7%" style="overflow-x:hidden;margin-top:auto;margin-bottom:auto; overflow-y:auto;" BorderWidth="1px" BorderStyle="Solid" ></asp:TextBox>


    </td>
  </tr>
  <tr>
    <td>Event Files </td>
 <td class="auto-style11" colspan="4"><span class="STYLE4" >
    <asp:Repeater ID="RepeaterForEvent" runat="server">
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
        <asp:Button ID="BtnLooKFile" runat="server"  Text="View Event Files" OnClick="BtnLooKFile_Click" BackColor="#3C95C8" Height="30px" Width="150px" ForeColor="White" Font-Bold="true"/>
              </h2>
	         <div>
				<span id="spanButtonPlaceHolder1"></span>                                
				<input id="btnCancel1" type="button" value="Cancel Upload" onclick="swfu1.cancelQueue();" disabled="disabled"  style="margin-left: 2px;; font-size: 9pt; background-color:#3C95C8; font-weight: bold; color: #FFFFFF;" class="auto-style6"  /> <span class="STYLE4">
                  <input id="btnUpload" type="button" value="Upload Event Files"
                        onclick="startUploadEvent();" class="auto-style4" style="background-color:#3C95C8; font-weight: bold; color: #FFFFFF;" 
                        /></span>
			</div>
			<p>&nbsp;</p>
			<div class="fieldset flash" id="fsUploadProgress1">
			    <span class="legend">Upload Progress &gt;Show</span>						
			</div>
		<div id="divStatus1">0&nbsp; Files have been uploaded</div>
        
        </span></td>
    </tr>
</table>
    </div>
    </form>
</body>
</html>
