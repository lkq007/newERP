<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dingdanxinxi_list.aspx.cs" Inherits="dingdanxinxi_list" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<script src="js/My97DatePicker/WdatePicker.js" type="text/javascript"></script>
<head id="Head1" runat="server">
    <title>�ޱ���ҳ</title><script language="javascript" src="js/Calendar.js"></script><LINK href="images/StyleSheet.css" type=text/css rel=stylesheet>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#1E90FF" style="border-collapse:collapse">
            <tbody>
                <tr class="tr2">
                    <td bgcolor="#B0C4DE" style="padding-left: 5px; height: 25px">���ж�����Ϣ�б�</td>
                </tr>
                <tr class="tr1">
                    <td style="padding-left: 5px; height: 25px">
                        &nbsp; ������ţ�<asp:TextBox ID=dingdanbianhao runat="server" style='border:solid 1px #000000; color:#666666'></asp:TextBox> �������ƣ�<asp:TextBox ID=dingdanmingcheng runat="server" style='border:solid 1px #000000; color:#666666'></asp:TextBox> �ύ�ˣ�<asp:TextBox ID=tijiaoren runat="server" style='border:solid 1px #000000; color:#666666'></asp:TextBox> 
                        ����ʱ�ޣ�<asp:TextBox ID=jiaodanshixian1 runat="server" onclick="WdatePicker()" need="1" Width="80px" style='border:solid 1px #000000; color:#666666'></asp:TextBox>-<asp:TextBox ID=jiaodanshixian2 runat="server" onclick="WdatePicker()" need="1" Width="80px" style='border:solid 1px #000000; color:#666666'></asp:TextBox>
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
                                <asp:BoundColumn DataField=dingdanbianhao HeaderText='�������'></asp:BoundColumn><asp:BoundColumn DataField=dingdanmingcheng HeaderText='��������'></asp:BoundColumn><asp:BoundColumn DataField=tijiaoren HeaderText='�ύ��'></asp:BoundColumn><asp:BoundColumn DataField=xuqiuchanpin HeaderText='�����Ʒ'></asp:BoundColumn><asp:BoundColumn DataField=shuliang HeaderText='����'></asp:BoundColumn><asp:TemplateColumn HeaderText="����ʱ��"><ItemTemplate><%# riqigeshi(DataBinder.Eval(Container.DataItem, "jiaodanshixian"))%></ItemTemplate><HeaderStyle Width="100px" /></asp:TemplateColumn><asp:BoundColumn DataField=dingdanzonge HeaderText='�����ܶ�'></asp:BoundColumn><asp:BoundColumn DataField=beizhu HeaderText='��ע'></asp:BoundColumn>
                                <asp:BoundColumn DataField=gongyingshang HeaderText='���ι�Ӧ��'></asp:BoundColumn>
                                <asp:TemplateColumn HeaderText="�Ƿ����"><ItemTemplate><a href='sh.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>&yuan=<%#DataBinder.Eval(Container.DataItem, "issh")%>&tablename=dingdanxinxi' onclick="return confirm('ȷ��Ҫ��ˣ�')"><%#DataBinder.Eval(Container.DataItem, "issh") %></a></ItemTemplate><HeaderStyle Width="80px" /></asp:TemplateColumn>
                                <asp:TemplateColumn HeaderText="����">
                               		<ItemTemplate>
                                    	<a href='dingdanxinxi_updt2.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>'>����</a>
                                	</ItemTemplate>
								<HeaderStyle Width="50px" />
                                </asp:TemplateColumn>
                                
                                <asp:TemplateColumn HeaderText="ɾ��">
                                	<ItemTemplate>
                                    	<a href='delid.aspx?delid=<%#DataBinder.Eval(Container.DataItem, "id") %>&tablename=dingdanxinxi&npage=dingdanxinxi_list.aspx' onclick="return confirm('ȷ��Ҫɾ����')">ɾ��</a>
                               		</ItemTemplate>
								<HeaderStyle Width="50px" />
                                </asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="��ϸ"><ItemTemplate><a href='dingdanxinxi_detail.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>'>��ϸ</a></ItemTemplate><HeaderStyle Width="50px" /></asp:TemplateColumn>
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
