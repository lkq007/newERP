<%@ Page Language="C#" AutoEventWireup="true" CodeFile="kehuxinxi_detail.aspx.cs" Inherits="kehuxinxi_detail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>�ޱ���ҳ</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table align="center" border="1" bordercolordark="#4296e7" bordercolorlight="#4296e7"
            cellpadding="4" cellspacing="0" width="100%">
            <tr bgcolor="#4296e7">
                <td colspan="4">
                    <div align="center">
                        <font color="#ffffff">�ͻ���ϸ��Ϣ</font></div>
                </td>
            </tr>
            <tr>
                <td width='11%'>��ţ�</td><td width='39%'><%=nbianhao%></td><td width='11%'>������</td><td width='39%'><%=nxingming%></td></tr><tr><td width='11%'>���֤��</td><td width='39%'><%=nshenfenzheng%></td><td width='11%'>�Ա�</td><td width='39%'><%=nxingbie%></td></tr><tr><td width='11%'>�绰��</td><td width='39%'><%=ndianhua%></td><td width='11%'>��ַ��</td><td width='39%'><%=ndizhi%></td></tr><tr><td width='11%'>���䣺</td><td width='39%'><%=nyouxiang%></td><td width='11%'>���룺</td><td width='39%'><%=nmima%></td></tr><tr><td width='11%'>��ע��</td><td width='39%'><%=nbeizhu%></td><td>&nbsp;</td><td>&nbsp;</td>
            </tr>
            
            <tr>
                <td height="25" nowrap="nowrap" align="center" colspan="4">&nbsp;<font
                        face="����">&nbsp;<input type=button  value=���� onClick="javascript:history.back()" /></font></td>
            </tr>
            <tr bgcolor="#4296e7">
                <td colspan="4">&nbsp;
                    </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

