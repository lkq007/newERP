﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dingdanxinxi_updt2.aspx.cs" Inherits="dingdanxinxi_updt2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title><script language="javascript" src="js/Calendar.js"></script><LINK href="images/StyleSheet.css" type=text/css rel=stylesheet>
	<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
<script language="javascript">	
function OpenScript(url,width,height)
{
  var win = window.open(url,"SelectToSort",'width=' + width + ',height=' + height + ',resizable=1,scrollbars=yes,menubar=no,status=yes' );
}
	function OpenDialog(sURL, iWidth, iHeight)
{
   var oDialog = window.open(sURL, "_EditorDialog", "width=" + iWidth.toString() + ",height=" + iHeight.toString() + ",resizable=no,left=0,top=0,scrollbars=no,status=no,titlebar=no,toolbar=no,menubar=no,location=no");
   oDialog.focus();
}
</script>
	<body>
		<form id="Form1" method="post" runat="server">
			<br />
			   <table width="98%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#1E90FF" style="border-collapse:collapse">
				<tr bgColor="#B0C4DE">
					<td colSpan="2">
						<div align="center">
                            分配订单信息</div>
					</td>
				</tr>
				<tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='宋体'>订单编号:</FONT></td><td width='79%'><asp:textbox id='dingdanbianhao' runat='server' style='border:solid 1px #000000; color:#666666'></asp:textbox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatordingdanbianhao" runat="server" ControlToValidate="dingdanbianhao" ErrorMessage="必填"></asp:RequiredFieldValidator><tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='宋体'>订单名称:</FONT></td><td width='79%'><asp:textbox id='dingdanmingcheng' Width='395px' runat='server' style='border:solid 1px #000000; color:#666666'></asp:textbox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatordingdanmingcheng" runat="server" ControlToValidate="dingdanmingcheng" ErrorMessage="必填"></asp:RequiredFieldValidator><tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='宋体'>提交人:</FONT></td><td width='79%'><asp:textbox id='tijiaoren' runat='server' style='border:solid 1px #000000; color:#666666'></asp:textbox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatortijiaoren" runat="server" ControlToValidate="tijiaoren" ErrorMessage="必填"></asp:RequiredFieldValidator><tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='宋体'>需求产品:</FONT></td><td width='79%'><asp:textbox id='xuqiuchanpin' Width='395px' runat='server' style='border:solid 1px #000000; color:#666666'></asp:textbox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatorxuqiuchanpin" runat="server" ControlToValidate="xuqiuchanpin" ErrorMessage="必填"></asp:RequiredFieldValidator><tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='宋体'>数量:</FONT></td><td width='79%'><asp:textbox id='shuliang' runat='server' style='border:solid 1px #000000; color:#666666'></asp:textbox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatorshuliang" runat="server" ControlToValidate="shuliang" ErrorMessage="必填"></asp:RequiredFieldValidator><tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='宋体'>交单时限:</FONT></td><td width='79%'><asp:TextBox ID='jiaodanshixian' runat='server' onclick="getDate(Form1.jiaodanshixian,'2')" need="1" style='border:solid 1px #000000; color:#666666'></asp:TextBox></td></tr><tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='宋体'>订单总额:</FONT></td><td width='79%'><asp:textbox id='dingdanzonge' runat='server' style='border:solid 1px #000000; color:#666666'></asp:textbox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatordingdanzonge" runat="server" ControlToValidate="dingdanzonge" ErrorMessage="必填"></asp:RequiredFieldValidator><tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='宋体'>备注:</FONT></td><td width='79%'><asp:textbox id='beizhu' Width='400px' Height='100px' TextMode='MultiLine' runat='server' style='border:solid 1px #000000; color:#666666'></asp:textbox></td></tr>
                    <tr>
                        <td height="25" nowrap="nowrap" style="width: 164px" width="164">
                            分配上游供应商:</td>
                        <td height="25" width="59%">
                            <asp:DropDownList ID="gongyingshang" runat="server">
                            </asp:DropDownList></td>
                    </tr>
				<tr>
					<td noWrap width="164" height="25" style="WIDTH: 164px">
						<div align="right"><FONT face="宋体"></FONT>&nbsp;</div>
					</td>
					<td width="59%" height="25">&nbsp;
						<asp:button id="Button1" runat="server" Text="修改" OnClick="Button1_Click" style='border:solid 1px #000000; color:#666666'></asp:button><FONT face="宋体">&nbsp;</FONT>
                        <input id="Reset1" type="reset" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
				</tr>
				
				<tr bgColor="#B0C4DE">
					<td colSpan="2">&nbsp;</td>
				</tr>
			</table>
			<br>
		</form>
	</body>
</HTML>

