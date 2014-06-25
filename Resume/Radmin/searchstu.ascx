<%@ Control Language="C#" AutoEventWireup="true" CodeFile="searchstu.ascx.cs" Inherits="search" %>
<div id="Div1">
  <div id="resume_title"><img src="images/icon_triangle.gif" width="5" height="9" /> 最新学员简历 <span class="nature">在线预约说明：“可预约”是没有最终确定的信息状态，欢迎广大教员在线预约，只要预约，就有可能（恕不接受电话预约）</span></div>
  <div id="resume_text">
    <table width="880" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td style="width: 65px">
            可科教目：</td>
        <td style="width: 96px">
            <asp:TextBox ID="TextBox2" runat="server" Width="92px"></asp:TextBox></td>
        <td style="width: 38px">专业：</td>
        <td style="width: 69px">
            <asp:TextBox ID="TextBox3" runat="server" Width="88px"></asp:TextBox></td>
        <td style="width: 71px">
            教员身份：</td>
        <td style="width: 101px">
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>教师</asp:ListItem>
                <asp:ListItem>大学生</asp:ListItem>
            </asp:DropDownList></td>
        <td style="width: 66px">
            教员性别：</td>
        <td style="width: 68px">
            <asp:DropDownList ID="DropDownList2" runat="server" Width="50px">
                <asp:ListItem Value="男">男</asp:ListItem>
                <asp:ListItem Value="女">女</asp:ListItem>
                <asp:ListItem Value="不限">不限</asp:ListItem>
            </asp:DropDownList></td>
        <td width="60">
            所在校：</td>
        <td width="110">
            <asp:TextBox ID="TextBox4" runat="server" Width="112px"></asp:TextBox></td>
        <td>
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="images/icon_search.gif" OnClick="ImageButton1_Click" /></td>
        </tr>
    </table>
  </div>
</div>