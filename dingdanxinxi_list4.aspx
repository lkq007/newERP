<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dingdanxinxi_list4.aspx.cs" Inherits="dingdanxinxi_list4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
    <script src="js/My97DatePicker/WdatePicker.js" type="text/javascript"></script>
<head id="Head1" runat="server">
    <title>无标题页</title><script language="javascript" src="js/Calendar.js"></script><LINK href="images/StyleSheet.css" type=text/css rel=stylesheet>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#1E90FF" style="border-collapse:collapse">
            <tbody>
                <tr class="tr2">
                    <td bgcolor="#B0C4DE" style="padding-left: 5px; height: 25px">所有订单信息列表</td>
                </tr>
                <tr class="tr1">
                    <td style="padding-left: 5px; height: 25px">
                        &nbsp; 订单编号：<asp:TextBox ID=dingdanbianhao runat="server" style='border:solid 1px #000000; color:#666666'></asp:TextBox> 订单名称：<asp:TextBox ID=dingdanmingcheng runat="server" style='border:solid 1px #000000; color:#666666'></asp:TextBox> 提交人：<asp:TextBox ID=tijiaoren runat="server" style='border:solid 1px #000000; color:#666666'></asp:TextBox> 
                        交单时限：<asp:TextBox ID=jiaodanshixian1 runat="server" onclick="WdatePicker()" need="1" Width="80px" style='border:solid 1px #000000; color:#666666'></asp:TextBox>-<asp:TextBox ID=jiaodanshixian2 runat="server" onclick="WdatePicker()" need="1" Width="80px" style='border:solid 1px #000000; color:#666666'></asp:TextBox>
						&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="查找" style='border:solid 1px #000000; color:#666666' />

                        <div style="width:100%;margin-top:13px"></div>

                        <asp:DataGrid ID="DataGrid1" runat="server" AllowSorting="True" AutoGenerateColumns="False"
                            BorderColor="Black" CellPadding="2" font-name="verdana" Font-Names="verdana"
                            Font-Size="8pt" HeaderStyle-BackColor="#F8FAFC" PageSize="8" Width="100%" OnPageIndexChanged="DataGrid1_PageIndexChanged" AllowPaging="True">
                            <HeaderStyle BackColor="#F8FAFC" Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                            <PagerStyle Font-Bold="True" Font-Names="宋体" ForeColor="Blue" HorizontalAlign="Right"
                NextPageText="下一页" PrevPageText="上一页" />
                            <EditItemStyle BackColor="#E9F0F8" CssClass="input_text" Font-Bold="False" Font-Italic="False"
                                Font-Overline="False" Font-Size="Smaller" Font-Strikeout="False" Font-Underline="False"
                                HorizontalAlign="Left" VerticalAlign="Middle" Wrap="False" />
                            <Columns>
                                <asp:TemplateColumn HeaderText="序号">
                                    <HeaderStyle Width="50px" />
                                    <ItemTemplate>
                                    <%#Container.ItemIndex+1 %>
                                </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:BoundColumn DataField=dingdanbianhao HeaderText='订单编号'></asp:BoundColumn><asp:BoundColumn DataField=dingdanmingcheng HeaderText='订单名称'></asp:BoundColumn><asp:BoundColumn DataField=tijiaoren HeaderText='提交人'></asp:BoundColumn><asp:BoundColumn DataField=xuqiuchanpin HeaderText='需求产品'></asp:BoundColumn><asp:BoundColumn DataField=shuliang HeaderText='数量'></asp:BoundColumn><asp:TemplateColumn HeaderText="交单时限"><ItemTemplate><%# riqigeshi(DataBinder.Eval(Container.DataItem, "jiaodanshixian"))%></ItemTemplate><HeaderStyle Width="100px" /></asp:TemplateColumn><asp:BoundColumn DataField=dingdanzonge HeaderText='订单总额'></asp:BoundColumn><asp:BoundColumn DataField=beizhu HeaderText='备注'></asp:BoundColumn>
                                
                                <asp:TemplateColumn HeaderText="上游完成任务"><ItemTemplate><%#DataBinder.Eval(Container.DataItem, "sywc") %></ItemTemplate><HeaderStyle Width="80px" /></asp:TemplateColumn>
                                <asp:BoundColumn DataField=gongyingshang HeaderText='上游供应商'></asp:BoundColumn><asp:BoundColumn DataField=gongyingshang2 HeaderText='下游供应商'></asp:BoundColumn>
                                <asp:TemplateColumn HeaderText="分配">
                               		<ItemTemplate>
                                    	<a href='dingdanxinxi_updt3.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>'>分配</a>
                                	</ItemTemplate>
								<HeaderStyle Width="50px" />
                                </asp:TemplateColumn>
                                
                                <asp:TemplateColumn HeaderText="删除">
                                	<ItemTemplate>
                                    	<a href='delid.aspx?delid=<%#DataBinder.Eval(Container.DataItem, "id") %>&tablename=dingdanxinxi&npage=dingdanxinxi_list.aspx' onclick="return confirm('确定要删除？')">删除</a>
                               		</ItemTemplate>
								<HeaderStyle Width="50px" />
                                </asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="详细"><ItemTemplate><a href='dingdanxinxi_detail.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>'>详细</a></ItemTemplate><HeaderStyle Width="50px" /></asp:TemplateColumn>
                            </Columns>
                            <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                Font-Underline="False" HorizontalAlign="Center" />
                        </asp:DataGrid></td>
                </tr>
                <tr class="tr1">
                    <td bgcolor="#B0C4DE" style="padding-left: 5px; height: 25px">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                       <a href="#" onclick="javascript:window.print();">打印本页</a></td>
                </tr>
            </tbody>
        </table>
    
    </div>
    </form>
</body>
</html>
