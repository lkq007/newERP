<%@ Page Language="C#" AutoEventWireup="true" CodeFile="gongyingshangxinxi_detail.aspx.cs" Inherits="gongyingshangxinxi_detail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title><LINK href="images/StyleSheet.css" type=text/css rel=stylesheet>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table align="center" border="1" bordercolordark="#9cc7ef" bordercolorlight="#145aa0"
            cellpadding="4" cellspacing="0" width="70%">
            <tr bgcolor="#4296e7">
                <td colspan="4">
                    <div align="center">
                        <font color="#ffffff">供应商信息详细</font></div>
                </td>
            </tr>
            <tr>
                <td width='11%'>编号：</td><td width='39%'><%=nbianhao%></td><td width='11%'>名称：</td><td width='39%'><%=nmingcheng%></td></tr><tr><td width='11%'>类型：</td><td width='39%'><%=nleixing%></td><td width='11%'>主营产品：</td><td width='39%'><%=nzhuyingchanpin%></td></tr><tr><td width='11%'>电话：</td><td width='39%'><%=ndianhua%></td><td width='11%'>传真：</td><td width='39%'><%=nchuanzhen%></td></tr><tr><td width='11%'>负责人：</td><td width='39%'><%=nfuzeren%></td><td width='11%'>邮箱：</td><td width='39%'><%=nyouxiang%></td></tr><tr><td width='11%'>地址：</td><td width='39%'><%=ndizhi%></td><td width='11%'>备注：</td><td width='39%'><%=nbeizhu%></td></tr><tr><td width='11%'>密码：</td><td width='39%'><%=nmima%></td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" /></td></tr>
            
            
            
            <tr bgcolor="#4296e7">
                <td colspan="4">&nbsp;
                    </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

