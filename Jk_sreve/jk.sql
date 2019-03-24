SET NAMES UTF8;
DROP DATABASE IF EXISTS jk;
CREATE DATABASE jk CHARSET=UTF8;
USE jk;

-- 用户列表
CREATE TABLE jk_user(
    uid INT PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR(32),
    user VARCHAR(32),
    upwd VARCHAR(32),
    code VARCHAR(12),
    email VARCHAR(64),
    phone VARCHAR(16)
);

INSERT INTO jk_user VALUES
(NULL,"zhangjie","张杰","12345678","","jie@qq.com","16639640506"),
(NULL,"liujie","刘杰","12345678","","liu@qq.com","1459640506"),
(NULL,"yangjie","杨杰","12345678","","yang@qq.com","17639640506");

-- 首页商品列表
-- 1F卧室家具
CREATE TABLE jk_room(
    rid INT PRIMARY KEY AUTO_INCREMENT,
    lou VARCHAR(12),
    biao VARCHAR(128),
    yitit VARCHAR(128),
    yipri VARCHAR(24),
    yiimg VARCHAR(128),
    ertit VARCHAR(128),
    erpri VARCHAR(24),
    erimg VARCHAR(128),
    satit VARCHAR(128),
    sapri VARCHAR(24),
    saimg VARCHAR(128),
    sitit VARCHAR(128),
    sipri VARCHAR(24),
    siimg VARCHAR(128),
    wutit VARCHAR(128),
    wupri VARCHAR(24),
    wuimg VARCHAR(128),
    litit VARCHAR(128),
    lipri VARCHAR(24),
    liimg VARCHAR(128),
    qitit VARCHAR(128),
    qipri VARCHAR(24),
    qiimg VARCHAR(128),
    batit VARCHAR(128),
    bapri VARCHAR(24),
    baimg VARCHAR(128)
);
INSERT INTO jk_room VALUES
(NULL,"1F 卧室家具","http://localhost:3000/jk_img/F11.jpg",
"隐形床专用床垫椰棕垫1.5m1.8m米全棉透气席梦思山羊绒床垫","12345","http://localhost:3000/jk_img/c50.jpg",
"榻榻米床真皮床双人床简约现代皮艺床1.8米软床主卧储物婚床","3445","http://localhost:3000/jk_img/c24.jpg",
"榻榻米床真皮床双人床简约现代皮艺床1.8米软床主卧储物婚床","3445","http://localhost:3000/jk_img/c241.jpg",
"现代简约1.5布艺多功能1.8米双人板式床气动高箱床榻榻米大储物床","15264","http://localhost:3000/jk_img/c240186.jpg",
"欧式双人床实木雕花卧室皮艺床公主床法式别墅奢华大床婚床","1696","http://localhost:3000/jk_img/a15.jpg",
"美式乡村田园简约布艺床1.5双人床1.8米主卧床品牌卧室家具011W","12345","http://localhost:3000/jk_img/a16.jpg",
"美式乡村简约布艺床1.5双人大床1.8米婚床品牌主卧床公主床901W","44553","http://localhost:3000/jk_img/a17.jpg",
" 实木床头柜白橡木床头柜卧室小斗柜储物柜置物柜实木家具","78553","http://localhost:3000/jk_img/a18.jpg"),
(NULL,"2F 客厅家具","http://localhost:3000/jk_img/F11.jpg",
"北欧实木休闲椅单人沙发布艺简约现代设计师创意个性软包懒人椅","12345","http://localhost:3000/jk_img/c31.jpg",
"美式乡村系列门厅柜 地中海田园现代简约玄关鞋柜衣帽架鞋柜","5237","http://localhost:3000/jk_img/c32.jpg",
"欧式大理石实木电视柜 客厅茶几地柜组合储物柜家具598","4000","http://localhost:3000/jk_img/c33.jpg",
"沙发客厅整装布艺沙发小户型北欧沙发套装组合三人四人位","2688","http://localhost:3000/jk_img/c34.jpg",
"北欧茶几火烧石整装现代简约大小户型钢化玻璃茶几电视柜斗柜组合","7069","http://localhost:3000/jk_img/c35.jpg",
"现代简约布艺乳胶组合沙发三人棉麻布全拆洗实木框架组合客厅沙发","6600","http://localhost:3000/jk_img/c36.jpg",
"德福堡 北欧简约现代茶几电视柜套装迷你组装简易木质地柜组合","3080","http://localhost:3000/jk_img/c37.jpg",
"德福堡 北欧简约现代茶几电视柜套装迷你组装简易木质地柜组合","3080","http://localhost:3000/jk_img/c38.jpg"
),
(NULL,"3F 餐厅家具","http://localhost:3000/jk_img/d10.jpg",
" 全实木餐椅 新古典 ...","12345","http://localhost:3000/jk_img/d11.jpg",
"美式复古loft餐厅实木餐椅 咖啡厅桌椅酒吧靠背椅扶手椅电脑椅子","320","http://localhost:3000/jk_img/d12.jpg",
"餐边柜北欧现代简约茶水柜子储物多功能设计师客厅家具橱柜","1998","http://localhost:3000/jk_img/d13.jpg",
"北欧圆凳白橡木 全实木餐桌凳 日式 家用板凳 原木换鞋凳简约家具","1674","http://localhost:3000/jk_img/d14.jpg",
"简约北欧餐桌椅餐厅家具一桌四椅","11471","http://localhost:3000/jk_img/d15.jpg",
" 海棠木全实木餐桌 现代中式风餐桌 实木餐厅饭桌","1190","http://localhost:3000/jk_img/d16.jpg",
"餐桌椅组合现代简约6人伸缩实木餐桌圆形饭桌折叠钢化玻璃电磁炉","2700","http://localhost:3000/jk_img/d17.jpg",
"餐桌椅组合现代简约6人伸缩实木餐桌圆形饭桌折叠钢化玻璃电磁炉","2700","http://localhost:3000/jk_img/d18.jpg"),
(NULL,"4F 书房家具","http://localhost:3000/jk_img/e11.jpg",
"电脑桌台式家用简约经...","394","http://localhost:3000/jk_img/e12.jpg",
"黑胡桃木书桌笔记本电脑桌现代简约办公书桌实木写字台","56784","http://localhost:3000/jk_img/e13.jpg",
"现代简约实木书架架子货架酒柜展示柜书橱书床头柜置物架组合","98","http://localhost:3000/jk_img/e14.jpg",
"新中式实木餐桌椅组合橡胶木椅子成人家用餐厅椅子现代简约书桌椅","1674","http://localhost:3000/jk_img/e15.jpg",
"欧式书桌新古典后现代简约实木桌办公桌书桌电脑桌现货","11471","http://localhost:3000/jk_img/e16.jpg",
"游戏椅电竞椅 可躺电脑椅家用网椅座椅学生学习办公椅转椅","1190","http://localhost:3000/jk_img/e17.jpg",
"北欧电脑桌台式家用学生书架写字台组合简约转角书柜书桌一体桌子","5901","http://localhost:3000/jk_img/e18.jpg",
"北欧电脑桌台式家用学生书架写字台组合简约转角书柜书桌一体桌子","5901","http://localhost:3000/jk_img/e19.jpg"
),
(NULL,"5F 儿童家具","http://localhost:3000/jk_img/f1.jpg",
"儿童天然椰棕床垫双层床配套床垫","394","http://localhost:3000/jk_img/f2.jpg",
"儿童上下床双层床男孩组合床高低床带书桌子母床滑梯床公主城堡床","56784","http://localhost:3000/jk_img/f3.jpg",
"实木床头柜欧式白色床边柜子简约现代卧室迷你田园收纳柜小储物柜","98","http://localhost:3000/jk_img/f4.jpg",
"幼儿园儿童桌子塑料桌子宝宝学习桌儿童玩具桌加厚卡通桌子","1674","http://localhost:3000/jk_img/f5.jpg",
"实木儿童子母床双层床松木高低上下铺床粉白色储物家具","11471","http://localhost:3000/jk_img/f6.jpg",
"儿童床女孩公主床粉色单人床小户型衣柜床一体带拖床家具套装组合","1190","http://localhost:3000/jk_img/f7.jpg",
"儿童床女孩公主床粉色单人床小户型衣柜床一体带拖床家具套装组合","1190","http://localhost:3000/jk_img/f8.jpg",
"儿童桌椅套装学习桌椅宝宝长方形升降写字玩具塑料家用幼儿园桌子","5901","http://localhost:3000/jk_img/f9.jpg"
),
(NULL,"6F 户外家具","http://localhost:3000/jk_img/h1.jpg",
"户外折叠桌椅 便携式...","394","http://localhost:3000/jk_img/h2.jpg",
"铁艺阳台桌椅北欧风格小茶几简约创意休闲椅单人靠背椅子","56784","http://localhost:3000/jk_img/h3.jpg",
"户外遮阳太阳岗亭庭院露凉台沙滩罗马阳台广告中柱伞印logo侧边伞","98","http://localhost:3000/jk_img/h4.jpg",
"折叠藤沙发床组合客厅多功能双人藤沙发竹藤艺沙发床推拉","1674","http://localhost:3000/jk_img/h5.jpg",
"户外铸铝秋千椅庭院家用摇椅室内成人摇摇椅阳台吊椅双人室外掉椅","11471","http://localhost:3000/jk_img/h6.jpg",
"户外铸铝秋千椅庭院家用摇椅室内成人摇摇椅阳台吊椅双人室外掉椅","1190","http://localhost:3000/jk_img/h7.jpg",
"欧式铸铝户外桌椅组合庭院桌椅休闲座椅子喝茶露天台花园室外家具","5901","http://localhost:3000/jk_img/h8.jpg",
"欧式铸铝户外桌椅组合庭院桌椅休闲座椅子喝茶露天台花园室外家具","5901","http://localhost:3000/jk_img/h9.jpg"
),
(NULL,"7F 办公家具","http://localhost:3000/jk_img/g1.jpg",
"办公文件柜子储物柜档...","394","http://localhost:3000/jk_img/g2.jpg",
" 北欧复古实木家具长桌子办公桌会议桌工作台长条书桌铁艺餐桌定制","56784","http://localhost:3000/jk_img/g3.jpg",
"台式电脑桌现代简约家用学生书桌子带书架卧室经济型办公桌组合桌","98","http://localhost:3000/jk_img/g7.jpg",
"老板椅办公椅子家用现代简约人体工学钢制脚会议电脑椅","1674","http://localhost:3000/jk_img/g8.jpg",
"北欧老板桌总裁桌办公桌老板桌椅组合小户型经理桌大班台","11471","http://localhost:3000/jk_img/g4.jpg",
" 美式实木书桌家用电脑台式桌工业风写字桌电脑桌工作台简约办公桌","1190","http://localhost:3000/jk_img/g5.jpg",
"老板椅办公椅子家用现代简约人体工学钢制脚会议电脑椅","5901","http://localhost:3000/jk_img/g6.jpg",
"老板椅办公椅子家用现代简约人体工学钢制脚会议电脑椅","5901","http://localhost:3000/jk_img/g9.jpg"
),

