<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>个人防护产品ERP系统</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #004C97;	
	
}
.STYLE2 {color: #FFFFFF; }
.STYLE3 {color: #FFFFFF; font-size: 12px; }

-->
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <p>&nbsp;</p>
<table width="1024" height="620" border="0" align="center" cellpadding="0" cellspacing="0" background="images/hsgbg.jpg">
  <tr>
    <td height="83" valign="bottom"><p>&nbsp;</p></td>
  </tr>
  <tr>
    <td valign="top"><table width="452" height="334" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td height="114" background="images/hsgbg2.gif">&nbsp;</td>
      </tr>
      <tr>
        <td height="123" background="images/hsgbg2.gif"><table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td height="78"><table width="72%" height="51" border="0" align="center">
              <tr>
                <td><div style="font-family:宋体; color:#FFFFFF; filter:Glow(Color=#000000,Strength=2); WIDTH: 100%; FONT-WEIGHT: bold; FONT-SIZE: 19pt; margin-top:5pt">
                    <div align="center" class="STYLE5">暑假小学期ERP系统</div>
                </div></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="52%"><table width="82%" border="0" align="right" cellpadding="0" cellspacing="0">
                  
                        <tr>
                          <td width="18%" height="30"><div align="center" class="STYLE3"><span class="STYLE2">用户</span></div></td>
                          <td width="50%" height="30">
                              &nbsp;<asp:TextBox ID="TextBox1" runat="server" Style="border-right: #27b3fe 1px solid;
                                  border-top: #27b3fe 1px solid; background: url(Images/login_6.gif) #ffffff repeat-x;
                                  border-left: #27b3fe 1px solid; width: 100px; border-bottom: #27b3fe 1px solid;
                                  height: 20px"></asp:TextBox></td>
                          <td width="32%" rowspan="4"><asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="images/dl.gif" OnClick="ImageButton1_Click" /></td>
                        </tr>
                        <tr>
                          <td height="30"><div align="center" class="STYLE3"><span class="STYLE2">密码</span></div></td>
                          <td height="30">
                              &nbsp;<asp:TextBox ID="TextBox2" runat="server" Style="border-right: #27b3fe 1px solid;
                                  border-top: #27b3fe 1px solid; background: url(Images/login_6.gif) #ffffff repeat-x;
                                  border-left: #27b3fe 1px solid; width: 100px; border-bottom: #27b3fe 1px solid;
                                  height: 20px" TextMode="Password"></asp:TextBox></td>
                          </tr>
                        <tr>
                          <td height="30"><div align="center" class="STYLE3"><span class="STYLE2">权限</span></div></td>
                          <td height="30">
                              &nbsp;<asp:DropDownList ID="cx" runat="server" Style="border-right: #27b3fe 1px solid;
                                  border-top: #27b3fe 1px solid; background: url(Images/login_6.gif) #ffffff repeat-x;
                                  border-left: #27b3fe 1px solid; width: 100px; border-bottom: #27b3fe 1px solid;
                                  height: 20px">
                              </asp:DropDownList></td>
                          </tr>
                        <tr>
                          <td height="30">&nbsp;</td>
                          <td height="30">&nbsp;</td>
                        </tr>
                    
                  </table></td>
                </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>
    </div>
    </form>
</body>
</html>
