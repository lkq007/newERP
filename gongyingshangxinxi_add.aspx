<%@ Page Language="C#" AutoEventWireup="true" CodeFile="gongyingshangxinxi_add.aspx.cs" Inherits="gongyingshangxinxi_add" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>�ޱ���ҳ</title><script language="javascript" src="js/Calendar.js"></script><LINK href="images/StyleSheet.css" type=text/css rel=stylesheet>
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
		<form id="Form1" method="post" runat="server" style="margin-top:-0.8%">
			<br />
			   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#1E90FF" style="border-collapse:collapse;>
				<tr bgColor="#B0C4DE">
					<td colSpan="2" bgColor="#B0C4DE">
						<div align="center">��ӹ�Ӧ����Ϣ</div>
					</td>
				</tr>
				
			<tr><td noWrap width='30' style='WIDTH: 164px'>
				<FONT face='����'>���:</FONT></td><td width='79%'><asp:TextBox ID='bianhao' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatorbianhao" runat="server" ControlToValidate="bianhao" ErrorMessage="����"></asp:RequiredFieldValidator><tr><td noWrap width='30' style='WIDTH: 164px'>
				<FONT face='����'>����:</FONT></td><td width='79%'><asp:TextBox ID='mingcheng' Width='395px' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatormingcheng" runat="server" ControlToValidate="mingcheng" ErrorMessage="����"></asp:RequiredFieldValidator><tr><td noWrap width='30' style='WIDTH: 164px'>
				<FONT face='����'>����:</FONT></td><td width='79%'><asp:DropDownList ID='leixing' runat='server'></asp:DropDownList></td></tr><tr><td noWrap width='30' style='WIDTH: 164px'>
				<FONT face='����'>��Ӫ��Ʒ:</FONT></td><td width='79%'><asp:TextBox ID='zhuyingchanpin' Width='395px' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox></td></tr><tr><td noWrap width='30' style='WIDTH: 164px'>
				<FONT face='����'>�绰:</FONT></td><td width='79%'><asp:TextBox ID='dianhua' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatordianhua" runat="server" ControlToValidate="dianhua" ErrorMessage="����"></asp:RequiredFieldValidator><tr><td noWrap width='30' style='WIDTH: 164px'>
				<FONT face='����'>����:</FONT></td><td width='79%'><asp:TextBox ID='chuanzhen' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox></td></tr><tr><td noWrap width='30' style='WIDTH: 164px'>
				<FONT face='����'>������:</FONT></td><td width='79%'><asp:TextBox ID='fuzeren' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox></td></tr><tr><td noWrap width='30' style='WIDTH: 164px'>
				<FONT face='����'>����:</FONT></td><td width='79%'><asp:TextBox ID='youxiang' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox></td></tr><tr><td noWrap width='30' style='WIDTH: 164px'>
				<FONT face='����'>��ַ:</FONT></td><td width='79%'><asp:TextBox ID='dizhi' Width='395px' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox></td></tr><tr><td noWrap width='30' style='WIDTH: 164px'>
				
				<FONT face='����'>����:</FONT></td><td width='79%'><asp:TextBox ID='mima' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatormima" runat="server" ControlToValidate="mima" ErrorMessage="����"></asp:RequiredFieldValidator></td></tr><tr><td noWrap width='30' style='WIDTH: 164px'>
				<FONT face='����'>��ע:</FONT></td><td width='79%'><asp:TextBox ID='beizhu' Width='400px' Height='100px' TextMode='MultiLine' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox>
				
				
				<tr>
					<td noWrap width="164" height="25" style="WIDTH: 164px">
						<div align="right"><FONT face="����"></FONT>&nbsp;</div>
					</td>
					<td width="59%" height="25">&nbsp;
						<asp:button id="Button1" runat="server" Text="���" onclick="Button1_Click" style='border:solid 1px #000000; color:#666666'></asp:button>
						<FONT face="����">&nbsp;</FONT>
                        <input id="Reset1" type="reset" value="����" style='border:solid 1px #000000; color:#666666' /></td>
				</tr>
				
				<tr bgColor="#B0C4DE">
					<td colSpan="2">&nbsp;</td>
				</tr>
			</table>
			<br>
		</form>
	</body>
</HTML>
