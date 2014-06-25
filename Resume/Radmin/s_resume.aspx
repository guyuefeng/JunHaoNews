<%@ Page Language="C#" AutoEventWireup="true" CodeFile="s_resume.aspx.cs" Inherits="search_s_resume" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>长沙家教网---学员信息查询</title>
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
        &nbsp;<!--头部开始--><!--头部结束--><!--搜索开始-->

<!--搜索结束-->
<!--教员信息开始-->
<div id="resume_frame">
    
  
      <asp:DataList ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand" Width="884px">
      <HeaderTemplate>
     <table width="890" border="0" align="center" cellpadding="0">
      <tr>
      <td width="40" height="30" style="color: #3300ff"><strong class="nature" >学员号</strong></td>
      <td width="90" bgcolor="#F5F5F5"><strong class="nature">年级</strong></td>
      <td width="30" bgcolor="#F5F5F5" class="nature">性别</td>
      <td bgcolor="#F5F5F5" style="width: 80px"><strong class="nature">辅导科目</strong></td>
      <td width="150" bgcolor="#F5F5F5"><strong class="nature">辅导地点</strong></td>
      <td width="215" bgcolor="#F5F5F5"><strong class="nature">教员要求</strong></td>
      <td width="40" bgcolor="#F5F5F5"><strong class="nature">时薪</strong></td>
      <td width="105" bgcolor="#F5F5F5"><strong class="nature">登记时间</strong></td>
      <td width="120" bgcolor="#F5F5F5"><strong class="nature">操作</strong></td>
    </tr>
      </HeaderTemplate>
    <ItemTemplate>
     <tr>
      <td height="30" class="line"><a href="../s_resumeshow.aspx?stu_id=<%#Eval("S_id")%>" style="color: #3300ff"><%#Eval("S_id").ToString()%></a></strong><asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Blue" Text='<%#Eval("S_id")%>' Visible="false"></asp:Label>
  </td>
           <td class="line"><%#Eval("Grade").ToString().Length<1?"暂无数据" :Eval("Grade").ToString() %></strong></td>
           <td class="line"><%#Eval("Sex").ToString()=="True"?"男":"女" %></td>
          <td class="line"><%#Eval("Tutorship").ToString().Length>10?Eval("Tutorship").ToString().Substring(0,9)+"...":Eval("Tutorship").ToString()%></td>
            <td class="line"><%#Eval("TutorshipAddress").ToString().Length > 10 ? Eval("TutorshipAddress").ToString().Substring(0, 9) + "..." : Eval("TutorshipAddress").ToString()%></td>
          <td class="line"><%#Eval("TeacherRequest").ToString().Length > 10 ? Eval("TeacherRequest").ToString().Substring(0, 9) + "..." : Eval("TeacherRequest").ToString()%></td>
          <td class="line"><%#Eval("Price").ToString()%></strong></td>
         <td class="line"><%#((DateTime)Eval("AddTime")).ToString("yyyy-MM-dd")%></td>
            <td class="line">
        <asp:Label ID="bespeak" runat="server" Font-Bold="True" Font-Size="12px" ForeColor="Black" Text='<%#Eval("bespeak").ToString()=="True"?"可预约":"已预约" %>'>'> </asp:Label>
          <asp:LinkButton ID="LinkButton1" runat="server" CommandName="yuyue">现在预约</asp:LinkButton> </td>
    </tr>
    </ItemTemplate>
    <FooterTemplate>
     </table>
    </FooterTemplate>
      </asp:DataList>
    <center>
    <table style="width: 535px" ><tr>
      <td colspan="9" style="width: 622px; height: 30px"><div align="center">
          &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">首页</asp:LinkButton>&nbsp;<a href="#" class="n_link"></a> 
          <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">上一页</asp:LinkButton>
          <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">下一页</asp:LinkButton>&nbsp;
          <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click" Width="48px">尾页</asp:LinkButton><a href="#" class="n_link">
          </a>&nbsp; 当前<asp:Label ID="Lb_PageIndex" runat="server"></asp:Label>页/共<asp:Label ID="Lb_PageCount" runat="server"></asp:Label>页<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
          </asp:DropDownList>&nbsp;
          <asp:Label ID="Label4" runat="server" Text="1" Visible="False"></asp:Label></div></td>
      </tr>
      </table>
        &nbsp;&nbsp;
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
