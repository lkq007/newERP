<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dingdanxinxi_add.aspx.cs" Inherits="dingdanxinxi_add" %>
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
		<form id="Form1" method="post" runat="server">
			<br />
			   <table width="98%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
				<tr bgColor="#f1f8f5">
					<td colSpan="2">
						<div align="center">���Ӷ�����Ϣ</div>
					</td>
				</tr>
				
			<tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='����'>�������:</FONT></td><td width='79%'><asp:TextBox ID='dingdanbianhao' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatordingdanbianhao" runat="server" ControlToValidate="dingdanbianhao" ErrorMessage="����"></asp:RequiredFieldValidator><tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='����'>��������:</FONT></td><td width='79%'><asp:TextBox ID='dingdanmingcheng' Width='395px' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatordingdanmingcheng" runat="server" ControlToValidate="dingdanmingcheng" ErrorMessage="����"></asp:RequiredFieldValidator><tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='����'>�ύ��:</FONT></td><td width='79%'><asp:TextBox ID='tijiaoren' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatortijiaoren" runat="server" ControlToValidate="tijiaoren" ErrorMessage="����"></asp:RequiredFieldValidator><tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='����'>�����Ʒ:</FONT></td><td width='79%'><asp:TextBox ID='xuqiuchanpin' Width='395px' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatorxuqiuchanpin" runat="server" ControlToValidate="xuqiuchanpin" ErrorMessage="����"></asp:RequiredFieldValidator><tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='����'>����:</FONT></td><td width='79%'><asp:TextBox ID='shuliang' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatorshuliang" runat="server" ControlToValidate="shuliang" ErrorMessage="����"></asp:RequiredFieldValidator><tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='����'>����ʱ��:</FONT></td><td width='79%'><asp:TextBox ID='jiaodanshixian' runat='server' onclick="getDate(Form1.jiaodanshixian,'2')" need="1" style='border:solid 1px #000000; color:#666666'></asp:TextBox></td></tr><tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='����'>�����ܶ�:</FONT></td><td width='79%'><asp:TextBox ID='dingdanzonge' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatordingdanzonge" runat="server" ControlToValidate="dingdanzonge" ErrorMessage="����"></asp:RequiredFieldValidator><tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='����'>��ע:</FONT></td><td width='79%'><asp:TextBox ID='beizhu' Width='400px' Height='100px' TextMode='MultiLine' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox></td></tr>
				
				
				
				<tr>
					<td noWrap width="164" height="25" style="WIDTH: 164px">
						<div align="right"><FONT face="����"></FONT>&nbsp;</div>
					</td>
					<td width="59%" height="25">&nbsp;
						<asp:button id="Button1" runat="server" Text="����" onclick="Button1_Click" style='border:solid 1px #000000; color:#666666'></asp:button><FONT face="����">&nbsp;</FONT>
                        <input id="Reset1" type="reset" value="����" style='border:solid 1px #000000; color:#666666' /></td>
				</tr>
				
				<tr bgColor="#f1f8f5">
					<td colSpan="2">&nbsp;</td>
				</tr>
			</table>
			<br>
		</form>
	</body>
</HTML>