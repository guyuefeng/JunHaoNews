<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ResumeEdit.aspx.cs" Inherits="Radmin_ResumeEdit" %>

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
	<div class="tabs">
	<ul>
	<li class="current"><a>������Ϣ</a></li>
	</ul>
	</div>
	<div id="content">
    <script language="javascript">
var onecount;
onecount=0;
subcat = new Array();
subcat[0]=new Array('��ʯ','��ʯ','����');
subcat[1]=new Array('�˲�','�˲�','����');
subcat[2]=new Array('����','����','�㶫');
subcat[3]=new Array('����','����','�㶫');
subcat[4]=new Array('��ݸ','��ݸ','�㶫');
subcat[5]=new Array('����','����','�㶫');
subcat[6]=new Array('�Ž�','�Ž�','����');
subcat[7]=new Array('�ϲ�','�ϲ�','����');
subcat[8]=new Array('��������','��������','����');
subcat[9]=new Array('����','����','����');
subcat[10]=new Array('Ƽ����','Ƽ����','����');
subcat[11]=new Array('�麣','�麣','�㶫');
subcat[12]=new Array('�人��','�人��','����');
subcat[13]=new Array('������','������','����');
subcat[14]=new Array('����','����','����');
subcat[15]=new Array('������','������','����');
subcat[16]=new Array('����','����','����');
subcat[17]=new Array('������','������','����');
subcat[18]=new Array('����','����','����');
subcat[19]=new Array('�ɶ���','�ɶ���','�Ĵ�');
subcat[20]=new Array('������','������','�Ĵ�');
subcat[21]=new Array('������','������','����');
subcat[22]=new Array('����','����','����');
subcat[23]=new Array('��ɳ��','��ɳ��','����');
subcat[24]=new Array('����','����','����');
subcat[25]=new Array('��̶','��̶','����');
subcat[26]=new Array('����','����','����');
subcat[27]=new Array('����','����','����');
subcat[28]=new Array('������','������','�㽭');
subcat[29]=new Array('����','����','�㽭');
subcat[30]=new Array('����','����','�㽭');
subcat[31]=new Array('����','����','�㽭');
subcat[32]=new Array('�Ͼ���','�Ͼ���','����');
subcat[33]=new Array('���Ƹ�','���Ƹ�','����');
subcat[34]=new Array('����','����','����');
subcat[35]=new Array('��','��','����');
subcat[36]=new Array('֣����','֣����','����');
subcat[37]=new Array('����','����','����');
subcat[38]=new Array('����','����','����');
subcat[39]=new Array('��³ľ����','��³ľ����','�½�������');
subcat[40]=new Array('����������','����������','�½�������');
subcat[41]=new Array('ʯ������','ʯ������','�½�������');
subcat[42]=new Array('��³����','��³����','�½�������');
subcat[43]=new Array('������','������','�½�������');
subcat[44]=new Array('������','������','�½�������');
subcat[45]=new Array('��������','��������','�½�������');
subcat[46]=new Array('��ʲ��','��ʲ��','�½�������');
subcat[47]=new Array('����','����','����');
subcat[48]=new Array('����','����','����');
subcat[49]=new Array('����','����','����');
subcat[50]=new Array('������','������','������');
subcat[51]=new Array('̨����','̨����','̨��');
subcat[52]=new Array('������','������','�Ϻ�');
subcat[53]=new Array('��ͬ��','��ͬ��','̨��');
subcat[54]=new Array('�差��','�差��','����');
subcat[55]=new Array('ʮ����','ʮ����','����');
subcat[56]=new Array('ɳ����','ɳ����','����');
subcat[57]=new Array('������','������','����');
subcat[58]=new Array('������','������','����');
subcat[59]=new Array('������','������','����');
subcat[60]=new Array('�Ϻӿ���','�Ϻӿ���','����');
subcat[61]=new Array('������','������','����');
subcat[62]=new Array('Т����','Т����','����');
subcat[63]=new Array('Ӧ����','Ӧ����','����');
subcat[64]=new Array('��½��','��½��','����');
subcat[65]=new Array('��ˮ��','��ˮ��','����');
subcat[66]=new Array('�����','�����','����');
subcat[67]=new Array('��Ѩ��','��Ѩ��','����');
subcat[68]=new Array('������','������','����');
subcat[69]=new Array('������','������','����');
subcat[70]=new Array('������','������','����');
subcat[71]=new Array('������','������','����');
subcat[72]=new Array('ʯ����','ʯ����','����');
subcat[73]=new Array('������','������','����');
subcat[74]=new Array('�����','�����','����');
subcat[75]=new Array('Ǳ����','Ǳ����','����');
subcat[76]=new Array('����','����','����');
subcat[77]=new Array('֦����','֦����','����');
subcat[78]=new Array('������','������','����');
subcat[79]=new Array('��������','��������','����');
subcat[80]=new Array('����','����','����');
subcat[81]=new Array('��ʩ��','��ʩ��','����');
subcat[82]=new Array('������','������','����');
subcat[83]=new Array('��������������������','��������������������','����');
subcat[84]=new Array('��ͷ��','��ͷ��','�㶫');
subcat[85]=new Array('�ع���','�ع���','�㶫');
subcat[86]=new Array('������','������','����');
subcat[87]=new Array('ӥ̶��','ӥ̶��','����');
subcat[88]=new Array('�˴���','�˴���','����');
subcat[89]=new Array('������','������','����');
subcat[90]=new Array('������','������','����');
subcat[91]=new Array('������','������','����');
subcat[92]=new Array('�߰���','�߰���','����');
subcat[93]=new Array('������','������','����');
subcat[94]=new Array('�Ϸ���','�Ϸ���','����');
subcat[95]=new Array('������','������','����');
subcat[96]=new Array('������','������','����');
subcat[97]=new Array('�ߺ���','�ߺ���','����');
subcat[98]=new Array('ͭ����','ͭ����','����');
subcat[99]=new Array('������','������','����');
subcat[100]=new Array('��ɽ��','��ɽ��','����');
subcat[101]=new Array('������','������','����');
subcat[102]=new Array('��ɽ��','��ɽ��','����');
subcat[103]=new Array('������','������','����');
subcat[104]=new Array('������','������','����');
subcat[105]=new Array('������','������','����');
subcat[106]=new Array('������','������','����');
subcat[107]=new Array('�����','�����','����');
subcat[108]=new Array('������','������','����');
subcat[109]=new Array('������','������','����');
subcat[110]=new Array('������','������','����');
subcat[111]=new Array('������','������','����');
subcat[112]=new Array('������','������','����');
subcat[113]=new Array('������','������','����');
subcat[114]=new Array('������','������','����');
subcat[115]=new Array('������','������','����');
subcat[116]=new Array('ƾ����','ƾ����','����');
subcat[117]=new Array('��ɽ��','��ɽ��','����');
subcat[118]=new Array('������','������','����');
subcat[119]=new Array('�����','�����','����');
subcat[120]=new Array('��ɫ��','��ɫ��','����');
subcat[121]=new Array('�ӳ���','�ӳ���','����');
subcat[122]=new Array('����ˮ��','����ˮ��','����');
subcat[123]=new Array('��ˮ��','��ˮ��','����');
subcat[124]=new Array('ͭ����','ͭ����','����');
subcat[125]=new Array('�½���','�½���','����');
subcat[126]=new Array('�Ͻ�','�Ͻ�','����');
subcat[127]=new Array('��˳��','��˳��','����');
subcat[128]=new Array('������','������','����');
subcat[129]=new Array('������','������','����');
subcat[130]=new Array('������','������','����');
subcat[131]=new Array('����','����','����');
subcat[132]=new Array('������','������','�㽭');
subcat[133]=new Array('����','����','�㽭');
subcat[134]=new Array('��ɽ��','��ɽ��','�㽭');
subcat[135]=new Array('��Ҧ��','��Ҧ��','�㽭');
subcat[136]=new Array('������','������','�㽭');
subcat[137]=new Array('��Ϫ��','��Ϫ��','�㽭');
subcat[138]=new Array('����','����','�㽭');
subcat[139]=new Array('��ɽ��','��ɽ��','�㽭');
subcat[140]=new Array('��ɽ��','��ɽ��','�㽭');
subcat[141]=new Array('����','����','����');
subcat[142]=new Array('������','������','�㽭');
subcat[143]=new Array('������','������','�㽭');
subcat[144]=new Array('��Ϫ��','��Ϫ��','�㽭');
subcat[145]=new Array('���','���','�㽭');
subcat[146]=new Array('������','������','�㽭');
subcat[147]=new Array('������','������','�㽭');
subcat[148]=new Array('�ٺ���','�ٺ���','�㽭');
subcat[149]=new Array('������','������','�㽭');
subcat[150]=new Array('��ˮ��','��ˮ��','�㽭');
subcat[151]=new Array('��Ȫ��','��Ȫ��','�㽭');
subcat[152]=new Array('���','���','����');
subcat[153]=new Array('�괨','�괨','����');
subcat[154]=new Array('����Ͽ','����Ͽ','����');
subcat[155]=new Array('����','����','����');
subcat[156]=new Array('����','����','����');
subcat[157]=new Array('פ���','פ���','����');
subcat[158]=new Array('����','����','����');
subcat[159]=new Array('�ױ�','�ױ�','����');
subcat[160]=new Array('�ܿ�','�ܿ�','����');
subcat[161]=new Array('����','����','����');
subcat[162]=new Array('���','���','����');
subcat[163]=new Array('���','���','����');
subcat[164]=new Array('����','����','����');
subcat[165]=new Array('ƽ��ɽ','ƽ��ɽ','����');
subcat[166]=new Array('��ͼʲ��','��ͼʲ��','�½�������');
subcat[167]=new Array('�������','�������','�½�������');
subcat[168]=new Array('������','������','�½�������');
subcat[169]=new Array('������','������','�½�������');
subcat[170]=new Array('������','������','�½�������');
subcat[171]=new Array('������','������','�½�������');
subcat[172]=new Array('������','������','�½�������');
subcat[173]=new Array('����̩��','����̩��','�½�������');
subcat[174]=new Array('������','������','����������');
subcat[175]=new Array('������','������','����������');
subcat[176]=new Array('������','������','����������');
subcat[177]=new Array('�˶���','�˶���','����������');
subcat[178]=new Array('�տ�����','�տ�����','����������');
subcat[179]=new Array('������','������','����������');
subcat[180]=new Array('��֥','��֥','����������');
subcat[181]=new Array('������','������','����');
subcat[182]=new Array('������','������','����');
subcat[183]=new Array('ͨʲ��','ͨʲ��','����');
subcat[184]=new Array('��ɽ��','��ɽ��','����');
subcat[185]=new Array('�Ĳ���','�Ĳ���','����');
subcat[186]=new Array('����','����','����');
subcat[187]=new Array('������','������','����');
subcat[188]=new Array('������','������','����');
subcat[189]=new Array('�Ͳ���','�Ͳ���','����');
subcat[190]=new Array('������','������','����');
subcat[191]=new Array('�ٸ���','�ٸ���','����');
subcat[192]=new Array('����','����','����');
subcat[193]=new Array('��ɽ��','��ɽ��','̨��');
subcat[194]=new Array('ʿ����','ʿ����','̨��');
subcat[195]=new Array('��ɽ��','��ɽ��','̨��');
subcat[196]=new Array('����','����','̨��');
subcat[197]=new Array('������','������','̨��');
subcat[198]=new Array('������','������','̨��');
subcat[199]=new Array('����','����','̨��');
subcat[200]=new Array('����','����','̨��');
subcat[201]=new Array('̨��','̨��','̨��');
subcat[202]=new Array('���','���','���');
subcat[203]=new Array('����','����','����');
subcat[204]=new Array('��Դ��','��Դ��','�㶫');
subcat[205]=new Array('÷����','÷����','�㶫');
subcat[206]=new Array('������','������','�㶫');
subcat[207]=new Array('��β��','��β��','�㶫');
subcat[208]=new Array('��ɽ��','��ɽ��','�㶫');
subcat[209]=new Array('������','������','�㶫');
subcat[210]=new Array('��ɽ��','��ɽ��','�㶫');
subcat[211]=new Array('������','������','�㶫');
subcat[212]=new Array('տ����','տ����','�㶫');
subcat[213]=new Array('ï����','ï����','�㶫');
subcat[214]=new Array('������','������','�㶫');
subcat[215]=new Array('��Զ��','��Զ��','�㶫');
subcat[216]=new Array('¤��','¤��','����');
subcat[217]=new Array('���','���','����');
subcat[218]=new Array('���ϲ���������','���ϲ���������','����');
subcat[219]=new Array('����','����','����');
subcat[220]=new Array('����','����','����');
subcat[221]=new Array('��ˮ','��ˮ','����');
subcat[222]=new Array('����','����','����');
subcat[223]=new Array('����','����','����');
subcat[224]=new Array('ƽ��','ƽ��','����');
subcat[225]=new Array('������','������','����');
subcat[226]=new Array('��Ҵ','��Ҵ','����');
subcat[227]=new Array('���Ļ���������','���Ļ���������','����');
subcat[228]=new Array('����','����','����');
subcat[229]=new Array('��Ȫ','��Ȫ','����');
subcat[230]=new Array('����','����','�ӱ�');
subcat[231]=new Array('ʯ��ׯ','ʯ��ׯ','�ӱ�');
subcat[232]=new Array('��ˮ','��ˮ','�ӱ�');
subcat[233]=new Array('����','����','�ӱ�');
subcat[234]=new Array('�ػʵ�','�ػʵ�','�ӱ�');
subcat[235]=new Array('�żҿ�','�żҿ�','�ӱ�');
subcat[236]=new Array('��ɽ','��ɽ','�ӱ�');
subcat[237]=new Array('�е�','�е�','�ӱ�');
subcat[238]=new Array('�ȷ�','�ȷ�','�ӱ�');
subcat[239]=new Array('����','����','�ӱ�');
subcat[240]=new Array('��̨','��̨','�ӱ�');
subcat[241]=new Array('��̨��','��̨��','������');
subcat[242]=new Array('ĵ����','ĵ����','������');
subcat[243]=new Array('�׸�','�׸�','������');
subcat[244]=new Array('����','����','������');
subcat[245]=new Array('���˰���','���˰���','������');
subcat[246]=new Array('������','������','������');
subcat[247]=new Array('����','����','������');
subcat[248]=new Array('����','����','������');
subcat[249]=new Array('��ľ˹','��ľ˹','������');
subcat[250]=new Array('˫Ѽɽ','˫Ѽɽ','������');
subcat[251]=new Array('�绯','�绯','������');
subcat[252]=new Array('�������','�������','������');
subcat[253]=new Array('�ں�','�ں�','������');
subcat[254]=new Array('÷�ӿ�','÷�ӿ�','����');
subcat[255]=new Array('��ԭ','��ԭ','����');
subcat[256]=new Array('����','����','����');
subcat[257]=new Array('��ƽ','��ƽ','����');
subcat[258]=new Array('ͨ��','ͨ��','����');
subcat[259]=new Array('��ɽ','��ɽ','����');
subcat[260]=new Array('�ӱ߳�����������','�ӱ߳�����������','����');
subcat[261]=new Array('��Դ','��Դ','����');
subcat[262]=new Array('�׳�','�׳�','����');
subcat[263]=new Array('����','����','����');
subcat[264]=new Array('����','����','����');
subcat[265]=new Array('����','����','����');
subcat[266]=new Array('��ɽ','��ɽ','����');
subcat[267]=new Array('����','����','����');
subcat[268]=new Array('��˳','��˳','����');
subcat[269]=new Array('��«��','��«��','����');
subcat[270]=new Array('����','����','����');
subcat[271]=new Array('����','����','����');
subcat[272]=new Array('����','����','����');
subcat[273]=new Array('Ӫ��','Ӫ��','����');
subcat[274]=new Array('�̽�','�̽�','����');
subcat[275]=new Array('����','����','����');
subcat[276]=new Array('����','����','����');
subcat[277]=new Array('��Ϫ','��Ϫ','����');
subcat[278]=new Array('����','����','����');
subcat[279]=new Array('ͨ��','ͨ��','���ɹ�������');
subcat[280]=new Array('�����첼��','�����첼��','���ɹ�������');
subcat[281]=new Array('���','���','���ɹ�������');
subcat[282]=new Array('���ױ���','���ױ���','���ɹ�������');
subcat[283]=new Array('���ͺ���','���ͺ���','���ɹ�������');
subcat[284]=new Array('��ͷ','��ͷ','���ɹ�������');
subcat[285]=new Array('���ֹ�����','���ֹ�����','���ɹ�������');
subcat[286]=new Array('�ں�','�ں�','���ɹ�������');
subcat[287]=new Array('��������','��������','���ɹ�������');
subcat[288]=new Array('������˹','������˹','���ɹ�������');
subcat[289]=new Array('�����׶���','�����׶���','���ɹ�������');
subcat[290]=new Array('�˰���','�˰���','���ɹ�������');
subcat[291]=new Array('��ԭ','��ԭ','����');
subcat[292]=new Array('����','����','����');
subcat[293]=new Array('ʯ��ɽ','ʯ��ɽ','����');
subcat[294]=new Array('����','����','����');
subcat[295]=new Array('�����ɹ������������','�����ɹ������������','�ຣ');
subcat[296]=new Array('���ϲ���������','���ϲ���������','�ຣ');
subcat[297]=new Array('��������������','��������������','�ຣ');
subcat[298]=new Array('���ϲ���������','���ϲ���������','�ຣ');
subcat[299]=new Array('����','����','�ຣ');
subcat[300]=new Array('��������������','��������������','�ຣ');
subcat[301]=new Array('����','����','�ຣ');
subcat[302]=new Array('���ľ','���ľ','�ຣ');
subcat[303]=new Array('�������������','�������������','�ຣ');
subcat[304]=new Array('����','����','ɽ��');
subcat[305]=new Array('�Ͳ�','�Ͳ�','ɽ��');
subcat[306]=new Array('����','����','ɽ��');
subcat[307]=new Array('����','����','ɽ��');
subcat[308]=new Array('����','����','ɽ��');
subcat[309]=new Array('Ϋ��','Ϋ��','ɽ��');
subcat[310]=new Array('��̨','��̨','ɽ��');
subcat[311]=new Array('����','����','ɽ��');
subcat[312]=new Array('����','����','ɽ��');
subcat[313]=new Array('����','����','ɽ��');
subcat[314]=new Array('̩��','̩��','ɽ��');
subcat[315]=new Array('����','����','ɽ��');
subcat[316]=new Array('��ׯ','��ׯ','ɽ��');
subcat[317]=new Array('����','����','ɽ��');
subcat[318]=new Array('�ൺ','�ൺ','ɽ��');
subcat[319]=new Array('��Ӫ','��Ӫ','ɽ��');
subcat[320]=new Array('�ĳ�','�ĳ�','ɽ��');
subcat[321]=new Array('��ͬ','��ͬ','ɽ��');
subcat[322]=new Array('����','����','ɽ��');
subcat[323]=new Array('����','����','ɽ��');
subcat[324]=new Array('����','����','ɽ��');
subcat[325]=new Array('����','����','ɽ��');
subcat[326]=new Array('̫ԭ','̫ԭ','ɽ��');
subcat[327]=new Array('�ٷ�','�ٷ�','ɽ��');
subcat[328]=new Array('��Ȫ','��Ȫ','ɽ��');
subcat[329]=new Array('˷��','˷��','ɽ��');
subcat[330]=new Array('�˳�','�˳�','ɽ��');
subcat[331]=new Array('����','����','ɽ��');
subcat[332]=new Array('����','����','����');
subcat[333]=new Array('����','����','����');
subcat[334]=new Array('μ��','μ��','����');
subcat[335]=new Array('�Ӱ�','�Ӱ�','����');
subcat[336]=new Array('����','����','����');
subcat[337]=new Array('����','����','����');
subcat[338]=new Array('����','����','����');
subcat[339]=new Array('����','����','����');
subcat[340]=new Array('����','����','����');
subcat[341]=new Array('ͭ��','ͭ��','����');
subcat[342]=new Array('������','������','������');
subcat[343]=new Array('������','������','����');
subcat[344]=new Array('������','������','����');
subcat[345]=new Array('Ȫ����','Ȫ����','����');
subcat[346]=new Array('������','������','����');
subcat[347]=new Array('������','������','����');
subcat[348]=new Array('ʯʨ��','ʯʨ��','����');
subcat[349]=new Array('������','������','����');
subcat[350]=new Array('��ƽ��','��ƽ��','����');
subcat[351]=new Array('������','������','����');
subcat[352]=new Array('����ɽ��','����ɽ��','����');
subcat[353]=new Array('������','������','����');
subcat[354]=new Array('������','������','����');
subcat[355]=new Array('������','������','����');
subcat[356]=new Array('��ƽ��','��ƽ��','����');
subcat[357]=new Array('������','������','����');
subcat[358]=new Array('��ͨ��','��ͨ��','����');
subcat[359]=new Array('������','������','����');
subcat[360]=new Array('��Ϫ��','��Ϫ��','����');
subcat[361]=new Array('˼é','˼é','����');
subcat[362]=new Array('�ٲ�','�ٲ�','����');
subcat[363]=new Array('��ɽ��','��ɽ��','����');
subcat[364]=new Array('������','������','����');
subcat[365]=new Array('��Զ��','��Զ��','����');
subcat[366]=new Array('��˫����','��˫����','����');
subcat[367]=new Array('������','������','����');
subcat[368]=new Array('������','������','����');
subcat[369]=new Array('����','����','����');
subcat[370]=new Array('�º�','�º�','����');
subcat[371]=new Array('ŭ��','ŭ��','����');
subcat[372]=new Array('����','����','����');
subcat[373]=new Array('�Թ���','�Թ���','�Ĵ�');
subcat[374]=new Array('��֦����','��֦����','�Ĵ�');
subcat[375]=new Array('������','������','�Ĵ�');
subcat[376]=new Array('������','������','�Ĵ�');
subcat[377]=new Array('��Ԫ��','��Ԫ��','�Ĵ�');
subcat[378]=new Array('������','������','�Ĵ�');
subcat[379]=new Array('�ڽ���','�ڽ���','�Ĵ�');
subcat[380]=new Array('��ɽ��','��ɽ��','�Ĵ�');
subcat[381]=new Array('�㺺��','�㺺��','�Ĵ�');
subcat[382]=new Array('������','������','�Ĵ�');
subcat[383]=new Array('��������','��������','�Ĵ�');
subcat[384]=new Array('��üɽ��','��üɽ��','�Ĵ�');
subcat[385]=new Array('������','������','�Ĵ�');
subcat[386]=new Array('������','������','�Ĵ�');
subcat[387]=new Array('ǭ��','ǭ��','�Ĵ�');
subcat[388]=new Array('�˱���','�˱���','�Ĵ�');
subcat[389]=new Array('�ϳ���','�ϳ���','�Ĵ�');
subcat[390]=new Array('������','������','�Ĵ�');
subcat[391]=new Array('������','������','�Ĵ�');
subcat[392]=new Array('�Ű���','�Ű���','�Ĵ�');
subcat[393]=new Array('����������','����������','�Ĵ�');
subcat[394]=new Array('����','����','�Ĵ�');
subcat[395]=new Array('������','������','�Ĵ�');
subcat[396]=new Array('��ɽ','��ɽ','�Ĵ�');
subcat[397]=new Array('������','������','����');
subcat[398]=new Array('������','������','����');
subcat[399]=new Array('��ӹ��','��ӹ��','����');
subcat[400]=new Array('������','������','����');
subcat[401]=new Array('������','������','����');
subcat[402]=new Array('������','������','����');
subcat[403]=new Array('������','������','����');
subcat[404]=new Array('������','������','����');
subcat[405]=new Array('��ɽ��','��ɽ��','����');
subcat[406]=new Array('������','������','����');
subcat[407]=new Array('������','������','����');
subcat[408]=new Array('������','������','����');
subcat[409]=new Array('��ˮ̲��','��ˮ̲��','����');
subcat[410]=new Array('¦����','¦����','����');
subcat[411]=new Array('��ˮ����','��ˮ����','����');
subcat[412]=new Array('��Դ��','��Դ��','����');
subcat[413]=new Array('�齭��','�齭��','����');
subcat[414]=new Array('������','������','����');
subcat[415]=new Array('�佭��','�佭��','����');
subcat[416]=new Array('������','������','����');
subcat[417]=new Array('������','������','����');
subcat[418]=new Array('������','������','����');
subcat[419]=new Array('�γ���','�γ���','����');
subcat[420]=new Array('������','������','����');
subcat[421]=new Array('������','������','����');
subcat[422]=new Array('������','������','����');
subcat[423]=new Array('̩����','̩����','����');
subcat[424]=new Array('������','������','����');
subcat[425]=new Array('������','������','����');
subcat[426]=new Array('�żҸ���','�żҸ���','����');
subcat[427]=new Array('������','������','����');
subcat[428]=new Array('��Ǩ��','��Ǩ��','����');
subcat[429]=new Array('������','������','����');
subcat[430]=new Array('��̨��','��̨��','����');
subcat[431]=new Array('�˻���','�˻���','����');
subcat[432]=new Array('������','������','����');
subcat[433]=new Array('������','������','����');
subcat[434]=new Array('��ɽ��','��ɽ��','����');
subcat[435]=new Array('������','������','����');
subcat[436]=new Array('������','������','����');
subcat[437]=new Array('������','������','����');
subcat[438]=new Array('��̨��','��̨��','������');
subcat[439]=new Array('������','������','������');
subcat[440]=new Array('��ͷ����','��ͷ����','������');
subcat[441]=new Array('������','������','������');
subcat[442]=new Array('������','������','������');
subcat[443]=new Array('������','������','������');
subcat[444]=new Array('��ɽ��','��ɽ��','������');
subcat[445]=new Array('ʯ��ɽ��','ʯ��ɽ��','������');
subcat[446]=new Array('��ƽ��','��ƽ��','������');
subcat[447]=new Array('������','������','������');
subcat[448]=new Array('ͨ��','ͨ��','������');
subcat[449]=new Array('������','������','������');
subcat[450]=new Array('˳����','˳����','������');
subcat[451]=new Array('������','������','������');
subcat[452]=new Array('������','������','������');
subcat[453]=new Array('ƽ����','ƽ����','������');
subcat[454]=new Array('��ƽ��','��ƽ��','�����');
subcat[455]=new Array('������','������','�����');
subcat[456]=new Array('������','������','�����');
subcat[457]=new Array('�Ӷ���','�Ӷ���','�����');
subcat[458]=new Array('������','������','�����');
subcat[459]=new Array('������','������','�����');
subcat[460]=new Array('������','������','�����');
subcat[461]=new Array('������','������','�����');
subcat[462]=new Array('�����','�����','�����');
subcat[463]=new Array('�ӱ���','�ӱ���','�����');
subcat[464]=new Array('������','������','�����');
subcat[465]=new Array('�Ͽ���','�Ͽ���','�����');
subcat[466]=new Array('�Ͻ���','�Ͻ���','�����');
subcat[467]=new Array('����','����','�����');
subcat[468]=new Array('������','������','�����');
subcat[469]=new Array('������','������','�����');
subcat[470]=new Array('������','������','�����');
subcat[471]=new Array('������','������','�����');
subcat[472]=new Array('������','������','�Ϻ�');
subcat[473]=new Array('������','������','�Ϻ�');
subcat[474]=new Array('������','������','�Ϻ�');
subcat[475]=new Array('բ����','բ����','�Ϻ�');
subcat[476]=new Array('������','������','�Ϻ�');
subcat[477]=new Array('¬����','¬����','�Ϻ�');
subcat[478]=new Array('������','������','�Ϻ�');
subcat[479]=new Array('��ɽ��','��ɽ��','�Ϻ�');
subcat[480]=new Array('�����','�����','�Ϻ�');
subcat[481]=new Array('�����','�����','�Ϻ�');
subcat[482]=new Array('������','������','�Ϻ�');
subcat[483]=new Array('�Ϻ���','�Ϻ���','�Ϻ�');
subcat[484]=new Array('�ϻ���','�ϻ���','�Ϻ�');
subcat[485]=new Array('������','������','�Ϻ�');
subcat[486]=new Array('�ζ���','�ζ���','�Ϻ�');
subcat[487]=new Array('������(������)','������(������)','�Ϻ�');
subcat[488]=new Array('������','������','�Ϻ�');
subcat[489]=new Array('�ɽ���','�ɽ���','�Ϻ�');
subcat[490]=new Array('��ɳ��','��ɳ��','�Ϻ�');
subcat[491]=new Array('��ɽ��','��ɽ��','�Ϻ�');
subcat[492]=new Array('������','������','������');
subcat[493]=new Array('������','������','������');
subcat[494]=new Array('������','������','������');
subcat[495]=new Array('��ɿ���','��ɿ���','������');
subcat[496]=new Array('������','������','������');
subcat[497]=new Array('ɳƺ����','ɳƺ����','������');
subcat[498]=new Array('��������','��������','������');
subcat[499]=new Array('�ϰ���','�ϰ���','������');
subcat[500]=new Array('������','������','������');
subcat[501]=new Array('��ʢ��','��ʢ��','������');
subcat[502]=new Array('˫����','˫����','������');
subcat[503]=new Array('�山��','�山��','������');
subcat[504]=new Array('������','������','������');
subcat[505]=new Array('ǭ����','ǭ����','������');
subcat[506]=new Array('������','������','������');
subcat[507]=new Array('������','������','������');
subcat[508]=new Array('�ϴ���','�ϴ���','������');
subcat[509]=new Array('������','������','������');
subcat[510]=new Array('�ϴ���','�ϴ���','������');
subcat[511]=new Array('�뽭��','�뽭��','������');
subcat[512]=new Array('������','������','������');
subcat[513]=new Array('ͭ����','ͭ����','������');
subcat[514]=new Array('������','������','������');
subcat[515]=new Array('�ٲ���','�ٲ���','������');
subcat[516]=new Array('�ɽ��','�ɽ��','������');
subcat[517]=new Array('��ƽ��','��ƽ��','������');
subcat[518]=new Array('�ǿ���','�ǿ���','������');
subcat[519]=new Array('�ᶼ��','�ᶼ��','������');
subcat[520]=new Array('�潭��','�潭��','������');
subcat[521]=new Array('��¡��','��¡��','������');
subcat[522]=new Array('����','����','������');
subcat[523]=new Array('����','����','������');
subcat[524]=new Array('������','������','������');
subcat[525]=new Array('�����','�����','������');
subcat[526]=new Array('��ɽ��','��ɽ��','������');
subcat[527]=new Array('��Ϫ��','��Ϫ��','������');
subcat[528]=new Array('ʯ��������','ʯ��������','������');
subcat[529]=new Array('��ɽ������','��ɽ������','������');
subcat[530]=new Array('����������','����������','������');
subcat[531]=new Array('��ˮ������','��ˮ������','������');
onecount=532;
function changelocation(locationid) {
	document.getElementById("city").length = 0;
	if(locationid=="") {
		document.getElementById("city").options[0] = new Option("--��ѡ�����--","");
		return;
	}
	var locationid=locationid;
	var i;
	for (i=0;i < onecount; i++) {
		if (subcat[i][2] == locationid) {
			document.getElementById("city").options[document.getElementById("city").length] = new Option(subcat[i][0],subcat[i][1]);
		}
	}
}
</script>

