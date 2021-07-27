<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dingdanxinxi_detail.aspx.cs" Inherits="dingdanxinxi_detail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title><LINK href="images/StyleSheet.css" type=text/css rel=stylesheet>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table align="center" border="1" bordercolordark="#9cc7ef" bordercolorlight="#145aa0"
            cellpadding="4" cellspacing="0" width="100%">
            <tr bgcolor="#4296e7">
                <td colspan="4">
                    <div align="center">
                        <font color="#ffffff">订单详细信息</font></div>
                </td>
            </tr>
            <tr>
                <td width='11%'>订单编号：</td><td width='39%'><%=ndingdanbianhao%></td><td width='11%'>订单名称：</td><td width='39%'><%=ndingdanmingcheng%></td></tr><tr><td width='11%'>提交人：</td><td width='39%'><%=ntijiaoren%></td><td width='11%'>需求产品：</td><td width='39%'><%=nxuqiuchanpin%></td></tr><tr><td width='11%'>数量：</td><td width='39%'><%=nshuliang%></td><td width='11%'>交单时限：</td><td width='39%'><%=njiaodanshixian%></td></tr><tr><td width='11%'>订单总额：</td><td width='39%'><%=ndingdanzonge%></td><td width='11%'>备注：</td><td width='39%'><%=nbeizhu%></td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" /></td></tr>
            
            
            
            <tr bgcolor="#4296e7">
                <td colspan="4">&nbsp;
                    </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