(NULL,"8F 多功能家具","http://localhost:3000/jk_img/g1.jpg",
"办公文件柜子储物柜档...","394","http://localhost:3000/jk_img/I2.jpg",
" 北欧复古实木家具长桌子办公桌会议桌工作台长条书桌铁艺餐桌定制","56784","http://localhost:3000/jk_img/I3.jpg",
"台式电脑桌现代简约家用学生书桌子带书架卧室经济型办公桌组合桌","98","http://localhost:3000/jk_img/I4.jpg",
"老板椅办公椅子家用现代简约人体工学钢制脚会议电脑椅","1674","http://localhost:3000/jk_img/I5.jpg",
"北欧老板桌总裁桌办公桌老板桌椅组合小户型经理桌大班台","11471","http://localhost:3000/jk_img/I6.jpg",
" 美式实木书桌家用电脑台式桌工业风写字桌电脑桌工作台简约办公桌","1190","http://localhost:3000/jk_img/I7.jpg",
"老板椅办公椅子家用现代简约人体工学钢制脚会议电脑椅","5901","http://localhost:3000/jk_img/I8.jpg",
"老板椅办公椅子家用现代简约人体工学钢制脚会议电脑椅","5901","http://localhost:3000/jk_img/I9.jpg"
);


-- 全国城市
CREATE TABLE jk_cityA(
  Aid INT PRIMARY KEY AUTO_INCREMENT,
  Acity VARCHAR(12)
);
INSERT INTO jk_cityA VALUES
(NULL,"阿拉善盟"),(NULL,"鞍山"),(NULL,"安吉"),(NULL,"安庆"),(NULL,"安阳"),(NULL,"安岳"),(NULL,"阿坝"),
(NULL,"安顺"),(NULL,"阿里地"),(NULL,"安康"),(NULL,"阿克苏地"),(NULL,"阿勒泰地"),(NULL,"阿拉尔");

CREATE TABLE jk_cityB(
  Aid INT PRIMARY KEY AUTO_INCREMENT,
  Acity VARCHAR(12)
);
INSERT INTO jk_cityB VALUES
(NULL,"北京"),(NULL,"保定"),(NULL,"包头"),(NULL,"巴彦卓尔"),(NULL,"本溪"),(NULL,"白山"),(NULL,"白城"),(NULL,"宝应"),
(NULL,"蚌埠"),(NULL,"亳州"),(NULL,"滨州"),(NULL,"博罗"),(NULL,"北海"),(NULL,"百色"),(NULL,"白沙"),
(NULL,"保亭"),(NULL,"巴中"),(NULL,"毕节"),(NULL,"保山"),(NULL,"宝鸡"),(NULL,"白银"),(NULL,"博尔塔拉"),(NULL,"巴音郭楞");

CREATE TABLE jk_cityC(
  Aid INT PRIMARY KEY AUTO_INCREMENT,
  Acity VARCHAR(12)
);
INSERT INTO jk_cityC VALUES
(NULL,"朝阳"),(NULL,"承德"),(NULL,"沧州"),(NULL,"长治"),(NULL,"赤峰"),(NULL,"长春"),(NULL,"常州"),(NULL,"慈溪"),
(NULL,"苍南"),(NULL,"长兴"),(NULL,"巢湖"),(NULL,"滁州"),(NULL,"池州"),(NULL,"曹县"),(NULL,"长恒"),(NULL,"长葛"),
(NULL,"长沙"),(NULL,"常德"),(NULL,"郴州"),(NULL,"潮州"),(NULL,"崇左"),(NULL,"澄迈"),(NULL,"重庆"),(NULL,"成都"),
(NULL,"楚雄"),(NULL,"昌都"),(NULL,"昌吉");

CREATE TABLE jk_cityD(
  Aid INT PRIMARY KEY AUTO_INCREMENT,
  Acity VARCHAR(12)
);
INSERT INTO jk_cityD VALUES
(NULL,"定州"),(NULL,"大同"),(NULL,"大连"),(NULL,"丹东"),(NULL,"大庆"),(NULL,"大兴安岭"),(NULL,"东海"),(NULL,"大丰"),(NULL,"东台"),(NULL,"丹阳"),(NULL,"德清"),
(NULL,"东阳"),(NULL,"东营"),(NULL,"德州"),(NULL,"单县"),(NULL,"东莞"),(NULL,"瞻洲"),(NULL,"东方"),(NULL,"定安"),(NULL,"德阳"),(NULL,"达州"),(NULL,"大理"),
(NULL,"德宏"),(NULL,"迪庆"),(NULL,"定西");

CREATE TABLE jk_cityE(
  Aid INT PRIMARY KEY AUTO_INCREMENT,
  Acity VARCHAR(12)
);
INSERT INTO jk_cityE VALUES
(NULL,"鄂尔多斯"),(NULL,"鄂州"),(NULL,"恩施"),(NULL,"峨眉山");

CREATE TABLE jk_cityF(
  Aid INT PRIMARY KEY AUTO_INCREMENT,
  Acity VARCHAR(12)
);
INSERT INTO jk_cityF VALUES
(NULL,"抚顺"),(NULL,"阜新"),(NULL,"阜阳"),(NULL,"福州"),(NULL,"肥城"),(NULL,"佛山"),(NULL,"防城港");

CREATE TABLE jk_cityG(
  Aid INT PRIMARY KEY AUTO_INCREMENT,
  Acity VARCHAR(12)
);
INSERT INTO jk_cityG VALUES
(NULL,"馆陶"),(NULL,"公主岭"),(NULL,"甘南县"),(NULL,"灌云"),(NULL,"灌南"),(NULL,"赣州"),(NULL,"广饶"),(NULL,"高密"),
(NULL,"桂林"),(NULL,"贵港"),(NULL,"广汉"),(NULL,"广元"),(NULL,"广安"),(NULL,"甘孜"),(NULL,"贵阳"),(NULL,"改则县"),
(NULL,"果洛"),(NULL,"固原");

CREATE TABLE jk_cityH(
  Aid INT PRIMARY KEY AUTO_INCREMENT,
  Acity VARCHAR(12)
);
INSERT INTO jk_cityH VALUES
(NULL,"邯郸"),(NULL,"衡水"),(NULL,"呼和浩特"),(NULL,"海南"),(NULL,"呼伦贝尔"),(NULL,"海拉尔"),(NULL,"葫芦岛"),(NULL,"哈尔滨"),(NULL,"鹤岗"),(NULL,"黑河"),(NULL,"海安"),
(NULL,"海门"),(NULL,"淮安"),(NULL,"杭州"),(NULL,"海宁"),(NULL,"湖州"),(NULL,"合肥"),(NULL,"淮南"),(NULL,"淮北"),(NULL,"黄山"),(NULL,"霍邱"),(NULL,"恒台"),
(NULL,"菏泽"),(NULL,"鹤壁"),(NULL,"黄石"),(NULL,"汉川"),(NULL,"黄冈"),(NULL,"衡阳"),(NULL,"怀化"),(NULL,"惠州"),(NULL,"惠东"),(NULL,"海丰"),(NULL,"河源");

