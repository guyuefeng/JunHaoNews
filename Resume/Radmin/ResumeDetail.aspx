<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ResumeDetail.aspx.cs" Inherits="Radmin_ResumeDetail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link media=screen href="../images/style.css" type="text/css" rel="stylesheet">
     <script type="text/javascript">
	function logout(){
	if(!confirm('确定要退出吗？')){
		window.location.reload();
	}
	else {
		window.parent.location.replace("../RLogin.aspx");
	}
	return true;
	}
    </script> 
    <style type="text/css">.unnamed1 
{
	font-size: 12px;
	color: #062158;
	text-decoration: none;
	font-family: "宋体";
}

td {
	font-size: 9pt;
	font-family: "宋体";
}

.unnamed7 {
	font-family: "宋体";
	font-size: 14px;
	font-weight: normal;
	color: #000000;
	text-decoration: none;
}

.unnamed3 {
	font-family: "宋体";
	font-size: 12px;
	font-weight: normal;
	color: #FF0000;
	text-decoration: none;
}
.table {
	line-height: 18px;
	text-decoration: none;
	font-family: "宋体";
}

.table2 {
	line-height: 18px;
	text-decoration: none;
	font-family: "宋体";
	font-size: 12px;
	color: #062158;
}
.unnamed4 {
	font-family: "宋体";
	font-size: 12px;
	color: #000000;
	text-decoration: none;
}
.unnamed5 {
	font-family: "宋体";
	font-size: 14px;
	font-weight: normal;
	color: #FF6600;
	text-decoration: none;
}


.title {
	font-family: "宋体";
	font-size: 12px;
	color: #FFFFFF;
	text-decoration: none;
	
}

.dot 
{
	font-family: "宋体";
	font-size: 12px;
	color: #FFFFFF;
	text-decoration: none;
	font-weight: bold;
}
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	font-family: "宋体";
}

.edline { 
    BORDER-RIGHT: medium none; BORDER-TOP: medium none; FONT-SIZE: 12px;
	BORDER-LEFT: medium none; BORDER-BOTTOM: #656B76 1px solid;
	BACKGROUND-COLOR: transparent
	}
.unnamed6 {
	font-family: "宋体";
	font-size: 12px;
	color: #006600;
}
.unnamed7 {
	font-family: "宋体";
	font-size: 14px;
	font-weight: normal;
	color: #000000;
	text-decoration: none;
}

