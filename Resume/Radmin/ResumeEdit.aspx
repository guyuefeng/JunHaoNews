<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ResumeEdit.aspx.cs" Inherits="Radmin_ResumeEdit" %>

<!DOCTYPE html PUBliC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html id="Html1" xmlns="http://www.w3.org/1999/xhtml" runat="server">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>简历管理 |  登录</title>
<link href="/favicon.ico" rel="shortcut icon">
<link media=screen href="../images/style.css" type="text/css" rel="stylesheet">
<script language="javascript" type="text/javascript" src="../images/My97DatePicker/WdatePicker.js"></script>
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
</head>
<body>
<div id="container" class="wp">
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

<!--templater header-->
<div id="main">
	<div class="tabs">
	<ul>
	<li class="current"><a>基本信息</a></li>
	</ul>
	</div>
	<div id="content">
    <script language="javascript">
var onecount;
onecount=0;
subcat = new Array();
subcat[0]=new Array('黄石','黄石','湖北');
subcat[1]=new Array('宜昌','宜昌','湖北');
subcat[2]=new Array('深圳','深圳','广东');
subcat[3]=new Array('广州','广州','广东');
subcat[4]=new Array('东莞','东莞','广东');
subcat[5]=new Array('惠州','惠州','广东');
subcat[6]=new Array('九江','九江','江西');
subcat[7]=new Array('南昌','南昌','江西');
subcat[8]=new Array('景德镇市','景德镇市','江西');
subcat[9]=new Array('上饶','上饶','江西');
subcat[10]=new Array('萍乡市','萍乡市','江西');
subcat[11]=new Array('珠海','珠海','广东');
subcat[12]=new Array('武汉市','武汉市','湖北');
subcat[13]=new Array('福州市','福州市','福建');
subcat[14]=new Array('厦门','厦门','福建');
subcat[15]=new Array('南宁市','南宁市','广西');
subcat[16]=new Array('桂林','桂林','广西');
subcat[17]=new Array('昆明市','昆明市','云南');
subcat[18]=new Array('丽江','丽江','云南');
subcat[19]=new Array('成都市','成都市','四川');
subcat[20]=new Array('绵羊市','绵羊市','四川');
subcat[21]=new Array('贵阳市','贵阳市','贵州');
subcat[22]=new Array('遵义','遵义','贵州');
subcat[23]=new Array('长沙市','长沙市','湖南');
subcat[24]=new Array('株洲','株洲','湖南');
subcat[25]=new Array('湘潭','湘潭','湖南');
subcat[26]=new Array('衡阳','衡阳','湖南');
subcat[27]=new Array('怀化','怀化','湖南');
subcat[28]=new Array('杭州市','杭州市','浙江');
subcat[29]=new Array('宁波','宁波','浙江');
subcat[30]=new Array('温州','温州','浙江');
subcat[31]=new Array('绍兴','绍兴','浙江');
subcat[32]=new Array('南京市','南京市','江苏');
subcat[33]=new Array('连云港','连云港','江苏');
subcat[34]=new Array('常州','常州','江苏');
subcat[35]=new Array('镇江','镇江','江苏');
subcat[36]=new Array('郑州市','郑州市','河南');
subcat[37]=new Array('开封','开封','河南');
subcat[38]=new Array('信阳','信阳','河南');
subcat[39]=new Array('乌鲁木齐市','乌鲁木齐市','新疆自治区');
subcat[40]=new Array('克拉玛依市','克拉玛依市','新疆自治区');
subcat[41]=new Array('石河子市','石河子市','新疆自治区');
subcat[42]=new Array('吐鲁番市','吐鲁番市','新疆自治区');
subcat[43]=new Array('哈密市','哈密市','新疆自治区');
subcat[44]=new Array('和田市','和田市','新疆自治区');
subcat[45]=new Array('阿克苏市','阿克苏市','新疆自治区');
subcat[46]=new Array('咯什市','咯什市','新疆自治区');
subcat[47]=new Array('海口','海口','海南');
subcat[48]=new Array('琼洲','琼洲','海南');
subcat[49]=new Array('三亚','三亚','海南');
subcat[50]=new Array('东城区','东城区','北京市');
subcat[51]=new Array('台北市','台北市','台湾');
subcat[52]=new Array('黄埔区','黄埔区','上海');
subcat[53]=new Array('大同区','大同区','台湾');
subcat[54]=new Array('襄樊市','襄樊市','湖北');
subcat[55]=new Array('十堰市','十堰市','湖北');
subcat[56]=new Array('沙市市','沙市市','湖北');
subcat[57]=new Array('荆门市','荆门市','湖北');
subcat[58]=new Array('鄂州市','鄂州市','湖北');
subcat[59]=new Array('随州市','随州市','湖北');
subcat[60]=new Array('老河口市','老河口市','湖北');
subcat[61]=new Array('枣阳市','枣阳市','湖北');
subcat[62]=new Array('孝感市','孝感市','湖北');
subcat[63]=new Array('应城市','应城市','湖北');
subcat[64]=new Array('安陆市','安陆市','湖北');
subcat[65]=new Array('广水市','广水市','湖北');
subcat[66]=new Array('麻城市','麻城市','湖北');
subcat[67]=new Array('武穴市','武穴市','湖北');
subcat[68]=new Array('黄州市','黄州市','湖北');
subcat[69]=new Array('咸宁市','咸宁市','湖北');
subcat[70]=new Array('蒲圻市','蒲圻市','湖北');
subcat[71]=new Array('仙桃市','仙桃市','湖北');
subcat[72]=new Array('石首市','石首市','湖北');
subcat[73]=new Array('天门市','天门市','湖北');
subcat[74]=new Array('洪湖市','洪湖市','湖北');
subcat[75]=new Array('潜江市','潜江市','湖北');
subcat[76]=new Array('荆州','荆州','湖北');
subcat[77]=new Array('枝城市','枝城市','湖北');
subcat[78]=new Array('当阳市','当阳市','湖北');
subcat[79]=new Array('丹江口市','丹江口市','湖北');
subcat[80]=new Array('郧阳','郧阳','湖北');
subcat[81]=new Array('恩施市','恩施市','湖北');
subcat[82]=new Array('利川市','利川市','湖北');
subcat[83]=new Array('鄂西土家族苗族自治州','鄂西土家族苗族自治州','湖北');
subcat[84]=new Array('汕头市','汕头市','广东');
subcat[85]=new Array('韶关市','韶关市','广东');
subcat[86]=new Array('新余市','新余市','江西');
subcat[87]=new Array('鹰潭市','鹰潭市','江西');
subcat[88]=new Array('宜春市','宜春市','江西');
subcat[89]=new Array('抚州市','抚州市','江西');
subcat[90]=new Array('吉安市','吉安市','江西');
subcat[91]=new Array('赣州市','赣州市','江西');
subcat[92]=new Array('高安市','高安市','江西');
subcat[93]=new Array('樟树市','樟树市','江西');
subcat[94]=new Array('合肥市','合肥市','安徽');
subcat[95]=new Array('淮南市','淮南市','安徽');
subcat[96]=new Array('淮北市','淮北市','安徽');
subcat[97]=new Array('芜湖市','芜湖市','安徽');
subcat[98]=new Array('铜陵市','铜陵市','安徽');
subcat[99]=new Array('蚌埠市','蚌埠市','安徽');
subcat[100]=new Array('马鞍山市','马鞍山市','安徽');
subcat[101]=new Array('安庆市','安庆市','安徽');
subcat[102]=new Array('黄山市','黄山市','安徽');
subcat[103]=new Array('宿州市','宿州市','安徽');
subcat[104]=new Array('滁州市','滁州市','安徽');
subcat[105]=new Array('巢湖市','巢湖市','安徽');
subcat[106]=new Array('宣州市','宣州市','安徽');
subcat[107]=new Array('贵池市','贵池市','安徽');
subcat[108]=new Array('东至市','东至市','安徽');
subcat[109]=new Array('六安市','六安市','安徽');
subcat[110]=new Array('阜阳市','阜阳市','安徽');
subcat[111]=new Array('毫州市','毫州市','安徽');
subcat[112]=new Array('界首市','界首市','安徽');
subcat[113]=new Array('柳州市','柳州市','广西');
subcat[114]=new Array('梧州市','梧州市','广西');
subcat[115]=new Array('北海市','北海市','广西');
subcat[116]=new Array('凭祥市','凭祥市','广西');
subcat[117]=new Array('合山市','合山市','广西');
subcat[118]=new Array('玉林市','玉林市','广西');
subcat[119]=new Array('贵港市','贵港市','广西');
subcat[120]=new Array('百色市','百色市','广西');
subcat[121]=new Array('河池市','河池市','广西');
subcat[122]=new Array('六盘水市','六盘水市','贵州');
subcat[123]=new Array('赤水市','赤水市','贵州');
subcat[124]=new Array('铜仁市','铜仁市','贵州');
subcat[125]=new Array('德江市','德江市','贵州');
subcat[126]=new Array('毕节','毕节','贵州');
subcat[127]=new Array('安顺市','安顺市','贵州');
subcat[128]=new Array('兴义市','兴义市','贵州');
subcat[129]=new Array('凯里市','凯里市','贵州');
subcat[130]=new Array('都匀市','都匀市','贵州');
subcat[131]=new Array('贵定市','贵定市','贵州');
subcat[132]=new Array('嘉兴市','嘉兴市','浙江');
subcat[133]=new Array('金华市','金华市','浙江');
subcat[134]=new Array('舟山市','舟山市','浙江');
subcat[135]=new Array('余姚市','余姚市','浙江');
subcat[136]=new Array('海宁市','海宁市','浙江');
subcat[137]=new Array('兰溪市','兰溪市','浙江');
subcat[138]=new Array('瑞安市','瑞安市','浙江');
subcat[139]=new Array('萧山市','萧山市','浙江');
subcat[140]=new Array('江山市','江山市','浙江');
subcat[141]=new Array('洛阳','洛阳','河南');
subcat[142]=new Array('东阳市','东阳市','浙江');
subcat[143]=new Array('义乌市','义乌市','浙江');
subcat[144]=new Array('慈溪市','慈溪市','浙江');
subcat[145]=new Array('奉化市','奉化市','浙江');
subcat[146]=new Array('诸暨市','诸暨市','浙江');
subcat[147]=new Array('椒江市','椒江市','浙江');
subcat[148]=new Array('临海市','临海市','浙江');
subcat[149]=new Array('黄岩市','黄岩市','浙江');
subcat[150]=new Array('丽水市','丽水市','浙江');
subcat[151]=new Array('龙泉市','龙泉市','浙江');
subcat[152]=new Array('许昌','许昌','河南');
subcat[153]=new Array('潢川','潢川','河南');
subcat[154]=new Array('三门峡','三门峡','河南');
subcat[155]=new Array('商丘','商丘','河南');
subcat[156]=new Array('安阳','安阳','河南');
subcat[157]=new Array('驻马店','驻马店','河南');
subcat[158]=new Array('焦作','焦作','河南');
subcat[159]=new Array('鹤壁','鹤壁','河南');
subcat[160]=new Array('周口','周口','河南');
subcat[161]=new Array('南阳','南阳','河南');
subcat[162]=new Array('濮阳','濮阳','河南');
subcat[163]=new Array('漯河','漯河','河南');
subcat[164]=new Array('新乡','新乡','河南');
subcat[165]=new Array('平顶山','平顶山','河南');
subcat[166]=new Array('阿图什市','阿图什市','新疆自治区');
subcat[167]=new Array('库尔勒市','库尔勒市','新疆自治区');
subcat[168]=new Array('昌吉市','昌吉市','新疆自治区');
subcat[169]=new Array('博乐市','博乐市','新疆自治区');
subcat[170]=new Array('奎屯市','奎屯市','新疆自治区');
subcat[171]=new Array('伊宁市','伊宁市','新疆自治区');
subcat[172]=new Array('塔城市','塔城市','新疆自治区');
subcat[173]=new Array('阿勒泰市','阿勒泰市','新疆自治区');
subcat[174]=new Array('拉萨市','拉萨市','西藏自治区');
subcat[175]=new Array('那曲区','那曲区','西藏自治区');
subcat[176]=new Array('昌都县','昌都县','西藏自治区');
subcat[177]=new Array('乃东县','乃东县','西藏自治区');
subcat[178]=new Array('日喀则市','日喀则市','西藏自治区');
subcat[179]=new Array('噶尔县','噶尔县','西藏自治区');
subcat[180]=new Array('林芝','林芝','西藏自治区');
subcat[181]=new Array('海口市','海口市','海南');
subcat[182]=new Array('三亚市','三亚市','海南');
subcat[183]=new Array('通什市','通什市','海南');
subcat[184]=new Array('琼山县','琼山县','海南');
subcat[185]=new Array('文昌县','文昌县','海南');
subcat[186]=new Array('琼海县','琼海县','海南');
subcat[187]=new Array('万宁县','万宁县','海南');
subcat[188]=new Array('定安县','定安县','海南');
subcat[189]=new Array('屯昌县','屯昌县','海南');
subcat[190]=new Array('澄迈县','澄迈县','海南');
subcat[191]=new Array('临高县','临高县','海南');
subcat[192]=new Array('儋县','儋县','海南');
subcat[193]=new Array('中山区','中山区','台湾');
subcat[194]=new Array('士林区','士林区','台湾');
subcat[195]=new Array('松山区','松山区','台湾');
subcat[196]=new Array('万华区','万华区','台湾');
subcat[197]=new Array('信义区','信义区','台湾');
subcat[198]=new Array('中正区','中正区','台湾');
subcat[199]=new Array('大安区','大安区','台湾');
subcat[200]=new Array('高雄','高雄','台湾');
subcat[201]=new Array('台南','台南','台湾');
subcat[202]=new Array('香港','香港','香港');
subcat[203]=new Array('澳门','澳门','澳门');
subcat[204]=new Array('河源市','河源市','广东');
subcat[205]=new Array('梅州市','梅州市','广东');
subcat[206]=new Array('惠州市','惠州市','广东');
subcat[207]=new Array('汕尾市','汕尾市','广东');
subcat[208]=new Array('中山市','中山市','广东');
subcat[209]=new Array('江门市','江门市','广东');
subcat[210]=new Array('佛山市','佛山市','广东');
subcat[211]=new Array('阳江市','阳江市','广东');
subcat[212]=new Array('湛江市','湛江市','广东');
subcat[213]=new Array('茂名市','茂名市','广东');
subcat[214]=new Array('肇庆市','肇庆市','广东');
subcat[215]=new Array('清远市','清远市','广东');
subcat[216]=new Array('陇南','陇南','甘肃');
subcat[217]=new Array('金昌','金昌','甘肃');
subcat[218]=new Array('甘南藏族自治州','甘南藏族自治州','甘肃');
subcat[219]=new Array('庆阳','庆阳','甘肃');
subcat[220]=new Array('定西','定西','甘肃');
subcat[221]=new Array('天水','天水','甘肃');
subcat[222]=new Array('兰州','兰州','甘肃');
subcat[223]=new Array('白银','白银','甘肃');
subcat[224]=new Array('平凉','平凉','甘肃');
subcat[225]=new Array('嘉峪关','嘉峪关','甘肃');
subcat[226]=new Array('张掖','张掖','甘肃');
subcat[227]=new Array('临夏回族自治州','临夏回族自治州','甘肃');
subcat[228]=new Array('武威','武威','甘肃');
subcat[229]=new Array('酒泉','酒泉','甘肃');
subcat[230]=new Array('沧州','沧州','河北');
subcat[231]=new Array('石家庄','石家庄','河北');
subcat[232]=new Array('衡水','衡水','河北');
subcat[233]=new Array('保定','保定','河北');
subcat[234]=new Array('秦皇岛','秦皇岛','河北');
subcat[235]=new Array('张家口','张家口','河北');
subcat[236]=new Array('唐山','唐山','河北');
subcat[237]=new Array('承德','承德','河北');
subcat[238]=new Array('廊坊','廊坊','河北');
subcat[239]=new Array('邯郸','邯郸','河北');
subcat[240]=new Array('邢台','邢台','河北');
subcat[241]=new Array('七台河','七台河','黑龙江');
subcat[242]=new Array('牡丹江','牡丹江','黑龙江');
subcat[243]=new Array('鹤岗','鹤岗','黑龙江');
subcat[244]=new Array('伊春','伊春','黑龙江');
subcat[245]=new Array('大兴安岭','大兴安岭','黑龙江');
subcat[246]=new Array('哈尔滨','哈尔滨','黑龙江');
subcat[247]=new Array('鸡西','鸡西','黑龙江');
subcat[248]=new Array('大庆','大庆','黑龙江');
subcat[249]=new Array('佳木斯','佳木斯','黑龙江');
subcat[250]=new Array('双鸭山','双鸭山','黑龙江');
subcat[251]=new Array('绥化','绥化','黑龙江');
subcat[252]=new Array('齐齐哈尔','齐齐哈尔','黑龙江');
subcat[253]=new Array('黑河','黑河','黑龙江');
subcat[254]=new Array('梅河口','梅河口','吉林');
subcat[255]=new Array('松原','松原','吉林');
subcat[256]=new Array('吉林','吉林','吉林');
subcat[257]=new Array('四平','四平','吉林');
subcat[258]=new Array('通化','通化','吉林');
subcat[259]=new Array('白山','白山','吉林');
subcat[260]=new Array('延边朝鲜族自治州','延边朝鲜族自治州','吉林');
subcat[261]=new Array('辽源','辽源','吉林');
subcat[262]=new Array('白城','白城','吉林');
subcat[263]=new Array('珲春','珲春','吉林');
subcat[264]=new Array('长春','长春','吉林');
subcat[265]=new Array('大连','大连','辽宁');
subcat[266]=new Array('鞍山','鞍山','辽宁');
subcat[267]=new Array('铁岭','铁岭','辽宁');
subcat[268]=new Array('抚顺','抚顺','辽宁');
subcat[269]=new Array('葫芦岛','葫芦岛','辽宁');
subcat[270]=new Array('辽阳','辽阳','辽宁');
subcat[271]=new Array('锦州','锦州','辽宁');
subcat[272]=new Array('沈阳','沈阳','辽宁');
subcat[273]=new Array('营口','营口','辽宁');
subcat[274]=new Array('盘锦','盘锦','辽宁');
subcat[275]=new Array('阜新','阜新','辽宁');
subcat[276]=new Array('朝阳','朝阳','辽宁');
subcat[277]=new Array('本溪','本溪','辽宁');
subcat[278]=new Array('丹东','丹东','辽宁');
subcat[279]=new Array('通辽','通辽','内蒙古自治区');
subcat[280]=new Array('乌兰察布盟','乌兰察布盟','内蒙古自治区');
subcat[281]=new Array('赤峰','赤峰','内蒙古自治区');
subcat[282]=new Array('呼伦贝尔','呼伦贝尔','内蒙古自治区');
subcat[283]=new Array('呼和浩特','呼和浩特','内蒙古自治区');
subcat[284]=new Array('包头','包头','内蒙古自治区');
subcat[285]=new Array('锡林郭勒盟','锡林郭勒盟','内蒙古自治区');
subcat[286]=new Array('乌海','乌海','内蒙古自治区');
subcat[287]=new Array('阿拉善盟','阿拉善盟','内蒙古自治区');
subcat[288]=new Array('鄂尔多斯','鄂尔多斯','内蒙古自治区');
subcat[289]=new Array('巴彦淖尔盟','巴彦淖尔盟','内蒙古自治区');
subcat[290]=new Array('兴安盟','兴安盟','内蒙古自治区');
subcat[291]=new Array('固原','固原','宁夏');
subcat[292]=new Array('银川','银川','宁夏');
subcat[293]=new Array('石嘴山','石嘴山','宁夏');
subcat[294]=new Array('吴忠','吴忠','宁夏');
subcat[295]=new Array('海西蒙古族藏族自治州','海西蒙古族藏族自治州','青海');
subcat[296]=new Array('黄南藏族自治州','黄南藏族自治州','青海');
subcat[297]=new Array('玉树藏族自治州','玉树藏族自治州','青海');
subcat[298]=new Array('海南藏族自治州','海南藏族自治州','青海');
subcat[299]=new Array('西宁','西宁','青海');
subcat[300]=new Array('海北藏族自治州','海北藏族自治州','青海');
subcat[301]=new Array('海东','海东','青海');
subcat[302]=new Array('格尔木','格尔木','青海');
subcat[303]=new Array('果洛藏族自治州','果洛藏族自治州','青海');
subcat[304]=new Array('菏泽','菏泽','山东');
subcat[305]=new Array('淄博','淄博','山东');
subcat[306]=new Array('日照','日照','山东');
subcat[307]=new Array('临沂','临沂','山东');
subcat[308]=new Array('德州','德州','山东');
subcat[309]=new Array('潍坊','潍坊','山东');
subcat[310]=new Array('烟台','烟台','山东');
subcat[311]=new Array('莱芜','莱芜','山东');
subcat[312]=new Array('威海','威海','山东');
subcat[313]=new Array('济宁','济宁','山东');
subcat[314]=new Array('泰安','泰安','山东');
subcat[315]=new Array('滨州','滨州','山东');
subcat[316]=new Array('枣庄','枣庄','山东');
subcat[317]=new Array('济南','济南','山东');
subcat[318]=new Array('青岛','青岛','山东');
subcat[319]=new Array('东营','东营','山东');
subcat[320]=new Array('聊城','聊城','山东');
subcat[321]=new Array('大同','大同','山西');
subcat[322]=new Array('晋城','晋城','山西');
subcat[323]=new Array('忻州','忻州','山西');
subcat[324]=new Array('吕梁','吕梁','山西');
subcat[325]=new Array('长治','长治','山西');
subcat[326]=new Array('太原','太原','山西');
subcat[327]=new Array('临汾','临汾','山西');
subcat[328]=new Array('阳泉','阳泉','山西');
subcat[329]=new Array('朔州','朔州','山西');
subcat[330]=new Array('运城','运城','山西');
subcat[331]=new Array('晋中','晋中','山西');
subcat[332]=new Array('榆林','榆林','陕西');
subcat[333]=new Array('商洛','商洛','陕西');
subcat[334]=new Array('渭南','渭南','陕西');
subcat[335]=new Array('延安','延安','陕西');
subcat[336]=new Array('汉中','汉中','陕西');
subcat[337]=new Array('咸阳','咸阳','陕西');
subcat[338]=new Array('宝鸡','宝鸡','陕西');
subcat[339]=new Array('西安','西安','陕西');
subcat[340]=new Array('安康','安康','陕西');
subcat[341]=new Array('铜川','铜川','陕西');
subcat[342]=new Array('崇文区','崇文区','北京市');
subcat[343]=new Array('三明市','三明市','福建');
subcat[344]=new Array('莆田市','莆田市','福建');
subcat[345]=new Array('泉州市','泉州市','福建');
subcat[346]=new Array('漳州市','漳州市','福建');
subcat[347]=new Array('永安市','永安市','福建');
subcat[348]=new Array('石狮市','石狮市','福建');
subcat[349]=new Array('福清市','福清市','福建');
subcat[350]=new Array('南平市','南平市','福建');
subcat[351]=new Array('邵武市','邵武市','福建');
subcat[352]=new Array('武夷山市','武夷山市','福建');
subcat[353]=new Array('宁德市','宁德市','福建');
subcat[354]=new Array('福安市','福安市','福建');
subcat[355]=new Array('龙岩市','龙岩市','福建');
subcat[356]=new Array('漳平市','漳平市','福建');
subcat[357]=new Array('东川市','东川市','云南');
subcat[358]=new Array('昭通市','昭通市','云南');
subcat[359]=new Array('曲靖市','曲靖市','云南');
subcat[360]=new Array('玉溪市','玉溪市','云南');
subcat[361]=new Array('思茅','思茅','云南');
subcat[362]=new Array('临沧','临沧','云南');
subcat[363]=new Array('保山市','保山市','云南');
subcat[364]=new Array('个旧市','个旧市','云南');
subcat[365]=new Array('开远市','开远市','云南');
subcat[366]=new Array('西双版纳','西双版纳','云南');
subcat[367]=new Array('楚雄市','楚雄市','云南');
subcat[368]=new Array('大理市','大理市','云南');
subcat[369]=new Array('畹町市','畹町市','云南');
subcat[370]=new Array('德宏','德宏','云南');
subcat[371]=new Array('怒江','怒江','云南');
subcat[372]=new Array('迪庆','迪庆','云南');
subcat[373]=new Array('自贡市','自贡市','四川');
subcat[374]=new Array('攀枝花市','攀枝花市','四川');
subcat[375]=new Array('泸州市','泸州市','四川');
subcat[376]=new Array('德阳市','德阳市','四川');
subcat[377]=new Array('广元市','广元市','四川');
subcat[378]=new Array('遂宁市','遂宁市','四川');
subcat[379]=new Array('内江市','内江市','四川');
subcat[380]=new Array('乐山市','乐山市','四川');
subcat[381]=new Array('广汉市','广汉市','四川');
subcat[382]=new Array('江油市','江油市','四川');
subcat[383]=new Array('都江堰市','都江堰市','四川');
subcat[384]=new Array('峨眉山市','峨眉山市','四川');
subcat[385]=new Array('万县市','万县市','四川');
subcat[386]=new Array('涪陵市','涪陵市','四川');
subcat[387]=new Array('黔江','黔江','四川');
subcat[388]=new Array('宜宾市','宜宾市','四川');
subcat[389]=new Array('南充市','南充市','四川');
subcat[390]=new Array('华蓥市','华蓥市','四川');
subcat[391]=new Array('达县市','达县市','四川');
subcat[392]=new Array('雅安市','雅安市','四川');
subcat[393]=new Array('阿坝自治州','阿坝自治州','四川');
subcat[394]=new Array('甘孜','甘孜','四川');
subcat[395]=new Array('西昌市','西昌市','四川');
subcat[396]=new Array('凉山','凉山','四川');
subcat[397]=new Array('岳阳市','岳阳市','湖南');
subcat[398]=new Array('常德市','常德市','湖南');
subcat[399]=new Array('大庸市','大庸市','湖南');
subcat[400]=new Array('醴陵市','醴陵市','湖南');
subcat[401]=new Array('湘乡市','湘乡市','湖南');
subcat[402]=new Array('来阳市','来阳市','湖南');
subcat[403]=new Array('汩罗市','汩罗市','湖南');
subcat[404]=new Array('津市市','津市市','湖南');
subcat[405]=new Array('韶山市','韶山市','湖南');
subcat[406]=new Array('郴州市','郴州市','湖南');
subcat[407]=new Array('资兴市','资兴市','湖南');
subcat[408]=new Array('永州市','永州市','湖南');
subcat[409]=new Array('冷水滩市','冷水滩市','湖南');
subcat[410]=new Array('娄底市','娄底市','湖南');
subcat[411]=new Array('冷水江市','冷水江市','湖南');
subcat[412]=new Array('涟源市','涟源市','湖南');
subcat[413]=new Array('洪江市','洪江市','湖南');
subcat[414]=new Array('益阳市','益阳市','湖南');
subcat[415]=new Array('沅江市','沅江市','湖南');
subcat[416]=new Array('吉首市','吉首市','湖南');
subcat[417]=new Array('徐州市','徐州市','江苏');
subcat[418]=new Array('淮阴市','淮阴市','江苏');
subcat[419]=new Array('盐城市','盐城市','江苏');
subcat[420]=new Array('扬州市','扬州市','江苏');
subcat[421]=new Array('无锡市','无锡市','江苏');
subcat[422]=new Array('苏州市','苏州市','江苏');
subcat[423]=new Array('泰州市','泰州市','江苏');
subcat[424]=new Array('仪征市','仪征市','江苏');
subcat[425]=new Array('常熟市','常熟市','江苏');
subcat[426]=new Array('张家港市','张家港市','江苏');
subcat[427]=new Array('江阴市','江阴市','江苏');
subcat[428]=new Array('宿迁市','宿迁市','江苏');
subcat[429]=new Array('丹阳市','丹阳市','江苏');
subcat[430]=new Array('东台市','东台市','江苏');
subcat[431]=new Array('兴化市','兴化市','江苏');
subcat[432]=new Array('淮安市','淮安市','江苏');
subcat[433]=new Array('宜兴市','宜兴市','江苏');
subcat[434]=new Array('昆山市','昆山市','江苏');
subcat[435]=new Array('启东市','启东市','江苏');
subcat[436]=new Array('新沂市','新沂市','江苏');
subcat[437]=new Array('溧阳市','溧阳市','江苏');
subcat[438]=new Array('丰台区','丰台区','北京市');
subcat[439]=new Array('朝阳区','朝阳区','北京市');
subcat[440]=new Array('门头沟区','门头沟区','北京市');
subcat[441]=new Array('西城区','西城区','北京市');
subcat[442]=new Array('海淀区','海淀区','北京市');
subcat[443]=new Array('宣武区','宣武区','北京市');
subcat[444]=new Array('房山区','房山区','北京市');
subcat[445]=new Array('石景山区','石景山区','北京市');
subcat[446]=new Array('昌平县','昌平县','北京市');
subcat[447]=new Array('密云县','密云县','北京市');
subcat[448]=new Array('通县','通县','北京市');
subcat[449]=new Array('延庆县','延庆县','北京市');
subcat[450]=new Array('顺义县','顺义县','北京市');
subcat[451]=new Array('大兴县','大兴县','北京市');
subcat[452]=new Array('怀柔县','怀柔县','北京市');
subcat[453]=new Array('平谷县','平谷县','北京市');
subcat[454]=new Array('和平区','和平区','天津市');
subcat[455]=new Array('红桥区','红桥区','天津市');
subcat[456]=new Array('西郊区','西郊区','天津市');
subcat[457]=new Array('河东区','河东区','天津市');
subcat[458]=new Array('塘沽区','塘沽区','天津市');
subcat[459]=new Array('北郊区','北郊区','天津市');
subcat[460]=new Array('河西区','河西区','天津市');
subcat[461]=new Array('汉沽区','汉沽区','天津市');
subcat[462]=new Array('大港区','大港区','天津市');
subcat[463]=new Array('河北区','河北区','天津市');
subcat[464]=new Array('东郊区','东郊区','天津市');
subcat[465]=new Array('南开区','南开区','天津市');
subcat[466]=new Array('南郊区','南郊区','天津市');
subcat[467]=new Array('蓟县','蓟县','天津市');
subcat[468]=new Array('武清县','武清县','天津市');
subcat[469]=new Array('宁河县','宁河县','天津市');
subcat[470]=new Array('宝坻县','宝坻县','天津市');
subcat[471]=new Array('静海县','静海县','天津市');
subcat[472]=new Array('长宁区','长宁区','上海');
subcat[473]=new Array('杨浦区','杨浦区','上海');
subcat[474]=new Array('南市区','南市区','上海');
subcat[475]=new Array('闸北区','闸北区','上海');
subcat[476]=new Array('普陀区','普陀区','上海');
subcat[477]=new Array('卢湾区','卢湾区','上海');
subcat[478]=new Array('静安区','静安区','上海');
subcat[479]=new Array('宝山区','宝山区','上海');
subcat[480]=new Array('徐汇区','徐汇区','上海');
subcat[481]=new Array('虹口区','虹口区','上海');
subcat[482]=new Array('闵行区','闵行区','上海');
subcat[483]=new Array('上海县','上海县','上海');
subcat[484]=new Array('南汇区','南汇区','上海');
subcat[485]=new Array('青浦县','青浦县','上海');
subcat[486]=new Array('嘉定县','嘉定县','上海');
subcat[487]=new Array('奉贤县(南桥镇)','奉贤县(南桥镇)','上海');
subcat[488]=new Array('崇明县','崇明县','上海');
subcat[489]=new Array('松江县','松江县','上海');
subcat[490]=new Array('川沙县','川沙县','上海');
subcat[491]=new Array('金山县','金山县','上海');
subcat[492]=new Array('万州区','万州区','重庆市');
subcat[493]=new Array('涪陵区','涪陵区','重庆市');
subcat[494]=new Array('渝中区','渝中区','重庆市');
subcat[495]=new Array('大渡口区','大渡口区','重庆市');
subcat[496]=new Array('江北区','江北区','重庆市');
subcat[497]=new Array('沙坪坝区','沙坪坝区','重庆市');
subcat[498]=new Array('九龙坡区','九龙坡区','重庆市');
subcat[499]=new Array('南岸区','南岸区','重庆市');
subcat[500]=new Array('北碚区','北碚区','重庆市');
subcat[501]=new Array('万盛区','万盛区','重庆市');
subcat[502]=new Array('双桥区','双桥区','重庆市');
subcat[503]=new Array('渝北区','渝北区','重庆市');
subcat[504]=new Array('巴南区','巴南区','重庆市');
subcat[505]=new Array('黔江区','黔江区','重庆市');
subcat[506]=new Array('长寿区','长寿区','重庆市');
subcat[507]=new Array('江津市','江津市','重庆市');
subcat[508]=new Array('合川市','合川市','重庆市');
subcat[509]=new Array('永川市','永川市','重庆市');
subcat[510]=new Array('南川市','南川市','重庆市');
subcat[511]=new Array('綦江县','綦江县','重庆市');
subcat[512]=new Array('潼南县','潼南县','重庆市');
subcat[513]=new Array('铜梁县','铜梁县','重庆市');
subcat[514]=new Array('大足县','大足县','重庆市');
subcat[515]=new Array('荣昌县','荣昌县','重庆市');
subcat[516]=new Array('璧山县','璧山县','重庆市');
subcat[517]=new Array('梁平县','梁平县','重庆市');
subcat[518]=new Array('城口县','城口县','重庆市');
subcat[519]=new Array('丰都县','丰都县','重庆市');
subcat[520]=new Array('垫江县','垫江县','重庆市');
subcat[521]=new Array('武隆县','武隆县','重庆市');
subcat[522]=new Array('忠县','忠县','重庆市');
subcat[523]=new Array('开县','开县','重庆市');
subcat[524]=new Array('云阳县','云阳县','重庆市');
subcat[525]=new Array('奉节县','奉节县','重庆市');
subcat[526]=new Array('巫山县','巫山县','重庆市');
subcat[527]=new Array('巫溪县','巫溪县','重庆市');
subcat[528]=new Array('石柱自治县','石柱自治县','重庆市');
subcat[529]=new Array('秀山自治县','秀山自治县','重庆市');
subcat[530]=new Array('酉阳自治县','酉阳自治县','重庆市');
subcat[531]=new Array('彭水自治县','彭水自治县','重庆市');
onecount=532;
function changelocation(locationid) {
	document.getElementById("city").length = 0;
	if(locationid=="") {
		document.getElementById("city").options[0] = new Option("--请选择城市--","");
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
        
        *头像</label>
	<img src="../images/0.jpg" alt="小宝" id="avatar" width="48" height="48" />
	<asp:TextBox ID="filepath" runat="server" Visible="false" />
	
	<asp:Button ID="btnInsertUserImg" runat="server" class="input_file" Text="上传头像" OnClick="btnInsertUserImg_Click" />
	<span class="hint">最大可上传 100KB 的照片,头像是必需上传.否则将注册失败!</span>
</p>
<p style =" display:none ;">
	<label class="label_input">简历编号</label>
	<asp:TextBox ID="txtResumeCode" runat="server" class="input_text" />
</p>

<p>
	<label class="label_input">直实姓名</label>
	<asp:TextBox ID="txtUserName" runat="server" class="input_text" />
</p>
<p>
	<label class="label_input">照片</label>
    <asp:FileUpload ID="fileModelFile" runat="server" class="input_file"/>
</p>
<p>
	<label class="label_input">性别</label>
    <asp:DropDownList ID="ddlGender" runat="server">
                <asp:ListItem Selected="True">男</asp:ListItem>
                <asp:ListItem>女</asp:ListItem>
    </asp:DropDownList>
</p>
<p>
	<label class="label_input">出生年月</label>
	<asp:TextBox ID="txtBirthAgeMonth" runat="server" class="input_text" Text ="1985-01-01" ></asp:TextBox>
	<img onclick="WdatePicker({el:$dp.$('txtBirthAgeMonth')})" src="../images/My97DatePicker/skin/datePicker.gif"width="16" height="22" align="absmiddle" />
   <span  style =" display:none ;">  OR <asp:TextBox ID="txtAge" runat="server" class="input_text" />岁</span>
</p>
<p>
	<label class="label_input">籍贯</label>
	<asp:TextBox ID="txtNativePlace" runat="server" class="input_text" />
</p>
<p>
	<label class="label_input">婚姻状况</label>
    <asp:DropDownList ID="ddlMarital" runat="server">
                <asp:ListItem Selected="True">保密</asp:ListItem>
                <asp:ListItem>未婚</asp:ListItem>
                <asp:ListItem>已婚</asp:ListItem>
    </asp:DropDownList>
</p>

<p>
	<label class="label_input">行业</label>
	<asp:TextBox ID="txtJobSpecification" runat="server" class="input_text" />
</p>
<p style =" display:none ;">
	<label class="label_input">目前状态</label>
	<asp:TextBox ID="txtCurrentStatus" runat="server" class="input_text" />
</p>
<p>
	<label class="label_input">职位</label>
	<asp:TextBox ID="txt_Position" runat="server" class="input_text" />
</p>
<p>
	<label class="label_input">学历</label>
	<asp:TextBox ID="txtHighestQualification" runat="server" class="input_text" />
</p>
<p>
	<label class="label_input">专业</label>
	<asp:TextBox ID="txtspecialty" runat="server"  class="input_text" />
</p>
<p>
    <label class="label_input">毕业时间</label><asp:TextBox ID="txtGraduationDay" runat="server" class="input_text" Text ="2007-07-01"></asp:TextBox>
    <img onclick="WdatePicker({el:$dp.$('txtGraduationDay')})" src="../images/My97DatePicker/skin/datePicker.gif"width="16" height="22" align="absmiddle" />
    
	
</p>
    <p style =" display :none ;"><label class="label_input">工作年限</label><asp:TextBox ID="txtServiceYear" runat="server" class="input_text" /></p>
<p>
	<label class="label_input">联系电话</label>
	<asp:TextBox ID="txtTel" runat="server" class="input_text" />
</p>
<p>
	<label class="label_input">电子邮箱</label>
	<asp:TextBox ID="txtMailBox" runat="server" class="input_text" />
</p>


<p>
	<label class="label_input">意向地点</label>
    <asp:TextBox ID="txtJobAddress" runat="server" class="input_text" />

</p>
<p style =" display :none ;">
	<label class="label_input">到岗时间</label>
		<asp:TextBox ID="txtAdsumDateTime" runat="server" class="input_text"></asp:TextBox>
	<img onclick="WdatePicker({el:$dp.$('txtAdsumDateTime')})" src="../images/My97DatePicker/skin/datePicker.gif"width="16" height="22" align="absmiddle" /> 
</p>
<p style =" display :none ;">
	<label class="label_input">期望行业</label>
	<asp:TextBox ID="txtPromisingIndustry" runat="server" class="input_text" />
</p>
   <h2>教育培训经历</h2>
    <p style="text-align: center">
	  <asp:TextBox ID="txtEducationandTrainingExperience" runat="server" Font-Size="9pt" Height="58px" Width="98%" TextMode="MultiLine" ></asp:TextBox>
</p>
   <h2>工作经历</h2>
    <p style="text-align: center">
	  <asp:TextBox ID="txtWorkExperience" runat="server" Font-Size="9pt" Height="58px" Width="98%" TextMode="MultiLine" ></asp:TextBox>
</p>
  <h2>专业技能</h2>
    <p style="text-align: center">
	  <asp:TextBox ID="txtSpecializedSkill" runat="server" Font-Size="9pt" Height="58px" Width="98%" TextMode="MultiLine" ></asp:TextBox>
</p>
<p class="act" style="width: 248px">
	<asp:Button ID="btnAddInsertResume" runat="server" class="formbutton" Text="保存" OnClick="btnAddInsertResume_Click" />
</p>
</form>
	</div>
</div><!--templater footer-->
<div id=footer>
		<p>
		<a href="privacy.aspx" target=_self>隐私声明</A> &copy; <span title="版权所有">2008</span></p>
</div>
</div><!--templater footer-->
</body>
</html>