CREATE TABLE jk_cityJ(
  Aid INT PRIMARY KEY AUTO_INCREMENT,
  Acity VARCHAR(12)
);
INSERT INTO jk_cityJ VALUES
(NULL,"晋城"),(NULL,"晋中"),(NULL,"锦州"),(NULL,"鸡西"),(NULL,"佳木斯"),(NULL,"金坛"),(NULL,"建湖"),(NULL,"泰州"),(NULL,"姜堰"),(NULL,"靖江"),(NULL,"嘉兴"),(NULL,"嘉善"),(NULL,"金华"),
(NULL,"晋江"),(NULL,"景德镇"),(NULL,"九江"),(NULL,"吉安"),(NULL,"宜春"),(NULL,"抚州"),(NULL,"济南"),(NULL,"济宁"),(NULL,"莒县"),(NULL,"焦作"),(NULL,"济源"),(NULL,"荆门"),(NULL,"荆州"),
(NULL,"江门"),(NULL,"揭阳"),(NULL,"简阳"),(NULL,"嘉峪关"),(NULL,"金昌"),(NULL,"酒泉");

CREATE TABLE jk_cityK(
  Aid INT PRIMARY KEY AUTO_INCREMENT,
  Acity VARCHAR(12)
);
INSERT INTO jk_cityK VALUES
(NULL,"昆山"),(NULL,"垦利"),(NULL,"开封"),(NULL,"昆明"),(NULL,"克拉马"),(NULL,"库尔类"),(NULL,"克孜勒"),
(NULL,"卡是地");

CREATE TABLE jk_cityL(
  Aid INT PRIMARY KEY AUTO_INCREMENT,
  Acity VARCHAR(12)
);
INSERT INTO jk_cityL VALUES
(NULL,"廊坊"),(NULL,"临琦"),(NULL,"临汾"),(NULL,"吕梁"),(NULL,"辽阳"),(NULL,"辽源"),(NULL,"溧阳"),(NULL,"连云港"),(NULL,"乐清"),(NULL,"临海"),(NULL,"丽水"),(NULL,"六安"),(NULL,"龙海"),
(NULL,"龙岩"),(NULL,"乐平"),(NULL,"龙口"),(NULL,"莱州"),(NULL,"临斤"),(NULL,"聊城"),(NULL,"洛阳"),(NULL,"漯河"),(NULL,"灵宝"),(NULL,"醴陵"),(NULL,"娄底"),(NULL,"柳州"),(NULL,"来宾"),(NULL,"陵水"),(NULL,"泸州"),
(NULL,"乐山"),(NULL,"凉水"),(NULL,"六盘水"),(NULL,"丽江"),(NULL,"临沧"),(NULL,"拉萨"),(NULL,"林芝"),(NULL,"兰州"),(NULL,"陇南"),(NULL,"临夏");

CREATE TABLE jk_cityM(
  Aid INT PRIMARY KEY AUTO_INCREMENT,
  Acity VARCHAR(12)
);
INSERT INTO jk_cityM VALUES
(NULL,"牡丹江"),(NULL,"马鞍山"),(NULL,"茂名"),(NULL,"梅州"),(NULL,"绵阳");

CREATE TABLE jk_cityN(
  Aid INT PRIMARY KEY AUTO_INCREMENT,
  Acity VARCHAR(12)
);
INSERT INTO jk_cityN VALUES
(NULL,"南和"),(NULL,"南京"),(NULL,"南通"),(NULL,"宁波"),(NULL,"宁国"),(NULL,"南安"),(NULL,"南平"),(NULL,"宁德"),(NULL,"南昌"),(NULL,"南阳"),(NULL,"南宁"),(NULL,"内江"),(NULL,"南充"),(NULL,"怒江"),
(NULL,"那曲地");

CREATE TABLE jk_cityP(
  Aid INT PRIMARY KEY AUTO_INCREMENT,
  Acity VARCHAR(12)
);
INSERT INTO jk_cityP VALUES
(NULL,"盘锦"),(NULL,"沛县"),(NULL,"邳州"),(NULL,"莆田"),(NULL,"萍乡"),(NULL,"蓬莱"),(NULL,"平顶山"),(NULL,"濮阳"),(NULL,"攀枝花"),(NULL,"普洱"),(NULL,"平凉");

CREATE TABLE jk_cityQ(
  Aid INT PRIMARY KEY AUTO_INCREMENT,
  Acity VARCHAR(12)
);
INSERT INTO jk_cityQ VALUES
(NULL,"迁安"),(NULL,"秦皇岛"),
(NULL,"齐齐哈尔"),(NULL,"七台河"),(NULL,"启东"),(NULL,"衢州"),(NULL,"泉州"),(NULL,"青岛"),(NULL,"杞县"),(NULL,"潜江"),(NULL,"清远"),(NULL,"钦州"),(NULL,"琼海"),(NULL,"黔西南"),(NULL,"黔东南"),(NULL,"黔南"),
(NULL,"曲靖"),(NULL,"庆阳");

CREATE TABLE jk_cityR(
  Aid INT PRIMARY KEY AUTO_INCREMENT,
  Acity VARCHAR(12)
);
INSERT INTO jk_cityR VALUES
(NULL,"任丘"),(NULL,"如东"),(NULL,"如皋"),(NULL,"瑞安"),(NULL,"荣成"),(NULL,"乳山"),(NULL,"日照"),(NULL,"汝州"),(NULL,"仁寿"),(NULL,"仁怀"),(NULL,"日喀则"),(NULL,"日土县");

CREATE TABLE jk_cityS(
  Aid INT PRIMARY KEY AUTO_INCREMENT,
  Acity VARCHAR(12)
);
INSERT INTO jk_cityS VALUES
(NULL,"石家庄"),(NULL,"三河"),(NULL,"朔州"),(NULL,"沈阳"),(NULL,"四平"),(NULL,"松原"),(NULL,"双鸭山"),(NULL,"绥化"),(NULL,"上海"),(NULL,"苏州"),(NULL,"宿迁"),(NULL,"沐阳"),(NULL,"泗阳"),(NULL,"泗洪"),(NULL,"绍兴"),
(NULL,"宿州"),(NULL,"三明"),(NULL,"石狮"),(NULL,"上饶"),(NULL,"寿光"),(NULL,"三门峡"),(NULL,"商丘"),(NULL,"十堰"),(NULL,"随州"),(NULL,"神农架"),(NULL,"邵阳"),(NULL,"韶关"),(NULL,"深圳"),(NULL,"汕头"),(NULL,"顺德"),(NULL,"汕尾"),(NULL,"三亚"),
(NULL,"三沙"),(NULL,"遂宁"),(NULL,"山南"),(NULL,"榆林"),(NULL,"神木"),(NULL,"商洛"),(NULL,"石嘴山"),(NULL,"石河子");

CREATE TABLE jk_cityT(
  Aid INT PRIMARY KEY AUTO_INCREMENT,
  Acity VARCHAR(12)
);
INSERT INTO jk_cityT VALUES
(NULL,"天津"),(NULL,"唐山"),(NULL,"太原"),(NULL,"通辽"),(NULL,"铁岭"),(NULL,"通化"),(NULL,"泰兴"),(NULL,"桐乡"),(NULL,"台州"),
(NULL,"铜陵"),(NULL,"桐城"),(NULL,"天长"),(NULL,"滕州"),(NULL,"泰安"),(NULL,"天门"),(NULL,"台山"),(NULL,"屯昌"),(NULL,"铜仁"),(NULL,"天水"),(NULL,"吐鲁番"),(NULL,"塔城地"),(NULL,"图木舒克");

CREATE TABLE jk_cityW(
  Aid INT PRIMARY KEY AUTO_INCREMENT,
  Acity VARCHAR(12)
);
INSERT INTO jk_cityW VALUES
(NULL,"武安"),(NULL,"乌海"),(NULL,"乌兰察布"),
(NULL,"瓦房店"),(NULL,"无锡"),(NULL,"温州"),(NULL,"温岭"),(NULL,"芜湖"),(NULL,"武夷山"),(NULL,"潍坊"),(NULL,"威海"),(NULL,"武汉"),(NULL,"梧州"),(NULL,"五指山"),(NULL,"文昌"),(NULL,"万宁"),(NULL,"文山"),(NULL,"渭南"),(NULL,"武威"),(NULL,"吴忠"),(NULL,"乌鲁木齐"),(NULL,"五家渠");

