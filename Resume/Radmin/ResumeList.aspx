<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ResumeList.aspx.cs" Inherits="Radmin_ResumeList" %>

<!DOCTYPE html PUBliC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html id="Html1" xmlns="http://www.w3.org/1999/xhtml" runat="server">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�������� |  ��¼</title>
<link href="/favicon.ico" rel="shortcut icon">
<link media=screen href="../images/style.css" type="text/css" rel="stylesheet">
<script language="javascript" type="text/javascript" src="../images/My97DatePicker/WdatePicker.js"></script>
 <script type="text/javascript">
	function logout(){
	if(!confirm('ȷ��Ҫ�˳���')){
		window.location.reload();
	}
	else {
		window.parent.location.replace("../RLogin.aspx");
	}
	return true;
	}
</script> 
</head>
<body>
<form id="dsfdsfds" runat="server">

<div id="container" class="wp">
  <div id="header">
	<img src="../images/logo.gif" />
	<div id="navigation">
	<ul>
	    <li><a href="Default.aspx" >��ҳ</a> </li>
	    <li><a href="ResumeEdit.aspx" >��������</a> </li>
	    <li><a href="ResumeList.aspx">��������</a> </li>
	    <li><a href="#" onclick="logout();">�˳�</a></li>	
	</ul>
	</div>
   </div>
   	<div class="tabs">
	<ul>
	<li class="current"><a>��������</a></li>
	</ul>
	</div>
	
<div id="content">

<!--ͷ����ʼ-->

<!--ͷ������-->
<!--������ʼ-->
<div id="Div1">
  <div id="resume_text">
    <table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        
            
        <td style="width: 38px; height: 23px;">רҵ��</td>
        <td style="width: 69px; height: 23px;">
            <asp:TextBox ID="TextBox3" runat="server" Width="65px"></asp:TextBox></td>
        <td style="width: 70px; height: 23px;">���ѧ����</td>
        <td style="width: 65px; height: 23px;">
            <asp:TextBox ID="txt_Edu" runat="server" Width="65px"></asp:TextBox></td>
            
         <td style="width: 60px; height: 23px;">&nbsp;&nbsp;
            �Ա�</td>
        <td style="width: 38px; height: 23px; ">
            <asp:DropDownList ID="DropDownList2" runat="server" Width="50px">
                <asp:ListItem Value="all">����</asp:ListItem>
                <asp:ListItem Value="True">��</asp:ListItem>
                <asp:ListItem Value="False">Ů</asp:ListItem>
            </asp:DropDownList></td>
            
        <td style="width: 70px; height: 23px;">�������ޣ�</td>   
           <td style="width: 60px; height: 23px; ">
            <asp:DropDownList ID="ddl_workyear" runat="server" Width="60px">
                <asp:ListItem Value="all">����</asp:ListItem>
                <asp:ListItem Value="1">һ������</asp:ListItem>
                <asp:ListItem Value="3">��������</asp:ListItem>
                <asp:ListItem Value="5">��������</asp:ListItem>
                <asp:ListItem Value="7">��������</asp:ListItem>
                 <asp:ListItem Value="10">ʮ������</asp:ListItem>
            </asp:DropDownList></td>

        <td width="70" style="height: 23px">
            &nbsp;ģ�����ң�</td>
        <td width="110" style="height: 23px">
            <asp:TextBox ID="txt_Fuzzy" runat="server" Width="112px"></asp:TextBox></td>
        <td style="height: 23px">
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="images/icon_search.gif" OnClick="ImageButton1_Click" /></td>
        </tr>
    </table>
  </div>
</div>