<form name="regform" method="post" runat="server" onsubmit="" class="nf settings">
<p style="text-align: center">
    <asp:Label ID="lblMsg" runat="server" />
</p>
<p style="display: none;">
    <asp:HiddenField ID="hf_img" runat="server" />
    <asp:HiddenField ID="hf_create" runat="server" />
	<label class="label_input">
        
        *ͷ��</label>
	<img src="../images/0.jpg" alt="С��" id="avatar" width="48" height="48" />
	<asp:TextBox ID="filepath" runat="server" Visible="false" />
	
	<asp:Button ID="btnInsertUserImg" runat="server" class="input_file" Text="�ϴ�ͷ��" OnClick="btnInsertUserImg_Click" />
	<span class="hint">�����ϴ� 100KB ����Ƭ,ͷ���Ǳ����ϴ�.����ע��ʧ��!</span>
</p>
<p style =" display:none ;">
	<label class="label_input">�������</label>
	<asp:TextBox ID="txtResumeCode" runat="server" class="input_text" />
</p>

<p>
	<label class="label_input">ֱʵ����</label>
	<asp:TextBox ID="txtUserName" runat="server" class="input_text" />
</p>
<p>
	<label class="label_input">��Ƭ</label>
    <asp:FileUpload ID="fileModelFile" runat="server" class="input_file"/>