CREATE TABLE jk_cityX(
  Aid INT PRIMARY KEY AUTO_INCREMENT,
  Acity VARCHAR(12)
);
INSERT INTO jk_cityX VALUES
(NULL,"邢台"),(NULL,"忻州"),(NULL,"兴安盟"),(NULL,"锡林"),(NULL,"西安"),(NULL,"徐州"),(NULL,"新沂"),(NULL,"兴化"),(NULL,"象山"),(NULL,"宣称"),(NULL,"厦门"),(NULL,"新余"),(NULL,"新泰"),(NULL,"新乡"),(NULL,"许昌"),(NULL,"项城"),(NULL,"襄阳"),(NULL,"孝感"),(NULL,"咸宁"),(NULL,"仙桃"),(NULL,"湘潭"),(NULL,"湘西"),(NULL,"西双版纳"),(NULL,"咸阳"),(NULL,"西宁");

CREATE TABLE jk_cityY(
  Aid INT PRIMARY KEY AUTO_INCREMENT,
  Acity VARCHAR(12)
);
INSERT INTO jk_cityY VALUES
(NULL,"阳泉"),(NULL,"运城"),(NULL,"营口"),(NULL,"延边"),(NULL,"伊春"),(NULL,"盐城"),(NULL,"扬州"),(NULL,"扬州"),(NULL,"余姚"),(NULL,"义务"),(NULL,"永康"),
(NULL,"烟台"),(NULL,"偃师"),(NULL,"鄢陵"),(NULL,"禹州"),(NULL,"永州"),(NULL,"阳江"),(NULL,"阳春"),(NULL,"云浮"),(NULL,"玉林"),(NULL,"宜宾"),(NULL,"雅安"),(NULL,"玉溪"),(NULL,"延安"),(NULL,"玉树"),(NULL,"银川"),(NULL,"伊犁"),(NULL,"正定"),(NULL,"赵县"),(NULL,"涿州");


CREATE TABLE jk_cityZ(
  Aid INT PRIMARY KEY AUTO_INCREMENT,
  Acity VARCHAR(12)
);
INSERT INTO jk_cityZ VALUES
(NULL,"张家口"),(NULL,"张北"),(NULL,"中山"),(NULL,"庄河"),
(NULL,"镇江"),(NULL,"诸暨"),(NULL,"舟山"),(NULL,"漳州"),(NULL,"章丘"),(NULL,"淄博"),(NULL,"枣庄"),(NULL,"招远"),(NULL,"诸城"),(NULL,"邹城"),(NULL,"邹平"),(NULL,"郑州"),(NULL,"周口"),(NULL,"驻马店"),(NULL,"枣阳"),
(NULL,"株洲"),(NULL,"张家界"),(NULL,"资阳"),(NULL,"珠海"),(NULL,"湛江"),(NULL,"肇庆"),(NULL,"自贡"),(NULL,"遵义"),(NULL,"昭通"),(NULL,"张掖");

-- 热门城市
CREATE TABLE jk_rscity(
    rsid INT PRIMARY KEY AUTO_INCREMENT,
    rscity VARCHAR(12)
);
INSERT INTO jk_rscity VALUES
(NULL,"北京"),
(NULL,"天津"),
(NULL,"上海"),
(NULL,"苏州"),
(NULL,"杭州"),
(NULL,"郑州"),
(NULL,"武汉"),
(NULL,"长沙"),
(NULL,"广州"),
(NULL,"深圳"),
(NULL,"重庆"),
(NULL,"成都"),
(NULL,"朔州"),
(NULL,"兴安盟"),
(NULL,"阿拉善盟"),
(NULL,"白山"),
(NULL,"大兴安岭"),
(NULL,"沛县"),
(NULL,"泉州"),
(NULL,"济南"),
(NULL,"招远"),
(NULL,"汕尾");


-- 友情链接
CREATE TABLE jk_link(
     lid INT PRIMARY KEY AUTO_INCREMENT,
    lname VARCHAR(12)
);
INSERT INTO jk_link VALUES
(NULL,"天一学院学费"),(NULL,"拉丝机"),(NULL,"奶茶加盟店"),(NULL,"雅云云石灯"),(NULL,"吉安房产信息"),(NULL,"全自动洗车机"),(NULL,"轻质墙板"),(NULL,"泗洪网"),(NULL,"上海物流公司"),(NULL,"明星代言"),
(NULL,"2k小说阅读网"),(NULL,"中国压缩机网"),(NULL,"生态鱼缸搭建"),(NULL,"淘宝装修"),(NULL,"ps论坛"),(NULL,"西点培训"),(NULL,"短信接口"),(NULL,"xp系统下载"),(NULL,"办公设备"),(NULL,"少儿英语培训"),(NULL,"免费算命"),
(NULL,"窗帘"),(NULL,"国际汉语教师资格证"),(NULL,"装修公司"),(NULL,"装修设计"),(NULL,"论文发表"),(NULL,"上海物流公司"),(NULL,"房贷计算器"),(NULL,"3C防火阀"),(NULL,"美国海淘转运"),(NULL,"求婚公司"),(NULL,"服装设计培训"),(NULL,"新娘魅"),
(NULL,"纹身图案"),(NULL,"seo顾问"),(NULL,"玻璃隔断"),(NULL,"水果花培训"),(NULL,"海外房产"),(NULL,"外教一对一"),(NULL,"情感杂谈"),(NULL,"office2007破解版"),(NULL,"家具安装"),(NULL,"鲜花速递"),(NULL,"office2010破解版"),(NULL,"北京空调维修"),
(NULL,"大鹏建设"),(NULL,"路易威登"),(NULL,"婚礼策划公司"),(NULL,"SEO培训"),(NULL,"除尘器"),(NULL,"岗亭厂家"),(NULL,"武汉做网站"),(NULL,"岩土工程师挂靠"),(NULL,"微信备案域名"),(NULL,"拉篮"),(NULL,"手机号码测吉凶"),(NULL,"陀螺"),(NULL,"罗茨鼓风机"),(NULL,"澳洲移民"),
(NULL,"服务器租用"),(NULL,"癫痫病治疗方法"),(NULL,"科技之梦"),(NULL,"手表回收"),(NULL,"上海美的空调售后"),(NULL,"面包店加盟"),(NULL,"广州空调维修"),(NULL,"蛋糕培训"),(NULL,"茶叶网"),(NULL,"工装定做"),(NULL,"压滤机"),(NULL,"护栏网厂"),(NULL,"服装定制"),(NULL,"华帝燃气灶售后"),(NULL,"老板气灶售后"),(NULL,"神马影院"),
(NULL,"神马影院"),(NULL,"天气预报15天"),(NULL,"神马影院");

