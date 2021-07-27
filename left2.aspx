<%@ Page Language="C#" AutoEventWireup="true" CodeFile="left.aspx.cs" Inherits="left" %>



<SCRIPT LANGUAGE="JavaScript" SRC="js/treemenu.js"></SCRIPT>
<SCRIPT LANGUAGE="JavaScript" SRC="js/Common.js"></SCRIPT>


<link rel="stylesheet" href="css.css" type="text/css"><body>
<SCRIPT LANGUAGE='JavaScript'>
foldersTree = gFldr('<DIV CLASS=fldrroot><b>系统功能列表</b></DIV>','');

Class1 = insFldr(foldersTree, gFldr('<DIV CLASS=fldrroot>个人资料管理</DIV>', ''));
insDoc(Class1, gLnk(1, '<a href=kehuxinxi_updt2.aspx target=main>个人资料管理</a>', '', 'images/bianji.gif'));


Class2 = insFldr(foldersTree, gFldr('<DIV CLASS=fldrroot>订单信息管理</DIV>', ''));
insDoc(Class2, gLnk(1, '<a href=dingdanxinxi_add.aspx target=main>添加订单信息</a>', '', 'images/bianji.gif'));
insDoc(Class2, gLnk(1, '<a href=dingdanxinxi_list2.aspx target=main>管理订单信息</a>', '', 'images/bianji.gif'));

//Class2 = insFldr(foldersTree, gFldr('<DIV CLASS=fldrroot>客户信息管理</DIV>', ''));
//insDoc(Class2, gLnk(1, '<a href=kehuxinxi_add.aspx target=main>添加客户信息</a>', '', 'images/bianji.gif'));
//insDoc(Class2, gLnk(1, '<a href=kehuxinxi_list.aspx target=main>管理客户信息</a>', '', 'images/bianji.gif'));

//Class2 = insFldr(foldersTree, gFldr('<DIV CLASS=fldrroot>入住管理</DIV>', ''));
//insDoc(Class2, gLnk(1, '<a href=fangjianxinxi_list2.aspx target=main>入住登记</a>', '', 'images/bianji.gif'));
//insDoc(Class2, gLnk(1, '<a href=ruzhujilu_list.aspx target=main>入住查询</a>', '', 'images/bianji.gif'));

//Class2 = insFldr(foldersTree, gFldr('<DIV CLASS=fldrroot>报损维修管理</DIV>', ''));
//insDoc(Class2, gLnk(1, '<a href=baosunweixiujilu_add.aspx target=main>报损维修登记</a>', '', 'images/bianji.gif'));
//insDoc(Class2, gLnk(1, '<a href=baosunweixiujilu_list.aspx target=main>报损维修查询</a>', '', 'images/bianji.gif'));

//Class2 = insFldr(foldersTree, gFldr('<DIV CLASS=fldrroot>系统管理</DIV>', ''));
//insDoc(Class2, gLnk(1, '<a href=databack.aspx target=main>数据备份</a>', '', 'images/bianji.gif'));
//insDoc(Class2, gLnk(1, '<a href=youqinglianjie_add.aspx target=main>友情连接添加</a>', '', 'images/bianji.gif'));
//insDoc(Class2, gLnk(1, '<a href=youqinglianjie_list.aspx target=main>友情连接查询</a>', '', 'images/bianji.gif'));
//insDoc(Class2, gLnk(1, '<a href=liuyanban_list.aspx target=main>留言管理</a>', '', 'images/bianji.gif'));
//insDoc(Class2, gLnk(1, '<a href=dx.aspx?lb=系统公告 target=main>系统公告</a>', '', 'images/bianji.gif'));
//insDoc(Class2, gLnk(1, '<a href=dx.aspx?lb=系统简介 target=main>系统简介</a>', '', 'images/bianji.gif'));

//insDoc(foldersTree, gLnk(1, '<a href=mod.aspx target=main>修改密码</a>', '', 'images/pwd.GIF'));
insDoc(foldersTree, gLnk(1, '退出', 'logout.aspx', 'images/exit.gif'));
initializeDocument(0);</SCRIPT>
