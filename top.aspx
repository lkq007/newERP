<%@ Page Language="C#" AutoEventWireup="true" CodeFile="top.aspx.cs" Inherits="top" %>


<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    
    <script language="javascript" src="js/qkjs.js"></script>

<style type="text/css">
<!--
.STYLE1 {color: #F8FCFF}
body {margin: 0px 0px 0px 0px;}
.STYLE2 {font-size: 12px}
-->
</style>
</head>
<body topmargin="0">
    <form id="form1" runat="server">
    <div>
        <table width="100%" height="80" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="40" colspan="2"  class="top">
	
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td style="width:900px;  background-image:url(images/top_bg.jpg)"><table width="72%" border="0" align="left">
            <tr>
              <td><div style="font-family:宋体; color:#333333; filter:Glow(Color=#000000,Strength=2); WIDTH: 100%; FONT-WEIGHT: bold; FONT-SIZE: 19pt; margin-top:5pt">
                  <div align="center" class="STYLE5">暑期小学期ERP系统</div>
              </div></td>
            </tr>
          </table></td>          
          <td align="center" valign="middle" bgcolor="#F8FCFF" ><TABLE cellSpacing=0 cellPadding=0 width="92%" border=0>
            <TBODY>
              
              <TR>
                <TD height=29 align="right" style="FONT-SIZE: 12px; COLOR: #333333">当前用户:<%=Session["username"].ToString().Trim()%> [权限：<%=Session["cx"].ToString().Trim()%>]
                  今天：

                  <SCRIPT language=javascript>setCalendar();</SCRIPT></TD>

              </TR>
            </TBODY>
          </TABLE></td>
        </tr>
      </table>    </td>
  </tr>
  <tr>
    <td width="96%" height="34" background="images/nav_bg.jpg">
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="23%" align="left"  style=" width:18%">
            <span class="STYLE2" id="lblRealName"><font color="#FFFFFF">
            <img src="images/idcard.gif" />
            <script language="JavaScript" type="text/javascript">
            var text=""; day = new Date( ); time = day.getHours( ); 
            if (( time>=0) && (time < 8 ))
            text="早上好!"
            if (( time >= 8 ) && (time < 12))
            text="上午好!"
            if (( time >= 12) && (time < 14))
            text="中午好!"
            if (( time >=14) && (time < 18))
            text="下午好!"
            if ((time >= 18) && (time <= 22))
            text="晚上好!"
            if ((time >= 22) && (time < 24))
            text="晚上好!"
            document.write(text)
            </script>
            <%=Session["username"].ToString().Trim()%>，欢迎使用本系统！！！</font></span></td>
            
       
      </tr>
    </table></td>
    <td width="4%" background="images/nav_bg.jpg"><a href="logout.aspx" target="_parent"><span  class="STYLE2"><font color=white>退出</font></span></a></td>
  </tr>
  <tr>
    <td height="2" colspan="2" bgcolor="#f1f1f1"></td>
  </tr>
</table>

    </div>
    </form>
</body>
</html>