-- 商品列表
CREATE TABLE jk_prducts(
    id INT PRIMARY KEY AUTO_INCREMENT,
    price VARCHAR(12),
    title VARCHAR(128),
    sold VARCHAR(12),
    comment VARCHAR(12),
    dimg VARCHAR(128)
);
INSERT INTO jk_prducts VALUES
(NULL,"45","洗衣篮脏衣篮  收纳筐折叠布艺脏衣篓收纳脏衣框收纳篮子脏衣服篮","2334","6","http://localhost:3000/paou_img/c1.jpg"),
(NULL,"78","创意脏衣篮 折叠脏衣篓田园洗衣筐布艺大号脏衣服玩具收纳篮","26754","45","http://localhost:3000/paou_img/c2.jpg"),
(NULL,"840","美式实木皮艺梳妆凳 梳妆桌 小户型乡村椭圆形梳妆台","734","45","http://localhost:3000/paou_img/c3.jpg"),
(NULL,"598","白色高低床双层床抽屉 拖床 书架专拍","334","45","http://localhost:3000/paou_img/c4.jpg"),
(NULL,"1598","北欧纯日式全实木主卧室成人婚床原木1.5m1.8米双人现代简约家具","4","45","http://localhost:3000/paou_img/c5.jpg"),
(NULL,"6460","创意真皮床双人床现代婚床1.8米1.5榻榻米床储物床皮艺床软床大床","2","45","http://localhost:3000/paou_img/c6.jpg"),
(NULL,"16480","现代简约卧室全套家具 衣柜妆台床头柜高电视柜组合套装","2334","45","http://localhost:3000/paou_img/c7.jpg"),
(NULL,"3998","卧室家具套装组合 床 衣柜全套家具美式乡村成套主卧家具","2","45","http://localhost:3000/paou_img/c8.jpg"),
(NULL,"1200","新中式床现代中式实木双人床卧室1.8床2M大床婚床样板房全套家具","24","45","http://localhost:3000/paou_img/c9.jpg"),
(NULL,"125","卧室家具套装组合四件套 床和衣柜整套全套套房床柜成套家具","34","45","http://localhost:3000/paou_img/c10.jpg"),
(NULL,"1568","北欧日式全实木床1.8米双人床1.5M木床1.2单人床卧室简约全套家具","26734","45","http://localhost:3000/paou_img/c11.jpg"),
(NULL,"368","时尚铁艺床公主床1.2米单人床1.5米环保铁架床1.8米铁艺双人床","2334","45","http://localhost:3000/paou_img/c12.jpg"),
(NULL,"348","简约时尚铁艺床酒店宾馆出租房专用铁床 单人床1.5 1.8米双人床","3","45","http://localhost:3000/paou_img/c13.jpg"),
(NULL,"345","精美卧室套餐 美式卧室家具组合 床+衣柜+妆台+床头柜全套","4","45","http://localhost:3000/paou_img/c14.jpg"),
(NULL,"8787","欧式床双人法式大床1.8米木床卧室三件套成套家具公主床","2034","45","http://localhost:3000/paou_img/c15.jpg"),
(NULL,"895","美式实木儿童床床头柜书桌台椅衣柜卧室成套家具五件套组合","34","45","http://localhost:3000/paou_img/c16.jpg"),
(NULL,"2342","美式乡村实木主卧双人床1.8米橡木轻奢公主床奢华婚床组套","734","45","http://localhost:3000/paou_img/c17.jpg"),
(NULL,"4655","高低床双层床成人上下床套房家具功能书桌衣柜组合床套装","344","45","http://localhost:3000/paou_img/c18.jpg"),
(NULL,"4565","双层床上下高低床配套扶手梯柜储物楼梯柜定制多色可选","2674","45","http://localhost:3000/paou_img/c19.jpg"),
(NULL,"2345","纯色床品四件套","2334","45","http://localhost:3000/paou_img/c20.jpg"),
(NULL,"7675","北欧现代简约推拉门衣柜轻奢风格主卧多功能整体带梳妆台衣橱组合","2544","56","http://localhost:3000/paou_img/c21.jpg"),
(NULL,"676","实木床双人床1.5米1.8米床松木儿童床1米单人床1.2米简易木床","4","56","http://localhost:3000/paou_img/c22.jpg"),
(NULL,"7675","新中式实木大床现代简约1.8米双人床主卧婚床样板房禅意家具定制","34","56","http://localhost:3000/paou_img/c23.jpg"),
(NULL,"8989","北欧实木床现代简约1.5/1.8米纯橡木双人床环保卧室家具","34","56","http://localhost:3000/paou_img/c24.jpg"),
(NULL,"342345","现代简约新中式实木床主卧1.8/1.5M双人进口橡木实木床","334","56","http://localhost:3000/paou_img/c25.jpg"),
(NULL,"7653","新中式全实木床橡木现代简约双人床1.8/1.5米实木床","23","56","http:localhost:3000/paou_img/c26.jpg"),
(NULL,"4655","高低床双层床成人上下床套房家具功能书桌衣柜组合床套装","344","56","http://localhost:3000/paou_img/c27.jpg"),
(NULL,"4565","双层床上下高低床配套扶手梯柜储物楼梯柜定制多色可选","2674","56","http://localhost:3000/paou_img/c28.jpg"),
(NULL,"1200","新中式床现代中式实木双人床卧室1.8床2M大床婚床样板房全套家具","24","45","http://localhost:3000/paou_img/c9.jpg"),
(NULL,"125","卧室家具套装组合四件套 床和衣柜整套全套套房床柜成套家具","34","45","http://localhost:3000/paou_img/c10.jpg"),
(NULL,"1568","北欧日式全实木床1.8米双人床1.5M木床1.2单人床卧室简约全套家具","26734","45","http://localhost:3000/paou_img/c11.jpg"),
(NULL,"368","时尚铁艺床公主床1.2米单人床1.5米环保铁架床1.8米铁艺双人床","2334","45","http://localhost:3000/paou_img/c12.jpg"),
(NULL,"348","简约时尚铁艺床酒店宾馆出租房专用铁床 单人床1.5 1.8米双人床","3","45","http://localhost:3000/paou_img/c13.jpg"),
(NULL,"345","精美卧室套餐 美式卧室家具组合 床+衣柜+妆台+床头柜全套","4","45","http://localhost:3000/paou_img/c14.jpg"),
(NULL,"8787","欧式床双人法式大床1.8米木床卧室三件套成套家具公主床","2034","45","http://localhost:3000/paou_img/c15.jpg"),
(NULL,"895","美式实木儿童床床头柜书桌台椅衣柜卧室成套家具五件套组合","34","45","http://localhost:3000/paou_img/c16.jpg"),
(NULL,"2342","美式乡村实木主卧双人床1.8米橡木轻奢公主床奢华婚床组套","734","45","http://localhost:3000/paou_img/c17.jpg"),
(NULL,"4655","高低床双层床成人上下床套房家具功能书桌衣柜组合床套装","344","45","http://localhost:3000/paou_img/c18.jpg"),
(NULL,"4565","双层床上下高低床配套扶手梯柜储物楼梯柜定制多色可选","2674","45","http://localhost:3000/paou_img/c19.jpg"),
(NULL,"2345","纯色床品四件套","2334","45","http://localhost:3000/paou_img/c20.jpg"),
(NULL,"342345","现代简约新中式实木床主卧1.8/1.5M双人进口橡木实木床","334","56","http://localhost:3000/paou_img/c25.jpg"),
(NULL,"7653","新中式全实木床橡木现代简约双人床1.8/1.5米实木床","23","56","http://localhost:3000/paou_img/c26.jpg"),
(NULL,"4655","高低床双层床成人上下床套房家具功能书桌衣柜组合床套装","344","56","http://localhost:3000/paou_img/c27.jpg"),
(NULL,"4565","双层床上下高低床配套扶手梯柜储物楼梯柜定制多色可选","2674","56","http://localhost:3000/paou_img/c28.jpg"),
(NULL,"1200","新中式床现代中式实木双人床卧室1.8床2M大床婚床样板房全套家具","24","45","http://localhost:3000/paou_img/c9.jpg"),
(NULL,"125","卧室家具套装组合四件套 床和衣柜整套全套套房床柜成套家具","34","45","http://localhost:3000/paou_img/c10.jpg"),
(NULL,"1568","北欧日式全实木床1.8米双人床1.5M木床1.2单人床卧室简约全套家具","26734","45","http://localhost:3000/paou_img/c11.jpg"),
(NULL,"368","时尚铁艺床公主床1.2米单人床1.5米环保铁架床1.8米铁艺双人床","2334","45","http://localhost:3000/paou_img/c12.jpg"),
(NULL,"348","简约时尚铁艺床酒店宾馆出租房专用铁床 单人床1.5 1.8米双人床","3","45","http://localhost:3000/paou_img/c13.jpg"),
(NULL,"345","精美卧室套餐 美式卧室家具组合 床+衣柜+妆台+床头柜全套","4","45","http://localhost:3000/paou_img/c14.jpg"),
(NULL,"78","创意脏衣篮 折叠脏衣篓田园洗衣筐布艺大号脏衣服玩具收纳篮","26754","45","http://localhost:3000/paou_img/c2.jpg"),
(NULL,"840","美式实木皮艺梳妆凳 梳妆桌 小户型乡村椭圆形梳妆台","734","45","http://localhost:3000/paou_img/c3.jpg"),
(NULL,"598","白色高低床双层床抽屉 拖床 书架专拍","334","45","http://localhost:3000/paou_img/c4.jpg"),
(NULL,"1598","北欧纯日式全实木主卧室成人婚床原木1.5m1.8米双人现代简约家具","4","45","http://localhost:3000/paou_img/c5.jpg"),
(NULL,"6460","创意真皮床双人床现代婚床1.8米1.5榻榻米床储物床皮艺床软床大床","2","45","http://localhost:3000/paou_img/c6.jpg"),
(NULL,"16480","现代简约卧室全套家具 衣柜妆台床头柜高电视柜组合套装","2334","45","http://localhost:3000/paou_img/c7.jpg"),
(NULL,"3998","卧室家具套装组合 床 衣柜全套家具美式乡村成套主卧家具","2","45","http://localhost:3000/paou_img/c8.jpg"),
(NULL,"1200","新中式床现代中式实木双人床卧室1.8床2M大床婚床样板房全套家具","24","45","http://localhost:3000/paou_img/c9.jpg"),
(NULL,"7653","新中式全实木床橡木现代简约双人床1.8/1.5米实木床","23","56","http://localhost:3000/paou_img/c26.jpg"),
(NULL,"4655","高低床双层床成人上下床套房家具功能书桌衣柜组合床套装","344","56","http://localhost:3000/paou_img/c27.jpg"),
(NULL,"4565","双层床上下高低床配套扶手梯柜储物楼梯柜定制多色可选","2674","56","http://localhost:3000/paou_img/c28.jpg"),
(NULL,"1200","新中式床现代中式实木双人床卧室1.8床2M大床婚床样板房全套家具","24","45","http://localhost:3000/paou_img/c9.jpg"),
(NULL,"125","卧室家具套装组合四件套 床和衣柜整套全套套房床柜成套家具","34","45","http://localhost:3000/paou_img/c10.jpg"),
(NULL,"1568","北欧日式全实木床1.8米双人床1.5M木床1.2单人床卧室简约全套家具","26734","45","http://localhost:3000/paou_img/c11.jpg"),
(NULL,"368","时尚铁艺床公主床1.2米单人床1.5米环保铁架床1.8米铁艺双人床","2334","45","http://localhost:3000/paou_img/c12.jpg"),
(NULL,"348","简约时尚铁艺床酒店宾馆出租房专用铁床 单人床1.5 1.8米双人床","3","45","http://localhost:3000/paou_img/c13.jpg"),
(NULL,"345","精美卧室套餐 美式卧室家具组合 床+衣柜+妆台+床头柜全套","4","45","http://localhost:3000/paou_img/c14.jpg"),
(NULL,"125","卧室家具套装组合四件套 床和衣柜整套全套套房床柜成套家具","34","45","http://localhost:3000/paou_img/c10.jpg");

