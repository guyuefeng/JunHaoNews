<%@ Page Language="C#" AutoEventWireup="true" CodeFile="c_resume.aspx.cs" Inherits="search_s_resume" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>简历信息查询</title>
    <link  href="../main.css"  rel="stylesheet" type="text/css" />
    <link href="../style.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
// <!CDATA[



// ]]>
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div id="box">
<!--头部开始-->

<!--头部结束-->
<!--搜索开始-->
<div id="Div1">
  <div id="resume_title"><img src="images/icon_triangle.gif" width="5" height="9" /> 简历搜索 </div>
  <div id="resume_text">
    <table width="880" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td style="width: 65px; height: 23px;">
            可科教目：</td>
        <td style="width: 96px; height: 23px;">
            <asp:TextBox ID="TextBox2" runat="server" Width="92px"></asp:TextBox></td>
        <td style="width: 38px; height: 23px;">专业：</td>
        <td style="width: 69px; height: 23px;">
            <asp:TextBox ID="TextBox3" runat="server" Width="88px"></asp:TextBox></td>
        <td style="width: 71px; height: 23px;">
            教员身份：</td>
        <td style="width: 101px; height: 23px;">
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Selected="True">不限</asp:ListItem>
                <asp:ListItem>教师</asp:ListItem>
                <asp:ListItem>大学生</asp:ListItem>
            </asp:DropDownList></td>
        <td style="width: 66px; height: 23px;">
            教员性别：</td>
        <td style="width: 68px; height: 23px;">
            &nbsp;<asp:DropDownList ID="DropDownList2" runat="server" Width="50px">
                <asp:ListItem Value="all">不限</asp:ListItem>
                <asp:ListItem Value="True">男</asp:ListItem>
                <asp:ListItem Value="False">女</asp:ListItem>
            </asp:DropDownList></td>
        <td width="60" style="height: 23px">
            所在校：</td>
        <td width="110" style="height: 23px">
            <asp:TextBox ID="TextBox4" runat="server" Width="112px"></asp:TextBox></td>
        <td style="height: 23px">
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="images/icon_search.gif" OnClick="ImageButton1_Click" /></td>
        </tr>
    </table>
  </div>
</div>

<!--搜索结束-->
<!--教员信息开始-->
<div id="resume_frame">
   <center> <asp:Label ID="Label3" runat="server" Visible="False" BackColor="White" BorderColor="White" Font-Bold="True" Font-Size="Larger" ForeColor="Blue" Height="63px" Width="669px"></asp:Label>
  </center>
      <asp:DataList ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand">
      <HeaderTemplate>
     <table width="890" border="0" align="center" cellpadding="0">
      <tr>
      <td width="40" height="30" style="color: #3300ff"><strong class="nature">教员号</strong></td>
      <td width="90" bgcolor="#F5F5F5"><strong class="nature">教员姓名</strong></td>
      <td width="80" bgcolor="#F5F5F5" class="nature">目前身份</td>
      <td bgcolor="#F5F5F5" width="110"><strong class="nature">所在学校</strong></td>
      <td width="110" bgcolor="#F5F5F5"><strong class="nature">专业</strong></td>
      <td width="140" bgcolor="#F5F5F5"><strong class="nature">可教授课程</strong></td>
      <td width="185" bgcolor="#F5F5F5"><strong class="nature">自我描述</strong></td>
      <td width="85" bgcolor="#F5F5F5"><strong class="nature">登记时间</strong></td>
      <td width="60" bgcolor="#F5F5F5"><strong class="nature">操作</strong></td>
    </tr>
      </HeaderTemplate>
    <ItemTemplate>
     <tr>
      <td height="30" class="line"><a href="../c_resumeshow.aspx?tid=<%#Eval("St_id")%>" style="color: #3300ff"><asp:Label  ForeColor="Blue" Font-Bold="True"  ID="Label1" runat="server"  Text='<%#Eval("St_id").ToString()%>'></asp:Label></a></strong></td>
           <td class="line"><%#Eval("RealName").ToString().Length<1?"暂无数据" :Eval("RealName").ToString().Substring(0,1)+"教员" %>[<%#Eval("Sex").ToString() == "True" ? "男" : "女"%>]</strong></td>
           <td class="line"><%#Eval("shenfen").ToString()%></td>
          <td class="line"><%#Eval("School").ToString().Length>10?Eval("School").ToString().Substring(0,9)+"...":Eval("School").ToString()%></td>
            <td class="line"><%#Eval("Speciality").ToString().Length > 10 ? Eval("Speciality").ToString().Substring(0, 9) + "..." : Eval("Speciality").ToString()%></td>
          <td class="line"><%#Eval("HomeObject").ToString()%></td>
          <td class="line"><%#Eval("DescribeMyself").ToString()%></strong></td>
         <td class="line"><%#((DateTime)Eval("AddTime")).ToString("yyyy-MM-dd")%></td>
            <td class="line">
          <asp:LinkButton ID="LinkButton1" runat="server" CommandName="yuyue">预约</asp:LinkButton>  <asp:LinkButton ID="LinkButton2" runat="server" CommandName="xiangxi">详情</asp:LinkButton></td>
    </tr>
    </ItemTemplate>
    <FooterTemplate>
     </table>
    </FooterTemplate>
      </asp:DataList>
    <center>
    <table style="width: 535px" ><tr>
        
      <td colspan="9" style="width: 333px; height: 30px"><div align="center">
          <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">首页</asp:LinkButton>
          <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">上一页</asp:LinkButton>
          <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">下一页</asp:LinkButton>&nbsp;
          <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click" Width="48px">尾页</asp:LinkButton>
          &nbsp;当前<asp:Label ID="L_pageIndex" runat="server"></asp:Label>页/共<asp:Label ID="L_Pagecount"
              runat="server"></asp:Label>页<asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True"
                  OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
              </asp:DropDownList>
          <asp:Label ID="Label2" runat="server" Text="1" Visible="False"></asp:Label></div></td>
      </tr>
      </table>
</center> 
    <asp:HiddenField ID="HiddenField2" runat="server" />
    <asp:HiddenField ID="HiddenField1" runat="server" Value="0" />
</div>
<!--教员信息结束-->
<!--底部导航开始-->

<!--版权信息结束-->
</div>
    </div>
    </form>
</body>
</html>