<!--��������-->
<!--��Ա��Ϣ��ʼ-->
<div id="resume_frame">
   <center> <asp:Label ID="Label3" runat="server" Visible="False" BackColor="White" BorderColor="White" Font-Bold="True" Font-Size="Larger" ForeColor="Blue" Height="63px" Width="669px"></asp:Label>
  </center>
      <asp:DataList ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand">
      <HeaderTemplate>
     <table width="770" border="0" align="center" cellpadding="0">
      <tr>
      <td width="60" height="30" style="color: #3300ff"><strong class="nature">���</strong></td>
      <td width="70" bgcolor="#F5F5F5"><strong class="nature">����</strong></td>
      <td width="40" bgcolor="#F5F5F5"><strong class="nature">�Ա�</strong></td>
      <td width="80" bgcolor="#F5F5F5"><strong class="nature">��ҵ</strong></td>
      <td width="150" bgcolor="#F5F5F5"><strong class="nature">ְλ</strong></td>
      <td bgcolor="#F5F5F5" width="00"><strong class="nature">ѧ��</strong></td>
      <td width="85" bgcolor="#F5F5F5"><strong class="nature">רҵ</strong></td>
      <td width="75" bgcolor="#F5F5F5"><strong class="nature">��������</strong></td>
      <td width="75" bgcolor="#F5F5F5"><strong class="nature">¼��ʱ��</strong></td>
      <td width="80" bgcolor="#F5F5F5"><strong class="nature">�ֻ���</strong></td>
      <td width="90" bgcolor="#F5F5F5"><strong class="nature">����</strong></td>
    </tr>
      </HeaderTemplate>
    <ItemTemplate>
     <tr>
      <td height="30" class="line"><a href="ResumeDetail.aspx?Resume_Id=<%#Eval("Resume_Id")%>" style="color: #3300ff"><asp:Label  ForeColor="Blue" Font-Bold="True"  ID="Label1" runat="server"  Text='<%#Eval("Resume_Id").ToString()%>'></asp:Label></a></strong></td>
         <td class="line"><strong><%#Eval("Name").ToString()%></strong></td>
         <td class="line">[<%#Eval("Gender").ToString()%>]</td>
         <td class="line"><%#Eval("ExpectIndustry").ToString()%></td>
         <td class="line"><%#Eval("Position").ToString()%></td>
         <td class="line"><%#Eval("Education").ToString().Length > 10 ? Eval("Education").ToString().Substring(0, 9) + "..." : Eval("Education").ToString()%></td>
         <td class="line"><%#Eval("Industry").ToString()%></td>
         <td class="line"><%#Eval("ExpericeYear").ToString()%>������</td>
         <td class="line"><%#Eval("CreateDate").ToString().Length > 10 ?Convert.ToDateTime(Eval("CreateDate")).ToString("yyyy-MM-dd"):"" %></td>
         <td class="line"><%#Eval("Mphone").ToString()%></td>
         <td class="line">
              <asp:LinkButton ID="LinkButton2" runat="server" CommandName="edit">�޸�</asp:LinkButton>&nbsp;
              <asp:LinkButton ID="LinkButton1" runat="server" CommandName="delete">ɾ��</asp:LinkButton> 
          </td>
    </tr>
    </ItemTemplate>
    <FooterTemplate>
     </table>
    </FooterTemplate>
      </asp:DataList>
    <center>
    <table style="width: 535px" ><tr>
        
      <td colspan="9" style="width: 333px; height: 30px"><div align="center">
          <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">��ҳ</asp:LinkButton>
          <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">��һҳ</asp:LinkButton>
          <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">��һҳ</asp:LinkButton>&nbsp;
          <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click" Width="48px">βҳ</asp:LinkButton>
          &nbsp;��ǰ<asp:Label ID="L_pageIndex" runat="server"></asp:Label>ҳ/��<asp:Label ID="L_Pagecount"
              runat="server"></asp:Label>ҳ<asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True"
                  OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
              </asp:DropDownList>
          <asp:Label ID="Label2" runat="server" Text="1" Visible="False"></asp:Label></div></td>
      </tr>
      </table>
</center> 
    <asp:HiddenField ID="HiddenField2" runat="server" />
    <asp:HiddenField ID="HiddenField1" runat="server" Value="0" />
</div>
<!--��Ա��Ϣ����-->
<!--�ײ�������ʼ-->

<!--��Ȩ��Ϣ����-->
</div>

    </div>


</form>
</body>
</html>