-- 城市字母
CREATE TABLE jk_zi(
     lid INT PRIMARY KEY AUTO_INCREMENT,
    lname VARCHAR(12)
);
INSERT INTO jk_zi VALUES
(NULL,"A"),(NULL,"B"),(NULL,"C"),(NULL,"D"),(NULL,"E"),(NULL,"F"),(NULL,"G"),(NULL,"H"),(NULL,"J"),
(NULL,"K"),(NULL,"L"),(NULL,"M"),(NULL,"N"),(NULL,"P"),(NULL,"Q"),(NULL,"R"),(NULL,"S"),(NULL,"T"),
(NULL,"W"),(NULL,"X"),(NULL,"Y"),(NULL,"Z");

CREATE TABLE jk_carousel(
     cid INT PRIMARY KEY AUTO_INCREMENT,
     cimg VARCHAR(64)
);
INSERT INTO jk_carousel VALUES
(NULL,"http://localhost:3000/jk_img/l1.jpg"),(NULL,"http://localhost:3000/jk_img/l2.jpg"),(NULL,"http://localhost:3000/jk_img/l3.jpg");


CREATE TABLE jk_recom(
     rid INT PRIMARY KEY AUTO_INCREMENT,
     rimg VARCHAR(64),
     rtitle VARCHAR(64),
     price VARCHAR(12),
     eva VARCHAR(12)
);
INSERT INTO jk_recom VALUES
(NULL,"http://localhost:3000/jk_img/DC1.jpg","欧式床主卧双人床1.8米床公主床高箱床木床法式床大婚床","4200","122"),
(NULL,"http://localhost:3000/jk_img/DC1.jpg","欧式床主卧双人床1.8米床公主床高箱床木床法式床大婚床","4200","122"),
(NULL,"http://localhost:3000/jk_img/DC1.jpg","欧式床主卧双人床1.8米床公主床高箱床木床法式床大婚床","4200","122"),
(NULL,"http://localhost:3000/jk_img/DC1.jpg","欧式床主卧双人床1.8米床公主床高箱床木床法式床大婚床","4200","122"),
(NULL,"http://localhost:3000/jk_img/DC1.jpg","欧式床主卧双人床1.8米床公主床高箱床木床法式床大婚床","4200","122");


CREATE TABLE jk_look(
     rid INT PRIMARY KEY AUTO_INCREMENT,
     rimg VARCHAR(64),
     rtitle VARCHAR(64),
     price VARCHAR(12)
);
INSERT INTO jk_look VALUES
(NULL,"http://localhost:3000/jk_img/5a6.jpg","欧式床双人床全实木床奢华公主床法式床新古典床主卧婚床卧室家具","3434"),
(NULL,"http://localhost:3000/jk_img/5a6.jpg","欧式床双人床全实木床奢华公主床法式床新古典床主卧婚床卧室家具","3434"),
(NULL,"http://localhost:3000/jk_img/5a6.jpg","欧式床双人床全实木床奢华公主床法式床新古典床主卧婚床卧室家具","3434"),
(NULL,"http://localhost:3000/jk_img/5a6.jpg","欧式床双人床全实木床奢华公主床法式床新古典床主卧婚床卧室家具","3434"),
(NULL,"http://localhost:3000/jk_img/5a6.jpg","欧式床双人床全实木床奢华公主床法式床新古典床主卧婚床卧室家具","3434");



CREATE TABLE jk_userp(
     rid INT PRIMARY KEY AUTO_INCREMENT,
     rimg VARCHAR(64),
     uname VARCHAR(12),
     utime VARCHAR(32),
     rtitle VARCHAR(64)
);
INSERT INTO jk_userp VALUES
(NULL,"http://localhost:3000/jk_img/6fe.jpg","宋怀诚","2018-04-21 13:02:51","我一直想买一款这样的床，终于买回来了，线下实体网站没少看，网上也没少对比，还是局的这款床的性价比很高，收到货果真没有买错，已经安装好了，看看吧。是不是不错，想买的的赶快下手吧！"),
(NULL,"http://localhost:3000/jk_img/6fe.jpg","宋怀诚","2018-04-21 13:02:51","我一直想买一款这样的床，终于买回来了，线下实体网站没少看，网上也没少对比，还是局的这款床的性价比很高，收到货果真没有买错，已经安装好了，看看吧。是不是不错，想买的的赶快下手吧！"),
(NULL,"http://localhost:3000/jk_img/6fe.jpg","宋怀诚","2018-04-21 13:02:51","我一直想买一款这样的床，终于买回来了，线下实体网站没少看，网上也没少对比，还是局的这款床的性价比很高，收到货果真没有买错，已经安装好了，看看吧。是不是不错，想买的的赶快下手吧！"),
(NULL,"http://localhost:3000/jk_img/6fe.jpg","宋怀诚","2018-04-21 13:02:51","我一直想买一款这样的床，终于买回来了，线下实体网站没少看，网上也没少对比，还是局的这款床的性价比很高，收到货果真没有买错，已经安装好了，看看吧。是不是不错，想买的的赶快下手吧！"),
(NULL,"http://localhost:3000/jk_img/6fe.jpg","宋怀诚","2018-04-21 13:02:51","我一直想买一款这样的床，终于买回来了，线下实体网站没少看，网上也没少对比，还是局的这款床的性价比很高，收到货果真没有买错，已经安装好了，看看吧。是不是不错，想买的的赶快下手吧！"),
(NULL,"http://localhost:3000/jk_img/6fe.jpg","宋怀诚","2018-04-21 13:02:51","我一直想买一款这样的床，终于买回来了，线下实体网站没少看，网上也没少对比，还是局的这款床的性价比很高，收到货果真没有买错，已经安装好了，看看吧。是不是不错，想买的的赶快下手吧！"),
(NULL,"http://localhost:3000/jk_img/6fe.jpg","宋怀诚","2018-04-21 13:02:51","我一直想买一款这样的床，终于买回来了，线下实体网站没少看，网上也没少对比，还是局的这款床的性价比很高，收到货果真没有买错，已经安装好了，看看吧。是不是不错，想买的的赶快下手吧！"),
(NULL,"http://localhost:3000/jk_img/6fe.jpg","宋怀诚","2018-04-21 13:02:51","我一直想买一款这样的床，终于买回来了，线下实体网站没少看，网上也没少对比，还是局的这款床的性价比很高，收到货果真没有买错，已经安装好了，看看吧。是不是不错，想买的的赶快下手吧！");

CREATE TABLE jk_article(
     rid INT PRIMARY KEY AUTO_INCREMENT,
     rimg VARCHAR(64),
     uname VARCHAR(12),
     rtitle VARCHAR(64)
);
INSERT INTO jk_article VALUES
(NULL,"http://localhost:3000/jk_img/c12093.jpg"," 梦境,很好,醒来更好——床的告别","床是供人躺在上面睡觉的家具。人的三分之一的时间都是在床上度过的。 经过千百年的演化不仅是睡觉的工具，也是家庭的装饰品之一了。床的种类有平板床、四柱床、双层床、日床等。"),
(NULL,"http://localhost:3000/jk_img/c12093.jpg"," 梦境,很好,醒来更好——床的告别","床是供人躺在上面睡觉的家具。人的三分之一的时间都是在床上度过的。 经过千百年的演化不仅是睡觉的工具，也是家庭的装饰品之一了。床的种类有平板床、四柱床、双层床、日床等。"),
(NULL,"http://localhost:3000/jk_img/c12093.jpg"," 梦境,很好,醒来更好——床的告别","床是供人躺在上面睡觉的家具。人的三分之一的时间都是在床上度过的。 经过千百年的演化不仅是睡觉的工具，也是家庭的装饰品之一了。床的种类有平板床、四柱床、双层床、日床等。"),
(NULL,"http://localhost:3000/jk_img/c12093.jpg"," 梦境,很好,醒来更好——床的告别","床是供人躺在上面睡觉的家具。人的三分之一的时间都是在床上度过的。 经过千百年的演化不仅是睡觉的工具，也是家庭的装饰品之一了。床的种类有平板床、四柱床、双层床、日床等。"),
(NULL,"http://localhost:3000/jk_img/c12093.jpg"," 梦境,很好,醒来更好——床的告别","床是供人躺在上面睡觉的家具。人的三分之一的时间都是在床上度过的。 经过千百年的演化不仅是睡觉的工具，也是家庭的装饰品之一了。床的种类有平板床、四柱床、双层床、日床等。"),
(NULL,"http://localhost:3000/jk_img/c12093.jpg"," 梦境,很好,醒来更好——床的告别","床是供人躺在上面睡觉的家具。人的三分之一的时间都是在床上度过的。 经过千百年的演化不仅是睡觉的工具，也是家庭的装饰品之一了。床的种类有平板床、四柱床、双层床、日床等。");


