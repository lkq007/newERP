<%@ Page Language="C#" AutoEventWireup="true" CodeFile="gongyingshangxinxi_detail.aspx.cs" Inherits="gongyingshangxinxi_detail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>�ޱ���ҳ</title><LINK href="images/StyleSheet.css" type=text/css rel=stylesheet>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table align="center" border="1" bordercolordark="#9cc7ef" bordercolorlight="#145aa0"
            cellpadding="4" cellspacing="0" width="100%">
            <tr bgcolor="#4296e7">
                <td colspan="4">
                    <div align="center">
                        <font color="#ffffff">��Ӧ����ϸ��Ϣ</font></div>
                </td>
            </tr>
            <tr>
                <td width='11%'>��ţ�</td><td width='39%'><%=nbianhao%></td><td width='11%'>���ƣ�</td><td width='39%'><%=nmingcheng%></td></tr><tr><td width='11%'>���ͣ�</td><td width='39%'><%=nleixing%></td><td width='11%'>��Ӫ��Ʒ��</td><td width='39%'><%=nzhuyingchanpin%></td></tr><tr><td width='11%'>�绰��</td><td width='39%'><%=ndianhua%></td><td width='11%'>���棺</td><td width='39%'><%=nchuanzhen%></td></tr><tr><td width='11%'>�����ˣ�</td><td width='39%'><%=nfuzeren%></td><td width='11%'>���䣺</td><td width='39%'><%=nyouxiang%></td></tr><tr><td width='11%'>��ַ��</td><td width='39%'><%=ndizhi%></td><td width='11%'>��ע��</td><td width='39%'><%=nbeizhu%></td></tr><tr><td width='11%'>���룺</td><td width='39%'><%=nmima%></td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=���� onClick="javascript:history.back()" /></td></tr>
            
            
            
            <tr bgcolor="#4296e7">
                <td colspan="4">&nbsp;
                    </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

