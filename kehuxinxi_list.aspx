<%@ Page Language="C#" AutoEventWireup="true" CodeFile="kehuxinxi_list.aspx.cs" Inherits="kehuxinxi_list" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title><script language="javascript" src="js/Calendar.js"></script><LINK href="images/StyleSheet.css" type=text/css rel=stylesheet>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table id="search" align="center" border="1" bordercolor="#1E90FF" cellpadding="0"
            cellspacing="1" class="table_1" width="100%">
            <tbody>
                <tr class="tr2">
                    <td bgcolor="#B0C4DE" style="padding-left: 5px; height: 25px">所有客户信息信息列表</td>
                </tr>
                <tr class="tr1" >
                    <td style="padding-left: 5px; height: 25px;">
                        &nbsp; 编号：<asp:TextBox ID=bianhao runat="server"></asp:TextBox> 姓名：<asp:TextBox ID=xingming runat="server"></asp:TextBox> 身份证：<asp:TextBox ID=shenfenzheng runat="server"></asp:TextBox> 性别：<asp:DropDownList ID='xingbie' runat='server'></asp:DropDownList> 电话：<asp:TextBox ID=dianhua runat="server"></asp:TextBox>
						&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="查找" />
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
                                <asp:BoundColumn DataField=bianhao HeaderText='编号'></asp:BoundColumn><asp:BoundColumn DataField=xingming HeaderText='姓名'></asp:BoundColumn><asp:BoundColumn DataField=shenfenzheng HeaderText='身份证'></asp:BoundColumn>
                                <asp:BoundColumn DataField=xingbie HeaderText='性别'></asp:BoundColumn><asp:BoundColumn DataField=dianhua HeaderText='电话'></asp:BoundColumn><asp:BoundColumn DataField=dizhi HeaderText='地址'></asp:BoundColumn><asp:BoundColumn DataField=youxiang HeaderText='邮箱'></asp:BoundColumn><asp:BoundColumn DataField=mima HeaderText='密码'></asp:BoundColumn><asp:BoundColumn DataField=beizhu HeaderText='备注'></asp:BoundColumn>
                                
                                <asp:TemplateColumn HeaderText="修改">
                               		<ItemTemplate>
                                    	<a href='kehuxinxi_updt.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>'>修改</a>
                                	</ItemTemplate>
								<HeaderStyle Width="50px" />
                                </asp:TemplateColumn>
                                <asp:TemplateColumn HeaderText="删除">
                                	<ItemTemplate>
                                    	<a href='delid.aspx?delid=<%#DataBinder.Eval(Container.DataItem, "id") %>&tablename=kehuxinxi&npage=kehuxinxi_list.aspx' onclick="return confirm('确定要删除？')">删除</a>
                               		</ItemTemplate>
								<HeaderStyle Width="50px" />
                                </asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="详细"><ItemTemplate><a href='kehuxinxi_detail.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>'>详细</a></ItemTemplate><HeaderStyle Width="50px" /></asp:TemplateColumn>
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
