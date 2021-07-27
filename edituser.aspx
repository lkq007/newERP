<%@ Page Language="C#" AutoEventWireup="true" CodeFile="edituser.aspx.cs" Inherits="edituser" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<script src="js/sweetalert.min.js"></script>
<link rel="stylesheet" type="text/css" href="js/sweetalert.css">
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table border="0" style="width: 100%;margin-top:-1.3%">
            <tr style="width:100%">
                <td align="left" style="height: 17px;width:100%">
                    &nbsp;<table align="center" border="1" bordercolordark="#1E90FF" bordercolorlight="#1E90FF"
                        cellpadding="4" cellspacing="0" style="width: 100%">
                        <tr bgcolor="#B0C4DE">
                            <td colspan="2">
                                <div align="center">
                                    <font color="black">添加用户</font></div>
                            </td>
                        </tr>
                        <tr>
                            <td nowrap="nowrap" style="width: 164px" width="30">
                                <font face="宋体">用户名:</font>
                            </td>
                            <td width="79%">
                                <asp:TextBox ID="username" runat="server" Width="139px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username"
                                    ErrorMessage="请输入用户名"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr style="color: #000000; font-family: 宋体">
                            <td height="25" nowrap="nowrap" style="width: 164px" width="164">
                                <font face="宋体"><span style="font-family: 宋体">密码:</span></font></td>
                            <td height="25" style="font-family: Times New Roman" width="59%">
                                <asp:TextBox ID="pwd1" runat="server" TextMode="Password">0</asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="pwd1"
                                    ErrorMessage="请输入密码"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr style="color: #000000; font-family: Times New Roman">
                            <td nowrap="nowrap" style="width: 164px; height: 25px" width="164">
                                <font face="宋体">确认密码:</font></td>
                            <td style="height: 25px" width="59%">
                                <asp:TextBox ID="pwd2" runat="server" TextMode="Password">0</asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="pwd2"
                                    ErrorMessage="请输入确认密码"></asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pwd1"
                                    ControlToValidate="pwd2" ErrorMessage="两个密码不一致"></asp:CompareValidator><font face="宋体"></font></td>
                        </tr>
                        <tr style="font-family: 宋体">
                            <td height="25" nowrap="nowrap" style="width: 164px" width="164">
                                权限<span style="font-family: 宋体">:</span></td>
                            <td height="25" width="59%">
                                <asp:DropDownList ID="cx" runat="server">
                                </asp:DropDownList></td>
                        </tr>
                        <tr style="font-family: 宋体">
                            <td height="25" nowrap="nowrap" style="width: 164px" width="164">
                                <div align="right">
                                    <font face="宋体"></font>&nbsp;</div>
                            </td>
                            <td height="25" width="59%">
                                &nbsp;
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="添加" /><font
                                    face="宋体">&nbsp;</font>
                                <asp:Button ID="Button2" runat="server" Text="重填" /></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <div align="center">
                                </div>
                            </td>
                        </tr>
                        <tr bgcolor="#B0C4DE">
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td align="center" style="height: 18px">
                </td>
            </tr>
            <tr>
                <td align="left">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                </td>
            </tr>
        </table>
    
    </div>
    </form>
    <script type="text/javascript">
        function ShowMsg(str)
        {
            window.alert = alert;
            function alert(data, callback) { //回调函数
                var alert_bg = document.createElement('div');
                alert_box = document.createElement('div'),
                    alert_text = document.createElement('div'),
                    alert_btn = document.createElement('div'),
                    textNode = document.createTextNode(data ? data : ''),
                    btnText = document.createTextNode('确 定');

                // 控制样式
                css(alert_bg, {
                    'position': 'fixed',
                    'top': '0',
                    'left': '0',
                    'right': '0',
                    'bottom': '0',
                    'background-color': 'rgba(0, 0, 0, 0.1)',
                    'z-index': '999999999'
                });

                css(alert_box, {
                    'width': '270px',
                    'max-width': '90%',
                    'font-size': '16px',
                    'text-align': 'center',
                    'background-color': '#fff',
                    'border-radius': '15px',
                    'position': 'absolute',
                    'top': '50%',
                    'left': '50%',
                    'transform': 'translate(-50%, -50%)'
                });

                css(alert_text, {
                    'padding': '10px 15px',
                    'border-bottom': '1px solid #ddd'
                });

                css(alert_btn, {
                    'padding': '10px 0',
                    'color': '#007aff',
                    'font-weight': '600',
                    'cursor': 'pointer'
                });

                // 内部结构套入
                alert_text.appendChild(textNode);
                alert_btn.appendChild(btnText);
                alert_box.appendChild(alert_text);
                alert_box.appendChild(alert_btn);
                alert_bg.appendChild(alert_box);

                // 整体显示到页面内
                document.getElementsByTagName('body')[0].appendChild(alert_bg);

                // 确定绑定点击事件删除标签
                alert_btn.onclick = function () {
                    alert_bg.parentNode.removeChild(alert_bg);
                    if (typeof callback === 'function') {
                        callback(); //回调
                    }
                }
            }

            function css(targetObj, cssObj) {
                var str = targetObj.getAttribute("style") ? targetObj.getAttribute('style') : '';
                for (var i in cssObj) {
                    str += i + ':' + cssObj[i] + ';';
                }
                targetObj.style.cssText = str;
            }
            alert(str);
        }
    </script>
</body>
</html>