</p>
<p>
	<label class="label_input">�Ա�</label>
    <asp:DropDownList ID="ddlGender" runat="server">
                <asp:ListItem Selected="True">��</asp:ListItem>
                <asp:ListItem>Ů</asp:ListItem>
    </asp:DropDownList>
</p>
<p>
	<label class="label_input">��������</label>
	<asp:TextBox ID="txtBirthAgeMonth" runat="server" class="input_text" Text ="1985-01-01" ></asp:TextBox>
	<img onclick="WdatePicker({el:$dp.$('txtBirthAgeMonth')})" src="../images/My97DatePicker/skin/datePicker.gif"width="16" height="22" align="absmiddle" />
   <span  style =" display:none ;">  OR <asp:TextBox ID="txtAge" runat="server" class="input_text" />��</span>
</p>
<p>
	<label class="label_input">����</label>
	<asp:TextBox ID="txtNativePlace" runat="server" class="input_text" />
</p>
<p>
	<label class="label_input">����״��</label>
    <asp:DropDownList ID="ddlMarital" runat="server">
                <asp:ListItem Selected="True">����</asp:ListItem>
                <asp:ListItem>δ��</asp:ListItem>
                <asp:ListItem>�ѻ�</asp:ListItem>
    </asp:DropDownList>
</p>

