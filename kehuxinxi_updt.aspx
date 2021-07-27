<%@ Page Language="C#" AutoEventWireup="true" CodeFile="kehuxinxi_updt.aspx.cs" Inherits="kehuxinxi_updt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
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
			<table cellSpacing="0" borderColorDark="#9cc7ef" cellPadding="4" width="100%" align="center" border="1">
				<tr bgColor="#B0C4DE">
					<td colSpan="2">
						<div align="center">修改客户信息</div>
					</td>
				</tr>
				<tr><td noWrap width='30' style='WIDTH: 164px'>
					<FONT face='宋体'>编号:</FONT></td><td width='79%'><asp:textbox id='bianhao' runat='server'></asp:textbox>
						*<asp:RequiredFieldValidator ID="RequiredFieldValidatorbianhao" runat="server" ControlToValidate="bianhao" ErrorMessage="必填"></asp:RequiredFieldValidator>
						<tr><td noWrap width='30' style='WIDTH: 164px'>
					<FONT face='宋体'>姓名:</FONT></td><td width='79%'><asp:textbox id='xingming' runat='server'></asp:textbox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatorxingming" runat="server" ControlToValidate="xingming" ErrorMessage="必填"></asp:RequiredFieldValidator><tr><td noWrap width='30' style='WIDTH: 164px'>
					<FONT face='宋体'>身份证:</FONT></td><td width='79%'><asp:textbox id='shenfenzheng' Width='395px' runat='server'></asp:textbox></td></tr><tr><td noWrap width='30' style='WIDTH: 164px'>
					<FONT face='宋体'>性别:</FONT></td><td width='79%'><asp:DropDownList id='xingbie' runat='server'></asp:DropDownList></td></tr><tr><td noWrap width='30' style='WIDTH: 164px'>
					<FONT face='宋体'>电话:</FONT></td><td width='79%'><asp:textbox id='dianhua' runat='server'></asp:textbox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatordianhua" runat="server" ControlToValidate="dianhua" ErrorMessage="必填"></asp:RequiredFieldValidator><tr><td noWrap width='30' style='WIDTH: 164px'>
					<FONT face='宋体'>地址:</FONT></td><td width='79%'><asp:textbox id='dizhi' Width='395px' runat='server'></asp:textbox></td></tr><tr><td noWrap width='30' style='WIDTH: 164px'>
					<FONT face='宋体'>邮箱:</FONT></td><td width='79%'><asp:textbox id='youxiang' runat='server'></asp:textbox></td></tr><tr><td noWrap width='30' style='WIDTH: 164px'>
					<FONT face='宋体'>密码:</FONT></td><td width='79%'><asp:textbox id='mima' runat='server'></asp:textbox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatormima" runat="server" ControlToValidate="mima" ErrorMessage="必填"></asp:RequiredFieldValidator><tr><td noWrap width='30' style='WIDTH: 164px'>
					<FONT face='宋体'>备注:</FONT></td><td width='79%'><asp:textbox id='beizhu' Width='400px' Height='100px' TextMode='MultiLine' runat='server' ></asp:textbox></td></tr>
				<tr>
					<td noWrap width="164" height="25" style="WIDTH: 164px">
						<div align="right"><FONT face="宋体"></FONT>&nbsp;</div>
					</td>
					<td width="59%" height="25">&nbsp;
						<asp:button id="Button1" runat="server" Text="修改" OnClick="Button1_Click"></asp:button><FONT face="宋体">&nbsp;</FONT>
                        <input id="Reset1" type="reset" value="重置" /></td>
				</tr>
				
				<tr bgColor="#B0C4DE">
					<td colSpan="2">&nbsp;</td>
				</tr>
			</table>
			<br>
		</form>
		<script type="text/javascript">            function ShowMsg(str) {                window.alert = alert;                function alert(data, callback) { //回调函数                    var alert_bg = document.createElement('div');                    alert_box = document.createElement('div'),                        alert_text = document.createElement('div'),                        alert_btn = document.createElement('div'),                        textNode = document.createTextNode(data ? data : ''),                        btnText = document.createTextNode('确 定');                    // 控制样式                    css(alert_bg, {                        'position': 'fixed',                        'top': '0',                        'left': '0',                        'right': '0',                        'bottom': '0',                        'background-color': 'rgba(0, 0, 0, 0.1)',                        'z-index': '999999999'                    });                    css(alert_box, {                        'width': '270px',                        'max-width': '90%',                        'font-size': '16px',                        'text-align': 'center',                        'background-color': '#fff',                        'border-radius': '15px',                        'position': 'absolute',                        'top': '50%',                        'left': '50%',                        'transform': 'translate(-50%, -50%)'                    });                    css(alert_text, {                        'padding': '10px 15px',                        'border-bottom': '1px solid #ddd'                    });                    css(alert_btn, {                        'padding': '10px 0',                        'color': '#007aff',                        'font-weight': '600',                        'cursor': 'pointer'                    });                    // 内部结构套入                    alert_text.appendChild(textNode);                    alert_btn.appendChild(btnText);                    alert_box.appendChild(alert_text);                    alert_box.appendChild(alert_btn);                    alert_bg.appendChild(alert_box);                    // 整体显示到页面内                    document.getElementsByTagName('body')[0].appendChild(alert_bg);                    // 确定绑定点击事件删除标签                    alert_btn.onclick = function () {                        alert_bg.parentNode.removeChild(alert_bg);                        if (typeof callback === 'function') {                            callback(); //回调                        }                    }                }                function css(targetObj, cssObj) {                    var str = targetObj.getAttribute("style") ? targetObj.getAttribute('style') : '';                    for (var i in cssObj) {                        str += i + ':' + cssObj[i] + ';';                    }                    targetObj.style.cssText = str;                }                alert(str);            }</script>
	</body>
</HTML>