CREATE TABLE jk_problem(
     rid INT PRIMARY KEY AUTO_INCREMENT,
     rtitle VARCHAR(64),
     rimg VARCHAR(64),
     uname VARCHAR(12),
     unei VARCHAR(128),
     utime VARCHAR(32),
     look VARCHAR(12),
     da  VARCHAR(12)
);
INSERT INTO jk_problem VALUES
(NULL,"买什么样的床好?","http://localhost:3000/jk_img/a120 (1).jpg","舍得","环保当然选实木的，不过现在用的多的还是板式的，即密度板的，经济实用。也不需用太长时间。板式家具怕潮。不是太结实，特别是连接部位，不耐挪动。实木家具环保，结实，防潮比板式要好。实木板面大的都用拼接板，如果用整块木头开板反而会变形，这种拼接板并不是简单地拼在一起的，两个断面总有一面是...","01-26 03:46","233","23"),
(NULL,"买什么样的床好?","http://localhost:3000/jk_img/a120 (1).jpg","舍得","环保当然选实木的，不过现在用的多的还是板式的，即密度板的，经济实用。也不需用太长时间。板式家具怕潮。不是太结实，特别是连接部位，不耐挪动。实木家具环保，结实，防潮比板式要好。实木板面大的都用拼接板，如果用整块木头开板反而会变形，这种拼接板并不是简单地拼在一起的，两个断面总有一面是...","01-26 03:46","233","23"),
(NULL,"买什么样的床好?","http://localhost:3000/jk_img/a120 (1).jpg","舍得","环保当然选实木的，不过现在用的多的还是板式的，即密度板的，经济实用。也不需用太长时间。板式家具怕潮。不是太结实，特别是连接部位，不耐挪动。实木家具环保，结实，防潮比板式要好。实木板面大的都用拼接板，如果用整块木头开板反而会变形，这种拼接板并不是简单地拼在一起的，两个断面总有一面是...","01-26 03:46","233","23"),
(NULL,"买什么样的床好?","http://localhost:3000/jk_img/a120 (1).jpg","舍得","环保当然选实木的，不过现在用的多的还是板式的，即密度板的，经济实用。也不需用太长时间。板式家具怕潮。不是太结实，特别是连接部位，不耐挪动。实木家具环保，结实，防潮比板式要好。实木板面大的都用拼接板，如果用整块木头开板反而会变形，这种拼接板并不是简单地拼在一起的，两个断面总有一面是...","01-26 03:46","233","23"),
(NULL,"买什么样的床好?","http://localhost:3000/jk_img/a120 (1).jpg","舍得","环保当然选实木的，不过现在用的多的还是板式的，即密度板的，经济实用。也不需用太长时间。板式家具怕潮。不是太结实，特别是连接部位，不耐挪动。实木家具环保，结实，防潮比板式要好。实木板面大的都用拼接板，如果用整块木头开板反而会变形，这种拼接板并不是简单地拼在一起的，两个断面总有一面是...","01-26 03:46","233","23"),
(NULL,"买什么样的床好?","http://localhost:3000/jk_img/a120 (1).jpg","舍得","环保当然选实木的，不过现在用的多的还是板式的，即密度板的，经济实用。也不需用太长时间。板式家具怕潮。不是太结实，特别是连接部位，不耐挪动。实木家具环保，结实，防潮比板式要好。实木板面大的都用拼接板，如果用整块木头开板反而会变形，这种拼接板并不是简单地拼在一起的，两个断面总有一面是...","01-26 03:46","233","23"),
(NULL,"买什么样的床好?","http://localhost:3000/jk_img/a120 (1).jpg","舍得","环保当然选实木的，不过现在用的多的还是板式的，即密度板的，经济实用。也不需用太长时间。板式家具怕潮。不是太结实，特别是连接部位，不耐挪动。实木家具环保，结实，防潮比板式要好。实木板面大的都用拼接板，如果用整块木头开板反而会变形，这种拼接板并不是简单地拼在一起的，两个断面总有一面是...","01-26 03:46","233","23");


-- 图片详情大小图片
CREATE TABLE jk_primg(
     pid INT PRIMARY KEY AUTO_INCREMENT,
     pro_in INT,
     bigimg VARCHAR(128),
     small  VARCHAR(128)
);
INSERT INTO jk_primg VALUES
(NULL,1,"http://localhost:3000/jk_img/c9865.jpg","http://localhost:3000/jk_img/c640480.jpg"),
(NULL,1,"http://localhost:3000/jk_img/c9865 (1).jpg","http://localhost:3000/jk_img/c640480 (1).jpg"),
(NULL,1,"http://localhost:3000/jk_img/c9865 (2).jpg","http://localhost:3000/jk_img/c640480 (2).jpg"),
(NULL,1,"http://localhost:3000/jk_img/c9865 (3).jpg","http://localhost:3000/jk_img/c640480 (3).jpg"),
(NULL,1,"http://localhost:3000/jk_img/c9865 (4).jpg","http://localhost:3000/jk_img/c640480 (4).jpg"),
(NULL,1,"http://localhost:3000/jk_img/c9865 (2).jpg","http://localhost:3000/jk_img/c640480 (2).jpg"),
(NULL,1,"http://localhost:3000/jk_img/c9865 (3).jpg","http://localhost:3000/jk_img/c640480 (3).jpg"),
(NULL,2,"http://localhost:3000/jk_img/c98651.jpg","http://localhost:3000/jk_img/c6404801.jpg"),
(NULL,2,"http://localhost:3000/jk_img/c98651 (1).jpg","http://localhost:3000/jk_img/c6404801 (1).jpg"),
(NULL,2,"http://localhost:3000/jk_img/c98651 (2).jpg","http://localhost:3000/jk_img/c6404801 (2).jpg"),
(NULL,2,"http://localhost:3000/jk_img/c98651 (3).jpg","http://localhost:3000/jk_img/c6404801 (3).jpg"),
(NULL,2,"http://localhost:3000/jk_img/c98651 (4).jpg","http://localhost:3000/jk_img/c6404801 (4).jpg"),
(NULL,2,"http://localhost:3000/jk_img/c98651 (2).jpg","http://localhost:3000/jk_img/c6404801 (2).jpg"),
(NULL,2,"http://localhost:3000/jk_img/c98651 (3).jpg","http://localhost:3000/jk_img/c6404801 (3).jpg"),
(NULL,3,"http://localhost:3000/jk_img/c98652.jpg","http://localhost:3000/jk_img/c6404802.jpg"),
(NULL,3,"http://localhost:3000/jk_img/c98652 (1).jpg","http://localhost:3000/jk_img/c6404802 (1).jpg"),
(NULL,3,"http://localhost:3000/jk_img/c98652 (2).jpg","http://localhost:3000/jk_img/c6404802 (2).jpg"),
(NULL,3,"http://localhost:3000/jk_img/c98652 (3).jpg","http://localhost:3000/jk_img/c6404802 (3).jpg"),
(NULL,3,"http://localhost:3000/jk_img/c98652 (4).jpg","http://localhost:3000/jk_img/c6404802 (4).jpg"),
(NULL,3,"http://localhost:3000/jk_img/c98652 (2).jpg","http://localhost:3000/jk_img/c6404802 (2).jpg"),
(NULL,3,"http://localhost:3000/jk_img/c98652 (3).jpg","http://localhost:3000/jk_img/c6404802 (3).jpg"),
(NULL,4,"http://localhost:3000/jk_img/c98653.jpg","http://localhost:3000/jk_img/c6404803.jpg"),
(NULL,4,"http://localhost:3000/jk_img/c98653 (1).jpg","http://localhost:3000/jk_img/c6404803 (1).jpg"),
(NULL,4,"http://localhost:3000/jk_img/c98653 (2).jpg","http://localhost:3000/jk_img/c6404803 (2).jpg"),
(NULL,4,"http://localhost:3000/jk_img/c98653 (3).jpg","http://localhost:3000/jk_img/c6404803 (3).jpg"),
(NULL,4,"http://localhost:3000/jk_img/c98653 (4).jpg","http://localhost:3000/jk_img/c6404803 (4).jpg"),
(NULL,4,"http://localhost:3000/jk_img/c98653 (2).jpg","http://localhost:3000/jk_img/c6404803 (2).jpg"),
(NULL,4,"http://localhost:3000/jk_img/c98653 (3).jpg","http://localhost:3000/jk_img/c6404803 (3).jpg"),
(NULL,5,"http://localhost:3000/jk_img/c98654.jpg","http://localhost:3000/jk_img/c6404804.jpg"),
(NULL,5,"http://localhost:3000/jk_img/c98654 (1).jpg","http://localhost:3000/jk_img/c6404804 (1).jpg"),
(NULL,5,"http://localhost:3000/jk_img/c98654 (2).jpg","http://localhost:3000/jk_img/c6404804 (2).jpg"),
(NULL,5,"http://localhost:3000/jk_img/c98654 (3).jpg","http://localhost:3000/jk_img/c6404804 (3).jpg"),
(NULL,5,"http://localhost:3000/jk_img/c98654 (4).jpg","http://localhost:3000/jk_img/c6404804 (4).jpg"),
(NULL,5,"http://localhost:3000/jk_img/c98654 (2).jpg","http://localhost:3000/jk_img/c6404804 (2).jpg"),
(NULL,5,"http://localhost:3000/jk_img/c98654 (3).jpg","http://localhost:3000/jk_img/c6404804 (3).jpg"),
(NULL,6,"http://localhost:3000/jk_img/c98655.jpg","http://localhost:3000/jk_img/c6404805.jpg"),
(NULL,6,"http://localhost:3000/jk_img/c98655 (1).jpg","http://localhost:3000/jk_img/c6404805 (1).jpg"),
(NULL,6,"http://localhost:3000/jk_img/c98655 (2).jpg","http://localhost:3000/jk_img/c6404805 (2).jpg"),
(NULL,6,"http://localhost:3000/jk_img/c98655 (3).jpg","http://localhost:3000/jk_img/c6404805 (3).jpg"),
(NULL,6,"http://localhost:3000/jk_img/c98655 (4).jpg","http://localhost:3000/jk_img/c6404805 (4).jpg"),
(NULL,6,"http://localhost:3000/jk_img/c98655 (2).jpg","http://localhost:3000/jk_img/c6404805 (2).jpg"),
(NULL,6,"http://localhost:3000/jk_img/c98655 (3).jpg","http://localhost:3000/jk_img/c6404805 (3).jpg"),
(NULL,7,"http://localhost:3000/jk_img/c98656.jpg","http://localhost:3000/jk_img/c6404806.jpg"),
(NULL,7,"http://localhost:3000/jk_img/c98656 (1).jpg","http://localhost:3000/jk_img/c6404806 (1).jpg"),
(NULL,7,"http://localhost:3000/jk_img/c98656 (2).jpg","http://localhost:3000/jk_img/c6404806 (2).jpg"),
(NULL,7,"http://localhost:3000/jk_img/c98656 (3).jpg","http://localhost:3000/jk_img/c6404806 (3).jpg"),
(NULL,7,"http://localhost:3000/jk_img/c98656 (4).jpg","http://localhost:3000/jk_img/c6404806 (4).jpg"),
(NULL,7,"http://localhost:3000/jk_img/c98656 (2).jpg","http://localhost:3000/jk_img/c6404806 (2).jpg"),
(NULL,7,"http://localhost:3000/jk_img/c98656 (3).jpg","http://localhost:3000/jk_img/c6404806 (3).jpg"),
(NULL,8,"http://localhost:3000/jk_img/c98657.jpg","http://localhost:3000/jk_img/c6404807.jpg"),
(NULL,8,"http://localhost:3000/jk_img/c98657 (1).jpg","http://localhost:3000/jk_img/c6404807 (1).jpg"),
(NULL,8,"http://localhost:3000/jk_img/c98657 (2).jpg","http://localhost:3000/jk_img/c6404807 (2).jpg"),
(NULL,8,"http://localhost:3000/jk_img/c98657 (3).jpg","http://localhost:3000/jk_img/c6404807 (3).jpg"),
(NULL,8,"http://localhost:3000/jk_img/c98657 (1).jpg","http://localhost:3000/jk_img/c6404807 (1).jpg"),
(NULL,8,"http://localhost:3000/jk_img/c98657 (2).jpg","http://localhost:3000/jk_img/c6404807 (2).jpg"),
(NULL,8,"http://localhost:3000/jk_img/c98657 (4).jpg","http://localhost:3000/jk_img/c6404807 (4).jpg");









