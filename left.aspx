<%@ Page Language="C#" AutoEventWireup="true" CodeFile="left.aspx.cs" Inherits="left" %>



<SCRIPT LANGUAGE="JavaScript" SRC="js/treemenu.js"></SCRIPT>
<SCRIPT LANGUAGE="JavaScript" SRC="js/Common.js"></SCRIPT>


<link rel="stylesheet" href="css.css" type="text/css"><body>
<SCRIPT LANGUAGE='JavaScript'>
foldersTree = gFldr('<DIV CLASS=fldrroot><b>系统功能列表</b></DIV>','');

Class1 = insFldr(foldersTree, gFldr('<DIV CLASS=fldrroot>用户帐号管理</DIV>', ''));
insDoc(Class1, gLnk(1, '<a href=edituser.aspx target=main>管理员帐号添加</a>', '', 'images/editinfo.gif'));
insDoc(Class1, gLnk(1, '<a href=listuser.aspx target=main>管理员帐号查询</a>', '', 'images/editinfo.gif'));
//insDoc(Class1, gLnk(1, '<a href=yonghuzhuce_list.aspx target=main>注册用户管理</a>', '', 'images/editinfo.gif'));

Class2 = insFldr(foldersTree, gFldr('<DIV CLASS=fldrroot>客户信息管理</DIV>', ''));
insDoc(Class2, gLnk(1, '<a href=kehuxinxi_add.aspx target=main>添加客户信息</a>', '', 'images/editinfo.gif'));
insDoc(Class2, gLnk(1, '<a href=kehuxinxi_list.aspx target=main>管理客户信息</a>', '', 'images/editinfo.gif'));

Class2 = insFldr(foldersTree, gFldr('<DIV CLASS=fldrroot>供应商管理</DIV>', ''));
insDoc(Class2, gLnk(1, '<a href=gongyingshangxinxi_add.aspx target=main>添加供应商</a>', '', 'images/editinfo.gif'));
insDoc(Class2, gLnk(1, '<a href=gongyingshangxinxi_list.aspx target=main>管理供应商</a>', '', 'images/editinfo.gif'));

Class2 = insFldr(foldersTree, gFldr('<DIV CLASS=fldrroot>订单管理</DIV>', ''));
insDoc(Class2, gLnk(1, '<a href=dingdanxinxi_list.aspx target=main>分配上游订单管理</a>', '', 'images/editinfo.gif'));
insDoc(Class2, gLnk(1, '<a href=dingdanxinxi_list4.aspx target=main>分配下游订单管理</a>', '', 'images/editinfo.gif'));
insDoc(Class2, gLnk(1, '<a href=dingdanxinxi_list6.aspx target=main>所有订单总额统计</a>', '', 'images/editinfo.gif'));
Class2 = insFldr(foldersTree, gFldr('<DIV CLASS=fldrroot>仓库材料管理</DIV>', ''));
insDoc(Class2, gLnk(1, '<a href=cailiaoxuqiu_add.aspx target=main>材料需求登记</a>', '', 'images/editinfo.gif'));
insDoc(Class2, gLnk(1, '<a href=cailiaoxuqiu_list.aspx target=main>库存查询</a>', '', 'images/editinfo.gif'));

Class2 = insFldr(foldersTree, gFldr('<DIV CLASS=fldrroot>系统管理</DIV>', ''));
insDoc(Class2, gLnk(1, '<a href=databack.aspx target=main>数据备份</a>', '', 'images/editinfo.gif'));
//insDoc(Class2, gLnk(1, '<a href=youqinglianjie_add.aspx target=main>友情连接添加</a>', '', 'images/editinfo.gif'));
//insDoc(Class2, gLnk(1, '<a href=youqinglianjie_list.aspx target=main>友情连接查询</a>', '', 'images/editinfo.gif'));
//insDoc(Class2, gLnk(1, '<a href=liuyanban_list.aspx target=main>留言管理</a>', '', 'images/editinfo.gif'));
//insDoc(Class2, gLnk(1, '<a href=dx.aspx?lb=系统公告 target=main>系统公告</a>', '', 'images/editinfo.gif'));
//insDoc(Class2, gLnk(1, '<a href=dx.aspx?lb=系统简介 target=main>系统简介</a>', '', 'images/editinfo.gif'));

insDoc(foldersTree, gLnk(1, '<a href=mod.aspx target=main>修改密码</a>', '', 'images/pwd.GIF'));
insDoc(foldersTree, gLnk(1, '退出', 'logout.aspx', 'images/exit.GIF'));
initializeDocument(0);</SCRIPT>
