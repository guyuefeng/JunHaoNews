<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reg.aspx.cs" Inherits="reg" %>

<!DOCTYPE html PUBliC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>简历管理 |  注册</title>
<link href="/favicon.ico" rel="shortcut icon">
<link media=screen href="images/style.css" type="text/css" rel="stylesheet">
</head>
<body>
<div id="container" class="wp">
	<div id="header">
	<img src="images/logo.gif" />
	<div id="navigation">
	<ul>
		<li><a href="Default.aspx">首页</a> </li>
	<li><a href="RLogin.aspx">登录</a> </li>
	<li><a href="reg.aspx">注册</a></li>	
	</ul>
	</div>
</div>

<!--templater header-->
<div id="main">
<div id="content">
    <h2><asp:Label ID="lblreg" runat="server" /></h2>
    <form method="post" id="regssss" runat="server" class="vf lf">
    <asp:Panel ID="regPanel" runat="server">
      <p>
		<label class="label_input">您要注册的用户名称</label>
	<%--	<input name="UserName" id="UserName" type="text" maxlength="36" class="input_text format-email" />--%>
	    <asp:TextBox ID="txtUserName" runat="server" maxlength="36" class="input_text format-email" />
		<span class="hint">用来登录说说，未经您允许不会对外公开</span>
	</p>
	<p>
		<label class="label_input">真实姓名</label>
		<input name="name" id="name" type="text" maxlength="12" class="input_text" />
		<span class="hint">不能含有*_等字符，注册后不能修改！</span>
	</p>
	<p>
		<label class="label_input">密码</label>
		<input name="password" id="password" type="password" maxlength="32" class="input_text" value="" />
		<span class="hint">您的密码，最少 6 个字符</span>
	</p>
	<p>
		<label class="label_input">重复密码</label>
		<input name="chkpwd" id="chkpwd" type="password" maxlength="32" class="input_text" value="" />
	</p>
	<p class="act">
		<asp:Button ID="btnRegInsert" runat="server" Text="注册" class="formbutton" OnClick="btnRegInsert_Click" />
	</p>
	</asp:Panel>
	<asp:Panel ID="msgPanel" runat="server">
	    <h2><asp:Label ID="lblMsg" runat="server" /></h2>
	    <br />
	    <h3><a href="reg.aspx">返回继续注册</a></h3>
	</asp:Panel>
    </form>
</div>
</div><!--templater footer-->
<div id="footer">
	<p>
		<a href="privacy.aspx" target=_self>隐私声明</A> &copy; <span title="版权所有">2012</span></p>
</div>
</body>
</html>