CREATE TABLE jk_comm(
     pid INT PRIMARY KEY AUTO_INCREMENT,
     pro_in INT,
     ctitle VARCHAR(128),   #标题
     cprice  VARCHAR(12),    #促销价
     sprice  VARCHAR(12),    #市场价
     sold  VARCHAR(12),      #已售
     eva  VARCHAR(12),       #评论
     size VARCHAR(128),    #尺寸
     door VARCHAR(12),     #门
     color VARCHAR(24),    #颜色
     jieg  VARCHAR(128)    #家具结构
);
INSERT INTO jk_comm VALUES
(NULL,1,"现代简约1.5布艺多功能1.8米双人板式床气动高箱床榻榻米大储物床","5156","14508","0","0","1500mm*2000mm","2","多功能高箱床","组装式箱体床"),
(NULL,1,"现代简约1.5布艺多功能1.8米双人板式床气动高箱床榻榻米大储物床","7558","14508","0","0","1500mm*2000mm","4","多功能高箱床(单边床头柜)",""),
(NULL,1,"现代简约1.5布艺多功能1.8米双人板式床气动高箱床榻榻米大储物床","7556","14508","0","0","1500mm*2000mm","6","多功能高箱床(双边床头柜)",""),
(NULL,2,"欧式双人床实木雕花卧室皮艺床公主床法式别墅奢华大床婚床","15264","45834","3","23","1800mm*2000mm","2","欧式皮艺床","框架结构"),
(NULL,2,"欧式双人床实木雕花卧室皮艺床公主床法式别墅奢华大床婚床","15404","44508","3","3","1800mm*2000mm","4","欧式皮艺床","箱框结构"),
(NULL,3,"美式乡村田园简约布艺床1.5双人床1.8米主卧床品牌卧室家具011W","10195","19473","4","23","1500mm*2000mm","2","双人床","组装式架子床"),
(NULL,3,"美式乡村田园简约布艺床1.5双人床1.8米主卧床品牌卧室家具011W","12195","19473","5","23","1800mm*2000mm","4","单人床","箱框结构"),
(NULL,4,"美式乡村田园简约布艺床1.5双人床1.8米主卧床品牌卧室家具9011W","9563","20466","4","23","1500mm*2000mm","2","桔色","组装式架子床"),
(NULL,4,"美式乡村田园简约布艺床1.5双人床1.8米主卧床品牌卧室家具9011W","9763","20466","5","23","1800mm*2000mm","4","蓝色","箱框结构"),
(NULL,5,"家具 欧式衣柜 卧室二三四门衣柜 新古典法式白色衣柜","7630","14454","5","23","1800mm*2000mm","3","红色","箱框结构"),
(NULL,5,"家具 欧式衣柜 卧室二三四门衣柜 新古典法式白色衣柜","7630","15454","4","23","1500mm*2000mm","4","桔色","组装式架子床"),
(NULL,5,"家具 欧式衣柜 卧室二三四门衣柜 新古典法式白色衣柜","7630","16454","5","23","1800mm*2000mm","2","蓝色","箱框结构"),
(NULL,6,"北欧梳妆台现代简约卧室小户型烤漆伸缩化妆桌时尚妆镜组","8134","13774","4","23","1500mm*2000mm","4","胡桃色梳妆台","组装式架"),
(NULL,6,"北欧梳妆台现代简约卧室小户型烤漆伸缩化妆桌时尚妆镜组","8134","12774","5","23","1800mm*2000mm","2","胡桃色梳妆台+妆凳","箱框结构"),
(NULL,7,"美式全实木床双人1.5米1.8米主卧卧室家具成人白蜡木简约现代婚床","12975","42950","4","23","1500mm*2000mm","4","1.5米实木床","组装式架"),
(NULL,7,"美式全实木床双人1.5米1.8米主卧卧室家具成人白蜡木简约现代婚床","13975","42950","5","23","1800mm*2000mm","2","1.5米实木床+B床头","箱框结构"),
(NULL,7,"美式全实木床双人1.5米1.8米主卧卧室家具成人白蜡木简约现代婚床","14975","42950","5","23","1800mm*2000mm","2","1.8米实木床+A床头","箱框结构"),
(NULL,8,"全实木床欧式床新古典床1.5婚床1.8米双人床公主床法式床","15975","42590","5","23","1800mm*2000mm","2","黑色银边","组装结构"),
(NULL,8,"全实木床欧式床新古典床1.5婚床1.8米双人床公主床法式床","16975","49550","5","23","1500mm*2000mm","4","褐色白边","箱框结构");



CREATE TABLE jk_shopcard(
     pid INT PRIMARY KEY AUTO_INCREMENT,
     simg VARCHAR(64),
     ctitle VARCHAR(128),   #标题
     size VARCHAR(128),    #尺寸
     color VARCHAR(24),    #颜色
     cprice  INT,    #促销价
     num INT(10),
     uid INT
);