.text1 {
	font-size: 12px;
	color: #FFFFFF;
	text-decoration: underline;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="wp">
      <div id="header">
	<img src="../images/logo.gif" />
	<div id="navigation">
	<ul>
	    <li><a href="Default.aspx" >首页</a> </li>
	    <li><a href="ResumeEdit.aspx" >新增简历</a> </li>
	    <li><a href="ResumeList.aspx">检索简历</a> </li>
	    <li><a href="#" onclick="logout();">退出</a></li>	
	</ul>
	</div>
   </div>
   	<div class="tabs">
	<ul>
	<li class="current"><a>简历详情</a></li>
	</ul>
	</div>
	
    <div id="content">
    <p style="text-align: center">
    <asp:Label ID="lblMsg" runat="server" />
    </p>
    <table width="99%" border="0" cellpadding="2" cellspacing="2" background="images/bg.gif"

										class="table">

										<tr>

											<td height="27" class="unnamed5"><div align="center"><strong> 简历详情</strong></div>

											</td>

										</tr>


										<tr>

											<td><table width="96%" border="1" align="center" cellpadding="4" cellspacing="0" bordercolor="#d2d8e6">

													<tr>

														<td width="14%" bgcolor="#ebeef3"><div align="right"><span class="normal">姓名</span>：</div>

														</td>

														<td width="37%">&nbsp;&nbsp;<asp:Label ID="lbl_Name" runat="server" Text=""></asp:Label></td>

														<TD width="12%" align="right" bgcolor="#ebeef3" class="normal">性别：</TD>

														<td width="37%">&nbsp;&nbsp;<asp:Label ID="lbl_Gender" runat="server" Text=""></asp:Label></td>

													</tr>

													<tr>

														<TD bgcolor="#ebeef3" class="normal">

															<DIV align="right">出生日期：</DIV>

														</TD>

														<td>&nbsp;&nbsp;<asp:Label ID="lbl_Birthday" runat="server" Text=""></asp:Label></td>

														<TD bgcolor="#ebeef3" class="normal">

															<DIV align="right">婚姻状况：</DIV>

														</TD>

														<td>&nbsp;&nbsp;<asp:Label ID="lbl_Marital" runat="server" Text=""></asp:Label></td>

													</tr>

												<tr>

														<td height="19" bgcolor="#ebeef3"><div align="right">籍贯：</div>

														</td>

														<td colspan="3">&nbsp;&nbsp;<asp:Label ID="lbl_Hometown" runat="server" Text=""></asp:Label></td>

													</tr>
													
													<tr>

														<TD bgcolor="#ebeef3" class="normal">

															<DIV align="right">最高学历：</DIV>

														</TD>

														<td>&nbsp;&nbsp;<asp:Label ID="lbl_Education" runat="server" Text=""></asp:Label></td>

														<TD bgcolor="#ebeef3" class="normal">

															<DIV align="right">专业：</DIV>

														</TD>

														<td>&nbsp;&nbsp;<asp:Label ID="lbl_Industry" runat="server" Text=""></asp:Label></td>

													</tr>

													<tr>

														<td bgcolor="#ebeef3"><div align="right">毕业时间：</div>

														</td>

														<td>&nbsp;&nbsp;<asp:Label ID="lbl_GraduationDay" runat="server" Text=""></asp:Label></td>

														<TD bgcolor="#ebeef3" class="normal">

															<DIV align="right">工作年限：</DIV>

														</TD>

														<td>&nbsp;&nbsp;<asp:Label ID="lbl_Experience" runat="server" Text=""></asp:Label></td>

													</tr>
													<tr>

														<td bgcolor="#ebeef3"><div align="right">联系电话：</div>

														</td>

														<td>&nbsp;&nbsp;<asp:Label ID="lbl_MPhone" runat="server" Text=""></asp:Label></td>

														<TD bgcolor="#ebeef3" class="normal">

															<DIV align="right">电子邮箱：</DIV>

														</TD>

														<td>&nbsp;&nbsp;<asp:Label ID="lbl_Mail" runat="server" Text=""></asp:Label></td>

													</tr>
													
													<tr>

														<td bgcolor="#ebeef3"><div align="right">目前状态：</div>

														</td>

														<td>&nbsp;&nbsp;<asp:Label ID="lbl_CurrentStatus" runat="server" Text=""></asp:Label></td>

														<TD bgcolor="#ebeef3" class="normal">

															<DIV align="right">工作性质：</DIV>

														</TD>

														<td>&nbsp;&nbsp;<asp:Label ID="lbl_Nature" runat="server" Text=""></asp:Label></td>

													</tr>
													
													<tr>

														<td bgcolor="#ebeef3"><div align="right">意向地点：</div>

														</td>

														<td>&nbsp;&nbsp;<asp:Label ID="lbl_ExpectLocation" runat="server" Text=""></asp:Label></td>

														<TD bgcolor="#ebeef3" class="normal">

															<DIV align="right">期望行业：</DIV>

														</TD>

														<td>&nbsp;&nbsp;<asp:Label ID="lbl_ExpectIndustry" runat="server" Text=""></asp:Label></td>

													</tr>
													
												  <tr>

														<td height="19" bgcolor="#ebeef3"><div align="right">教育培训经历
：</div>

														</td>

														<td colspan="3">&nbsp;&nbsp;<asp:Label ID="lbl_EduExperice" runat="server" Text=""></asp:Label>
														</td>

													</tr>

	
												   <tr>

														<td height="19" bgcolor="#ebeef3"><div align="right">工作经历

：</div>

														</td>

														<td colspan="3">&nbsp;&nbsp;<asp:Label ID="lbl_WorkExperice" runat="server" Text=""></asp:Label>
														</td>

													</tr>
													
												  <tr>

														<td height="19" bgcolor="#ebeef3"><div align="right">专业技能

：</div>

														</td>

														<td colspan="3">&nbsp;&nbsp;<asp:Label ID="lbl_ProfessionalSkills" runat="server" Text=""></asp:Label>
														</td>

													</tr>
													
											      <tr>

														<td height="19" bgcolor="#ebeef3"><div align="right">图片：</div>

														</td>

														<td colspan="3">&nbsp;&nbsp;
														    <asp:Image ID="Image1" runat="server" />
														</td>

													</tr>
													
													

	

												</table>

											

											</td>

										</tr>
			

										<tr>

											<td><div align="right">［<a href="ResumeList.aspx" class="top">关闭窗口</a>］</div>

											</td>

										</tr>

									</table>
    </div>
    </div>
    </form>
</body>
</html>
