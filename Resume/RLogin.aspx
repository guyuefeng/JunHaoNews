<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RLogin.aspx.cs" Inherits="RLogin" %>

<!DOCTYPE html PUBliC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" runat="server">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>简历管理 |  登录</title>
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
    <h2>登录</h2>
    <asp:Label ID="lblErr" runat="server"></asp:Label>
    <form method="post" id="login" runat="server" class="vf lf">
        <p>
            <label class="label_input">你的用户名称</label>
            <input type="text" id="userName" name="userName" class="input_text" onpaste="return false" onslectstart="return false" value="">
        </p>
        <p>
            <label class="label_input">你的用户密码</label>
            <input type="password" name="userPass" class="input_text" onpaste="return false" onselectstart="return false" value="" maxlength="32">
        </p>
        <p>
            <label class="label_check">
            <input type="checkbox" name="cookietm" id="autologin" value="1" />下次自动登录
            </label>
        </p>
        <p class="act">
            <input type="hidden" name="action" value="checklogin">
            <asp:Button ID="btnLogin" runat="server" class="formbutton" OnClick="btnLogin_Click" Text="登陆" />
            或者 <a href="reg.aspx">注册</a>
        </p>
    </form>
</div>
</div><!--templater footer-->
<div id=footer>
	<p>
		<a href="privacy.aspx" target=_self>隐私声明</A> &copy; <span title="版权所有">2008</span></p>
</div>
</body>
</html>