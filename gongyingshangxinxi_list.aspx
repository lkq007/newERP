<%@ Page Language="C#" AutoEventWireup="true" CodeFile="gongyingshangxinxi_list.aspx.cs" Inherits="gongyingshangxinxi_list" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>�ޱ���ҳ</title><script language="javascript" src="js/Calendar.js"></script><LINK href="images/StyleSheet.css" type=text/css rel=stylesheet>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#1E90FF" style="border-collapse:collapse">
            <tbody>
                <tr class="tr2">
                    <td bgcolor="#B0C4DE" style="padding-left: 5px; height: 25px">���й�Ӧ����Ϣ�б�</td>
                </tr>
                <tr class="tr1">
                    <td style="padding-left: 5px; height: 25px">
                        &nbsp; ��ţ�<asp:TextBox ID=bianhao runat="server" style='border:solid 1px #000000; color:#666666'></asp:TextBox> ���ƣ�<asp:TextBox ID=mingcheng runat="server" style='border:solid 1px #000000; color:#666666'></asp:TextBox> ���ͣ�<asp:DropDownList ID='leixing' runat='server'></asp:DropDownList> �绰��<asp:TextBox ID=dianhua runat="server" style='border:solid 1px #000000; color:#666666'></asp:TextBox> �����ˣ�<asp:TextBox ID=fuzeren runat="server" style='border:solid 1px #000000; color:#666666'></asp:TextBox>
						&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="����" style='border:solid 1px #000000; color:#666666' />
                        <div style="width:100%;margin-top:13px"></div>

                        <asp:DataGrid ID="DataGrid1" runat="server" AllowSorting="True" AutoGenerateColumns="False"
                            BorderColor="Black" CellPadding="2" font-name="verdana" Font-Names="verdana"
                            Font-Size="8pt" HeaderStyle-BackColor="#F8FAFC" PageSize="8" Width="100%" OnPageIndexChanged="DataGrid1_PageIndexChanged" AllowPaging="True">
                            <HeaderStyle BackColor="#F8FAFC" Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                            <PagerStyle Font-Bold="True" Font-Names="����" ForeColor="Blue" HorizontalAlign="Right"
                NextPageText="��һҳ" PrevPageText="��һҳ" />
                            <EditItemStyle BackColor="#E9F0F8" CssClass="input_text" Font-Bold="False" Font-Italic="False"
                                Font-Overline="False" Font-Size="Smaller" Font-Strikeout="False" Font-Underline="False"
                                HorizontalAlign="Left" VerticalAlign="Middle" Wrap="False" />
                            <Columns>
                                <asp:TemplateColumn HeaderText="���">
                                    <HeaderStyle Width="50px" />
                                    <ItemTemplate>
                                    <%#Container.ItemIndex+1 %>
                                </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:BoundColumn DataField=bianhao HeaderText='���'></asp:BoundColumn><asp:BoundColumn DataField=mingcheng HeaderText='����'></asp:BoundColumn><asp:BoundColumn DataField=leixing HeaderText='����'></asp:BoundColumn><asp:BoundColumn DataField=zhuyingchanpin HeaderText='��Ӫ��Ʒ'></asp:BoundColumn><asp:BoundColumn DataField=dianhua HeaderText='�绰'></asp:BoundColumn><asp:BoundColumn DataField=chuanzhen HeaderText='����'></asp:BoundColumn><asp:BoundColumn DataField=fuzeren HeaderText='������'></asp:BoundColumn><asp:BoundColumn DataField=youxiang HeaderText='����'></asp:BoundColumn><asp:BoundColumn DataField=dizhi HeaderText='��ַ'></asp:BoundColumn><asp:BoundColumn DataField=beizhu HeaderText='��ע'></asp:BoundColumn><asp:BoundColumn DataField=mima HeaderText='����'></asp:BoundColumn>
                                
                                <asp:TemplateColumn HeaderText="�޸�">
                               		<ItemTemplate>
                                    	<a href='gongyingshangxinxi_updt.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>'>�޸�</a>
                                	</ItemTemplate>
								<HeaderStyle Width="50px" />
                                </asp:TemplateColumn>
                                <asp:TemplateColumn HeaderText="ɾ��">
                                	<ItemTemplate>
                                    	<a href='delid.aspx?delid=<%#DataBinder.Eval(Container.DataItem, "id") %>&tablename=gongyingshangxinxi&npage=gongyingshangxinxi_list.aspx' onclick="return confirm('ȷ��Ҫɾ����')">ɾ��</a>
                               		</ItemTemplate>
								<HeaderStyle Width="50px" />
                                </asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="��ϸ"><ItemTemplate><a href='gongyingshangxinxi_detail.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>'>��ϸ</a></ItemTemplate><HeaderStyle Width="50px" /></asp:TemplateColumn>
                            </Columns>
                            <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                Font-Underline="False" HorizontalAlign="Center" />
                        </asp:DataGrid></td>
                </tr>
                <tr class="tr1">
                    <td bgcolor="#B0C4DE" style="padding-left: 5px; height: 25px">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                       <a href="#" onclick="javascript:window.print();">��ӡ��ҳ</a></td>
                </tr>
            </tbody>
        </table>
    
    </div>
    </form>
</body>
</html>