<p>
	<label class="label_input">��ҵ</label>
	<asp:TextBox ID="txtJobSpecification" runat="server" class="input_text" />
</p>
<p style =" display:none ;">
	<label class="label_input">Ŀǰ״̬</label>
	<asp:TextBox ID="txtCurrentStatus" runat="server" class="input_text" />
</p>
<p>
	<label class="label_input">ְλ</label>
	<asp:TextBox ID="txt_Position" runat="server" class="input_text" />
</p>
<p>
	<label class="label_input">ѧ��</label>
	<asp:TextBox ID="txtHighestQualification" runat="server" class="input_text" />
</p>
<p>
	<label class="label_input">רҵ</label>
	<asp:TextBox ID="txtspecialty" runat="server"  class="input_text" />
</p>
<p>
    <label class="label_input">��ҵʱ��</label><asp:TextBox ID="txtGraduationDay" runat="server" class="input_text" Text ="2007-07-01"></asp:TextBox>
    <img onclick="WdatePicker({el:$dp.$('txtGraduationDay')})" src="../images/My97DatePicker/skin/datePicker.gif"width="16" height="22" align="absmiddle" />
    
	
</p>
    <p style =" display :none ;"><label class="label_input">��������</label><asp:TextBox ID="txtServiceYear" runat="server" class="input_text" /></p>
