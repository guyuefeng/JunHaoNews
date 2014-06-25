<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Error.aspx.cs" Inherits="Error" %>

<!DOCTYPE html PUBliC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>简历管理 |  错误页面</title>
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
    <h2>错误</h2>
    <form method="post" id="login" runat="server" class="vf lf">
       <p>
        对不起,您没有权限或者您已经超时!请重新<a href="RLogin.aspx" >登陆</a>
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