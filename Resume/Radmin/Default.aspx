<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Radmin_Default" %>


<!DOCTYPE html PUBliC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�������� |  ��̨����</title>
<link href="/favicon.ico" rel="shortcut icon">
<link media=screen href="../images/style.css" type="text/css" rel="stylesheet">
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
 <script type="text/javascript">
	function logout1(){
	if(!confirm('ȷ��Ҫɾ����')){
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

<!--templater header-->
<div id="main">
<div id="content" style="text-align: center">
<form id="dsfdsfds" runat="server">
    <h2>��ӭ����,����"<asp:Label ID="lblUserName" runat="server" />"���������ӹ������!</h2>

<%--      <iframe name="right" marginwidth=1 marginheight=1 src="welcome.aspx?UserName=<%=UserName %>" frameborder=no  scrolling="no" width="90%" height="50%" ></iframe>--%>
 <img src="../images/welcome.gif" width="400" height="157" />&nbsp;<br />
    <br />
     <asp:Label ID="lblMsg" runat="server" />
    <br />
    <br />
        <asp:GridView ID="gridReaume" runat="server" AutoGenerateColumns="False" CellPadding="4"
            Font-Size="9pt" ForeColor="#333333" GridLines="None">
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <EditRowStyle BackColor="#999999" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
               <EmptyDataTemplate>
                <h3>�� �� �� ��</h3>
            </EmptyDataTemplate>
            <Columns>
                <asp:BoundField DataField="UserID" HeaderText="�û�ID" />
                 <asp:BoundField DataField="UserName" HeaderText="�û�����" />
                 <asp:BoundField DataField="NickName" HeaderText="�û�ʵ��" />
                 <asp:BoundField DataField="Sex" HeaderText="�Ա�" />
                 <asp:TemplateField>
                    <HeaderTemplate>
                        ɾ��
                    </HeaderTemplate>
                    <ItemTemplate>
                        <a href="Default.aspx?UserName1=<%#Eval("UserName") %>" onclick="logout1();">ɾ��</a>
                    </ItemTemplate>
                 </asp:TemplateField>
            </Columns>
        </asp:GridView>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
        </form>
</div>
</div><!--templater footer-->
<div id=footer>
	<p>
		<a href="../privacy.aspx" target=_self>��˽����</A> &copy; <span title="��Ȩ����">2008</span></p>
</div>
</body>
</html>