<p>
	<label class="label_input">��ϵ�绰</label>
	<asp:TextBox ID="txtTel" runat="server" class="input_text" />
</p>
<p>
	<label class="label_input">��������</label>
	<asp:TextBox ID="txtMailBox" runat="server" class="input_text" />
</p>


<p>
	<label class="label_input">����ص�</label>
    <asp:TextBox ID="txtJobAddress" runat="server" class="input_text" />

</p>
<p style =" display :none ;">
	<label class="label_input">����ʱ��</label>
		<asp:TextBox ID="txtAdsumDateTime" runat="server" class="input_text"></asp:TextBox>
	<img onclick="WdatePicker({el:$dp.$('txtAdsumDateTime')})" src="../images/My97DatePicker/skin/datePicker.gif"width="16" height="22" align="absmiddle" /> 
</p>
<p style =" display :none ;">
	<label class="label_input">������ҵ</label>
	<asp:TextBox ID="txtPromisingIndustry" runat="server" class="input_text" />
</p>
   <h2>������ѵ����</h2>
    <p style="text-align: center">
	  <asp:TextBox ID="txtEducationandTrainingExperience" runat="server" Font-Size="9pt" Height="58px" Width="98%" TextMode="MultiLine" ></asp:TextBox>
</p>
   <h2>��������</h2>
    <p style="text-align: center">
	  <asp:TextBox ID="txtWorkExperience" runat="server" Font-Size="9pt" Height="58px" Width="98%" TextMode="MultiLine" ></asp:TextBox>
</p>
  <h2>רҵ����</h2>
    <p style="text-align: center">
	  <asp:TextBox ID="txtSpecializedSkill" runat="server" Font-Size="9pt" Height="58px" Width="98%" TextMode="MultiLine" ></asp:TextBox>
</p>
<p class="act" style="width: 248px">
	<asp:Button ID="btnAddInsertResume" runat="server" class="formbutton" Text="����" OnClick="btnAddInsertResume_Click" />
</p>
</form>
	</div>
</div><!--templater footer-->
<div id=footer>
		<p>
		<a href="privacy.aspx" target=_self>��˽����</A> &copy; <span title="��Ȩ����">2008</span></p>
</div>
</div><!--templater footer-->
</body>
</html>

