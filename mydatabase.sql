-- MySQL dump 10.13  Distrib 5.5.20, for Win64 (x86)
--
-- Host: localhost    Database: mydatabase
-- ------------------------------------------------------
-- Server version	5.5.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `adminid` mediumint(9) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL,
  `email` varchar(32) DEFAULT '',
  `menus` text,
  `addtime` int(11) DEFAULT '0',
  `edittime` int(11) DEFAULT '0',
  `lastlogin` int(11) DEFAULT '0',
  `login_num` mediumint(9) DEFAULT '0',
  `lastip` varchar(16) DEFAULT '',
  PRIMARY KEY (`adminid`),
  KEY `username` (`username`,`password`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='管理员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (7,'xiaokang8','cac6d294364761c1b4bb4d5b7b3f6d5e','2730302828@qq.com',NULL,1449114149,1450404988,1451368595,16,'127.0.0.1'),(8,'xiaokang9','cac6d294364761c1b4bb4d5b7b3f6d5e','273030282@qq.com',NULL,1449114183,0,NULL,0,''),(9,'xiaokang10','cac6d294364761c1b4bb4d5b7b3f6d5e','888888888888888@qq.com',NULL,1449114232,1449799196,NULL,0,''),(10,'xiaokang11','cac6d294364761c1b4bb4d5b7b3f6d5e','273030282@qq.com',NULL,1449116117,0,NULL,0,''),(11,'xiaokang12','cac6d294364761c1b4bb4d5b7b3f6d5e','test@qq.com',NULL,1449119787,1449802780,NULL,0,''),(12,'xiaokang13','cac6d294364761c1b4bb4d5b7b3f6d5e','666666@qq.com',NULL,1449120045,1449740618,NULL,0,'');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` mediumint(9) DEFAULT '0',
  `title` varchar(128) DEFAULT '',
  `intro` varchar(256) DEFAULT '',
  `images` varchar(128) DEFAULT '',
  `content` text,
  `click` int(11) DEFAULT '0',
  `author` varchar(16) DEFAULT '',
  `addtime` int(11) DEFAULT '0',
  `edittime` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `type` (`type`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (12,6,'“全面二孩”有望元旦施行 社会抚养费存废未定','','','<p>\r\n	12月21日上午，十二届全国人民代表大会常务委员会第十八次会议审议《中华人民共和国人口与计划生育法修正案（草案）》（以下称草案）。\r\n</p>\r\n<p>\r\n	草案共八项内容，提出国家提倡一对夫妻生育两个子女、育龄夫妻自主选择避孕节育措施、禁止买卖生殖细胞、胚胎和代孕等内容。如草案通过审议，新法将于2016年1月1日起施行。\r\n</p>\r\n<p>\r\n	此前国家卫生计生委指导司负责人表示，“全面二孩”政策必须依法启动实施，修订后的《人口与计划生育法》施行之日，就是“全面二孩”政策正式实施之时。\r\n</p>\r\n<p>\r\n	<strong>国家提倡一对夫妻生育两个子女</strong>\r\n</p>\r\n<p>\r\n	根据草案，《人口与计划生育法》第十八条第一款“国家稳定现行生育政策，鼓励公民晚婚晚育，提倡一对夫妻生育一个子女”将修改为“国家提倡一对夫妻生育两个子女，符合法律、法规规定条件的，可以要求安排再生育子女”。\r\n</p>\r\n<p>\r\n	在北京大学法学院行政法教授湛中乐看来，“全面二孩”是人口政策的进步。为了更好地推行新政策，还应为公众提供更多便利的生育服务措施，“因为人不仅是消耗资源，还会创造更多的财富，把人口简单当作负担的观念应当改变。”\r\n</p>\r\n<p>\r\n	草案在完善生育政策的同时，强调要坚持计划生育基本国策。“我国是人口众多的国家，实行计划生育是国家的基本国策。国家采取综合措施，控制人口数量，提高人口素质”，这一规定在此次修改过程中并没有变化。\r\n</p>\r\n<p>\r\n	“我们是人口资源大国，应该通过人口教育投入、人口科技投入，提高全民的素质，使人力资源大国变成人力资源强国。”湛中乐说，“计划生育也应从指令性政策转向指导性政策，更多地由家庭来承担计划生育。”\r\n</p>\r\n<p>\r\n	<strong>“抢生”案件的抚养费征收要看具体情况</strong>\r\n</p>\r\n<p>\r\n	尽管新法落地在即，仍有一些问题悬置待决，比如社会抚养费的存废问题，以及与之相关的一票否决制、开除公职等相关行政处罚的问题。近来，许多地方法院因此陷于尴尬的审案境地。\r\n</p>\r\n<p>\r\n	国家卫计委主任李斌在做草案说明时指出，对存在分歧、暂时形不成共识的问题以及适合在配套法规中解决的问题，暂不修改。\r\n</p>\r\n<p>\r\n	在湛中乐看来，这不是简单的“收”或“不收”的问题，“因为涉及到的现实情况非常复杂，有些是在独生子女政策期间的‘超生’，有些是五中全会政策公布以后怀孕，因此还是要根据具体的情况来审理，如果是在严格的独生子女政策期间的‘超生’，就应该按照当时的法律来处理。”\r\n</p>\r\n<p>\r\n	<strong>禁止代孕上升为法律</strong>\r\n</p>\r\n<p>\r\n	值得注意的是，此次围绕实施全面二孩政策进行的法律修正，还专门引入了“禁止买卖精子、卵子、受精卵和胚胎；禁止以任何形式实施代孕”的规定。\r\n</p>\r\n<p>\r\n	“全面二孩可能会刺激潜在的生育需求，但有些人可能因为年龄、身体状况失去了生育能力，如果他特别想要生育，那么可能就会想些别的办法，所以不排除全面两孩可能会刺激代孕需求。”湛中乐向21世纪经济报道记者解释。\r\n</p>\r\n<p>\r\n	“代孕会引发一系列的法律、伦理、社会问题，比如代孕过程中的事故怎么解决。这里的规范是为了防范潜在的纠纷、争议。这是很严肃的事，规范有其道理。”他说。\r\n</p>\r\n<p>\r\n	中国政法大学副教授朱巍说，“我国的伦理学研究还不发达，并在决策中缺少道德伦理委员会，这导致在进行相关立法时可能缺少充分论证和支持”。\r\n</p>\r\n<p>\r\n	朱巍认为，如果没有伦理方面的充分论证，立法在禁止买卖受精卵、胚胎，禁止代孕等规定之外，还可以引申出诸多相关问题，比如是否应该禁止同性婚姻，和是否应该禁止同性伴侣领养儿童等。\r\n</p>\r\n<p>\r\n	中国人民大学法学院教授杨立新介绍，国外大多数国家同样禁止代孕，但他认为应该区分不同情况。\r\n</p>\r\n<p>\r\n	2014年，无锡市中级法院宣判了国内首例人体冷冻胚胎权属案，在这起案件中，一对独生子女夫妻在车祸中去世，为延续两家的血脉，男方父母以女方父母为被告，以南京市鼓楼医院为第三人，提起人的冷冻胚胎继承之诉，主张第三人将冷冻胚胎的处置权交付给原、被告双方继承。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	“如果法律禁止代孕，那意味着这两个失独家庭将‘无后’，在伦理上很难让他们接受”，杨立新说。\r\n</p>\r\n<p>\r\n	值得注意的是，目前国内关于\r\n禁止代孕的法律法规只有原卫生部颁发的《人类辅助生殖技术管理办法》。但杨立新介绍，就在上述无锡市中级法院的判决中，法院认为这部《办法》只是卫生行政\r\n管理部门对相关医疗机构和人员在从事人工生殖辅助技术时的管理规定，南京市鼓楼医院不得基于部门规章的行政管理规定，对抗当事人基于私法所享有的正当权\r\n利。\r\n</p>\r\n<p>\r\n	而草案一旦通过，意味着关于禁止代孕的规定从部门规章上升到了法律。\r\n</p>',0,'',1450777755,1451032295),(13,6,'中央经济工作会议举行 习近平李克强作重要讲话','','','<p>\r\n	12月18日至21日，中央经济工作会议在北京举行。中共中央总书记、国家主席、中央军委主席习近平发表重要讲话。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	新华网北京12月21日电  \r\n中央经济工作会议12月18日至21日在北京举行。中共中央总书记、国家主席、中央军委主席习近平，中共中央政治局常委、国务院总理李克强，中共中央政治\r\n局常委、全国人大常委会委员长张德江，中共中央政治局常委、全国政协主席俞正声，中共中央政治局常委、中央书记处书记刘云山，中共中央政治局常委、中央纪\r\n委书记王岐山，中共中央政治局常委、国务院副总理张高丽出席会议。\r\n</p>\r\n<p>\r\n	习近平在会上发表重要讲话，总结2015年经济工作，分析当前国内国际经\r\n济形势，部署2016年经济工作，重点是落实“十三五”规划建议要求，推进结构性改革，推动经济持续健康发展。李克强在讲话中阐述了明年宏观经济政策取\r\n向，具体部署了明年经济社会发展重点工作，并作总结讲话。\r\n</p>',0,'',1450777925,1451032279),(14,6,'习近平签第三十六号至四十一号主席令','','','<div class=\"otitle\">\r\n	（原标题：习近平签署第三十六号至四十一号主席令）\r\n</div>\r\n<div id=\"endText\" class=\"end-text\">\r\n	<p>\r\n		<strong>央视网消息</strong>(新闻联播)：国家主席习近平12月27日签署第36号、第37号、第38号、第39号、第40号、第41号主席令。\r\n	</p>\r\n	<p>\r\n		第36号主席令说，《中华人民共和国反恐怖主义法》已由中华人民共和国第十二届全国人民代表大会常务委员会第十八次会议于2015年12月27日通过，现予公布，自2016年1月1日起施行。\r\n	</p>\r\n	<p>\r\n		第37号主席令说，《中华人民共和国反家庭暴力法》已由中华人民共和国第十二届全国人民代表大会常务委员会第十八次会议于2015年12月27日通过，现予公布，自2016年3月1日起施行。\r\n	</p>\r\n	<p>\r\n		第38号主席令说，《中华人民共和国国家勋章和国家荣誉称号法》已由中华人民共和国第十二届全国人民代表大会常务委员会第十八次会议于2015年12月27日通过，现予公布，自2016年1月1日起施行。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		第39号主席令说，《全国人民代表大会常务委员会关于修改&lt;中华人民共和国教育法&gt;的决定》已由中华人民共和国第十二届全国人民代表大会常务委员会第十八次会议于2015年12月27日通过，现予公布，自2016年6月1日起施行。\r\n	</p>\r\n	<p>\r\n		第40号主席令说，《全国人民代表大会常务委员会关于修改&lt;中华人民共和国高等教育法&gt;的决定》已由中华人民共和国第十二届全国人民代表大会常务委员会第十八次会议于2015年12月27日通过，现予公布，自2016年6月1日起施行。\r\n	</p>\r\n	<p>\r\n		第41号主席令说，《全国人民代表大会常务委员会关于修改&lt;中华人民共和国人口与计划生育法&gt;的决定》已由中华人民共和国第十二届全国人民代表大会常务委员会第十八次会议于2015年12月27日通过，现予公布，自2016年1月1日起施行。\r\n	</p>\r\n</div>',0,'',1451269854,0),(15,6,'教育部:收到考研泄题举报 已报请公安机关调查','','','<img src=\"/assets/upload/image/20151228/20151228104624_635.jpg\" alt=\"\" /><br />\r\n<p>\r\n	2016年12月26日，上海，2016年全国硕士研究生考试正式打响。澎湃新闻记者 雍凯 图\r\n</p>\r\n<p>\r\n	<img src=\"/assets/upload/image/20151228/20151228104748_783.jpg\" alt=\"\" />\r\n</p>\r\n<p>\r\n	教育部表示坚决打击组织考试作弊等违法犯罪行为的微博\r\n</p>\r\n<p>\r\n	<img src=\"/assets/upload/image/20151228/20151228104814_650.jpg\" alt=\"\" />\r\n</p>\r\n<p>\r\n	英语试题\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<p>\r\n		12月27日晚间，教育部公开表示，收到刚刚结束的考研考试有泄题的举报，已经报请公安机关调查，将严厉打击国家教育考试刑事犯罪。\r\n	</p>\r\n	<p>\r\n		近日，澎湃新闻陆续接到不同来信爆料称，2016年全国硕士研究生统一入学考试的初试出现漏题的迹象。\r\n	</p>\r\n	<p>\r\n		从网友的爆料材料来看，内容多是微博、微信截图。其中，截图显示有英语考题的翻译、完形填空、重点单词等答案和提示等信息。\r\n	</p>\r\n	<p>\r\n		有爆料人称，截图是12月26日中午科目英语二考试前，相关考研微信群、QQ群和一些考研机构流传答案的证据，结果显示和后来的英语二考试内容完全一样。\r\n	</p>\r\n	<p>\r\n		此外，据“在书中寻找黄金屋未果的吃土少女”等微博网友称，涉及漏题的科目还有政治以及综合管理。也有爆料人表示，在12月27日，绝大多数涉及英语二漏题的话题内容被屏蔽。\r\n	</p>\r\n	<p>\r\n		为此，27日，澎湃新闻向教育部新闻办公室求证此事。\r\n	</p>\r\n	<p>\r\n		27日晚间21时55分，教育部新闻办公室官方微博“微言教育”发布长微博称，教育部表示坚决打击组织考试作弊等违法犯罪行为。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		这条长微博显示，2016年全国硕士研究生统一入学考试初试已平稳结束。日前，教育部有关部门接到举报，反映有考生收到个别科目部分试题的\r\n作答与考题内容相关。教育部有关部门立即报请公安机关进行调查。教育部表示，涉考违法犯罪行为严重破坏考试秩序，损害教育公平公正，教育部门将会同公安等\r\n有关部门严格按照《刑法修正案（九）》等法律法规，严厉打击国家教育考试刑事犯罪，绝不姑息。\r\n	</p>\r\n	<p>\r\n		根据教育部的规定，今年考研将特别加强作弊的处罚力度。2016年新颁布的考研六大政策其中之一就是根据《刑法修正案（九）》，首次明确组织作弊、提供作弊器材、非法出售或提供试题答案、代考替考等4类行为最高可判处七年有期徒刑。（来源：澎湃新闻记者）\r\n	</p>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>',0,'',1451270920,0),(16,6,'温州警方破获贩毒大案 全国数十所高校学生涉案','','','<p>\r\n	<img src=\"http://img1.cache.netease.com/catchpic/B/BF/BF531471020ABE89B8E678B23485A30B.jpg\" alt=\"\" />\r\n</p>\r\n<p>\r\n	龙湾公安分局通报会现场。 温州都市报 图\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src=\"http://img1.cache.netease.com/catchpic/1/19/19267C31FA918D82C0CE054CEFE44820.jpg\" alt=\"\" />\r\n</p>\r\n<p>\r\n	龙湾公安分局通报会现场。 温州都市报 图\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	澎湃新闻12月28日从浙江温州警方获悉，28日上午，温州龙湾区警方通报了1起公安部督办的特大网络贩毒案，缴获毒品200余公斤。值得注意的\r\n是，在侦查过程中，警方还发现大量高校大学生买家涉案吸食毒品的情况。根据目前掌握的情况，涉毒大学生涉及全国数十所高校。此外，还有部分高中生涉案。\r\n</p>\r\n<p>\r\n	今\r\n年5月，温州龙湾公安分局禁毒大队发现一些网络聊天群内有人涉嫌贩卖毒品大麻的线索，当时正值全国公安机关开展“网络扫毒”专项行动，该大队民警迅速对这\r\n些可疑线索进行排查，发现该网络聊天群确实存在交易毒品大麻情况，且数量巨大。后温州成立以龙湾公安分局为主体，市公安局相关部门警力共同参与的专案组展\r\n开侦查。\r\n</p>\r\n<p>\r\n	经一个多月侦查，专案组逐步摸清该网络贩毒团伙的组织架构、骨干力量和人员分布等基本情况。该团伙利用网络即时通讯工具进行联系，资金通过第三方支付交易，毒品通过快递伪装成茶叶进行贩卖，层层代理，毒品销往全国各地。由于案情重大，后该案被列为公安部毒品目标案件。\r\n</p>\r\n<p>\r\n	今\r\n年6月下旬，专案组分别在黑龙江绥芬河市、牡丹江市、山东省潍坊市等地成功抓获该案主要犯罪嫌疑人孙某某、赵某某、邬某某等5名犯罪嫌疑人，并在主要犯罪\r\n嫌疑人孙某某的居住点缴获毒品大麻13公斤。7月下旬，专案组分别在山东潍坊市、四川绵阳市、福建福州市等地抓获张某某、乔某某、倪某某等3名犯罪嫌疑\r\n人，并通过布控，成功截获犯罪嫌疑人“卢某”从加拿大发往山东潍坊的6磅毒品大麻。\r\n</p>\r\n<p>\r\n	专案组继续深挖，8月中旬赴新疆展开侦查，于8月18日\r\n抓获犯罪嫌疑人陈某某和杜某某，缴获毒品大麻7公斤和少量冰毒及台秤、冰筒等涉案工具，并查获广西上家发往新疆的10公斤毒品大麻。10月下旬，专案组又\r\n在云南腾冲抓获彭某、聂某、刘某某等3名犯罪嫌疑人，在广东汕尾抓获犯罪嫌疑人陈某。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	10月23日，专案组联合广西禁毒部门在南宁、河池等地抓获8名种植、贩卖毒品大麻的犯罪嫌疑人，摧毁大麻种植点两个，其中在天蛾大麻种植\r\n点摧毁种植大棚10多个，缴获2000多株大麻；在罗城大麻种植点摧毁10多亩地的种植大棚，缴获成品大麻130余公斤，半成品大麻20余公斤，新鲜大麻\r\n4000多株。\r\n</p>\r\n<p>\r\n	截止目前，警方共抓获犯罪嫌疑人23名，缴获毒品大麻约200余公斤，铲除大麻植株6000余株，摧毁大麻种植大棚20余亩，打掉7层贩毒网络，切断了一个通过结构严密、层层代理的网络贩毒团伙。（来源：澎湃新闻记者）\r\n</p>',0,'',1451284468,0),(17,6,'中国\"航母杀手\"攻击示意图曝光 轨迹多变','','','<p>\r\n	<img src=\"http://img4.cache.netease.com/cnews/2015/12/28/2015122813493035f06.jpg\" alt=\"\" />\r\n</p>\r\n<p>\r\n	东风”-21 甲弹道导弹发射照片\r\n</p>\r\n<p>\r\n	<img src=\"http://img5.cache.netease.com/cnews/2015/12/28/2015122813493292927_550.jpg\" alt=\"\" />\r\n</p>\r\n<p>\r\n	“东风”-21D弹道导弹\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src=\"http://img1.cache.netease.com/cnews/2015/12/28/20151228134934e30e5.jpg\" alt=\"\" />\r\n</p>\r\n<p>\r\n	示意图\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src=\"http://img1.cache.netease.com/cnews/2015/12/28/20151228134936f8747.jpg\" alt=\"\" />\r\n</p>\r\n<p>\r\n	示意图\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<p class=\"f_center\">\r\n		<img alt=\"中国\" src=\"http://img1.cache.netease.com/cnews/2015/12/28/201512281349384f93d.jpg\" /><br />\r\n新型“东风”-26弹道导弹\r\n	</p>\r\n	<p class=\"f_center\">\r\n		<img alt=\"中国\" src=\"http://img4.cache.netease.com/cnews/2015/12/28/2015122813494033ccc_550.jpg\" /><br />\r\n作战流程\r\n	</p>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	从传统的定义来说，弹道导弹就是在发射之后，遵循预先制定好的弹道，以接近抛物线的轨迹飞行的导弹。弹道导弹必有的部件是惯性制导仪（机械惯性陀螺\r\n或激光陀螺），它能实时测量导弹的加速度，从而推算出导弹此时的飞行路径，并与预先制定的弹道作比较。如果陀螺仪测量出导弹偏离了预先制定的弹道，弹上相\r\n应的控制系统就发出指令，使导弹改变飞行状态，直至与预定的弹道吻合，这也是“弹道导弹”一名的由来。\r\n</p>\r\n<p>\r\n	反舰弹道导弹并不是传统意义上的弹道\r\n导弹。很显然，要“反舰”，那么导弹的弹道就不能完全在发射之前就被预定。至少在飞行轨迹的末端，导弹必须具有依据目标的运动状态而临时进行自由机动的能\r\n力，只有这样，反舰弹道导弹才能命中在大海中航行的军舰。反舰弹道导弹是一种“非典型”的弹道导弹，从目前国际上对此类导弹形成的共识来看，一般认为，反\r\n舰弹道导弹是一种复合弹道导弹，它在弹道的上升段、中段与普通的弹道导弹一般无大的差别，但在弹道的末端，反舰弹道导弹的制导原理、制导系统与飞航式导弹\r\n相似。\r\n</p>\r\n<p>\r\n	冷战时期，美国研制的“潘兴”-2中程弹道导弹就是这样的复合弹道导弹。尽管它的打击对象不是军舰，而是大战时苏联陆军设置的前进后\r\n勤基地、装甲集群驻屯地，但为了打击这些位置随时可能发生变化的目标，“潘兴”-2 \r\n破天荒地在弹道导弹上同时安装了惯性制导、雷达地形匹配末制导两套制导系统。在导弹的上升段与中段，“潘兴”-2 \r\n维持抛物线弹道。当进入弹道末端、导弹重入大气层后，“潘兴”-2 的弹头即开始打开减速装置，使弹头的速度逐渐下降，从接近3000 米/ \r\n秒降低到1100 米/ \r\n秒。当弹头的速度降低到已不会引起黑障的时候，弹上的末端地形匹配制导雷达开机，扫描下方陆地，与输入导弹的电子地图进行比对识别。此后，导弹一边在大气\r\n层内滑翔，一边使用气动舵面，更精确地修订航迹，直至精确命中目标。\r\n</p>\r\n<p>\r\n	复杂的制导系统和控制系统使得“潘兴”-2 \r\n的外观也与其他弹道导弹显得不同。传统的单弹头弹道导弹，其弹头内只有战斗部，因而在导弹重入大气层时，只剩下一个圆锥体扎向地面。而“潘兴”-2 \r\n的弹头除了一枚战斗部，还需要安装整流罩、雷达、火控元件和飞行控制系统，因而“潘兴”-2的弹头又尖又长，外表呈流线型。弹头最前端是整流罩，内部装有\r\n雷达天线；接着是仪器舱，装有雷达的控制系统、火控元件；接下来才是战斗部。\r\n</p>\r\n<p>\r\n	媒体公布的“东风”-21D \r\n照片中，导弹头部也是又尖又长，这与“潘兴”-2 的外观可谓是异曲同工。不过，从技术发展的角度来说，服役于1985 \r\n年的“潘兴”-2，安装的制导雷达体积、重量偏大，在其20 \r\n多年之后才出世的“东风”-21D，弹上搭载的雷达在小型化方面应当有巨大的进步，即便是用较小直径的雷达天线，也可能拥有比“潘兴”-2 \r\n更远的探测距离和更大角度的探测扇面。甚至“东风”-21D \r\n有可能安装小型简易相控阵雷达，在获得更好的探测精度、探测距离的同时，导弹本身的体积还能进一步缩小。从成本上讲，相控阵雷达的造价比传统机械扫描雷达\r\n高，但对于反舰弹道导弹这样一种本身就比较昂贵、所要对付的目标更昂贵的武器来说，换用小型相控阵给全弹成本带来的涨幅，或许也是可以接受的。\r\n</p>\r\n<p>\r\n	国\r\n产“东风”-21 \r\n系列导弹是世界上当今唯一仍在发展的中程弹道导弹系统。相比之下，苏联解体之后俄罗斯便不再投入资源发展中导，美国则早早将中程战略打击任务交给了核“战\r\n斧”巡航导弹。“东风”-21 导弹研制于上世纪80 年代，最初部署在东北及华北地区，用于对苏联远东地区的要点进行威慑。90 \r\n年代中期的台海危机之后，“东风”-21 导弹的常规弹头型大量制造，主要部署在东南沿海。从结构上看，“东风”-21 \r\n采用二级布局，固体推进剂，火箭发动机、推进剂配方均与“巨浪”-1 潜射弹道导弹相似。“东风”-21 的初期型外观上也与“巨浪”-1 \r\n有一定的相似之处。从90 年代起，我国陆续推出“东风”-21 的改进型，其中“东风”-21C \r\n的整体性能已相当先进，该弹采用了末端机动变轨体制以增强突防能力，这为发展“东风”-21D 型反舰弹道导弹奠定了基础。简单地说，“东风”-21C \r\n型导弹在弹头增加了变向机构以及相应的控制系统，“东风”-21D 型导弹则是在“东风”-21C 的基础上，再增加了主动雷达末制导系统以及星- \r\n弹通信系统。\r\n</p>\r\n<p>\r\n	导弹系统的构成\r\n</p>\r\n<p>\r\n	反舰弹道导弹只是整个反舰弹道导弹作战系统的一部分。隔着两千多千米，发射一枚弹道导弹，就准确\r\n地命中一艘在海上自由航行的航空母舰，这显然是个高难度的技术活，需要一个庞大先进的系统予以支撑。如果粗略地划分，反舰弹道导弹系统是由以下4 \r\n个部分组成：导弹武器、发射平台、信息获取平台、通讯/ 指挥系统。导弹武器前文已有介绍，这里主要介绍后三个分系统的情况。\r\n</p>\r\n<p>\r\n	发射平台不仅\r\n是弹道导弹的发射车，它还包括了导弹的弹道设定系统、导弹基地，以及机动发射车的定位系统。发射平台必须连接在整个通讯/ \r\n指挥系统中，以获取弹道导弹所打击的目标参数，并依据战役指挥机构的命令决定是否发射导弹、发射多少枚。中国反舰弹道导弹的发射，目前来看仍由二炮的中程\r\n弹道导弹旅来执行，这意味着还需要在二炮和海军之间“打通经脉”，在两个军种间统一数据格式和通信协议，建立一条通畅的数据链和指挥通道。\r\n</p>\r\n<p>\r\n	信\r\n息获取平台是整个反舰弹道导弹系统的关键。从战役战术的要求来说，信息获取平台的使命是感知敌方水面舰艇战斗群的位置、航速、航向，以供反舰弹道导弹装订\r\n射击诸元。对敌方舰艇的监控应当是实时的，或至少是准实时的，否则反舰弹道导弹无法进行准确的射击，作战效率大打折扣。目前可用于对敌方水面舰艇实施监测\r\n的装备包括：海洋监视卫星群（约需15 \r\n颗以上的雷达侦查卫星组成群组）；远程长航时隐身无人机；大型预警机。此外，在必要的情况下，前出的我方水面舰艇、潜艇，如碰巧在雷达/ \r\n声呐探测范围内发现了敌舰，也可以提供相关的信息。\r\n</p>\r\n<p>\r\n	通讯/ \r\n指挥系统负责将上述三个平台连接起来。这个系统整合全战区的装备与作战平台，使其相互协调。由于战区总面积可能超过500 \r\n万平方千米，战区内的作战平台与探测平台多达数百个，因此需要一套庞大复杂的系统来保证将战区内的所有单元纳入统一的指挥体系中，并保证其能正常运行。这\r\n一套系统以卫星通信为基础，大部分设备与功能与当今的C4ISR 系统有相似之处，独特之处在于星- \r\n弹通信系统，即通信卫星与飞行中的反舰弹道导弹直接联系，向反舰导弹输入敌舰新的位置和航向参数，即传统意义上的中段修正指令，进一步提高反舰导弹的命中\r\n率。当然，中段修正指令不是每次导弹射击都会用到，如果敌舰在我方探测平台第一次发现其踪迹之后，仍傻不愣登地维持原来的航速和航向，那么导弹在飞行过程\r\n中，可以不需中段指令修正。但这一套系统仍然需要建立起来，以应对复杂的对海作战环境。\r\n</p>\r\n<p>\r\n	遂行反舰作战，第一步是必须发现目标。目前可由多个\r\n信息获取平台、以多种手段对目标可能海域进行探测。如敌方舰队正在进行通信或开启雷达，可以无线电测向装置对其进行概略定位。如果敌方通信时间足够长或是\r\n通信频段较为“原始”，无线电测向装置甚至可以精确定位，那么反舰弹道导弹就可以根据这些参数立即发射。但一般情况下，精确定位需要对海搜索雷达或红外探\r\n测装置发现敌方舰队，并对其进行一段时间的跟踪。这样不仅能对敌方舰队进行精确定位，还能准确地知道敌方舰队到底有几艘舰、舰种分别是什么，以便于指挥机\r\n构作出决策，我们到底要打掉对方多少艘船、打击哪几艘船。\r\n</p>\r\n<p>\r\n	接下来的流程，是信息获取平台将获取的信息传回指挥中心，由指挥中心的计算机系统解算出射击参数。如更高层级的指挥机构已作出“对敌方舰队实施打击”的决策并下放相应权限，参数就会发送至导弹发射平台，并立即输入到反舰弹道导弹，导弹随即发射。\r\n</p>\r\n<p>\r\n	射\r\n程2500 千米的弹道导弹最大飞行速度约2500 ～ 3000 米/ 秒，导弹从发射到击中目标约须20 \r\n分钟。如敌方舰队采取针对性的全速机动，在这段时间里，敌舰可能机动约10 海里。如弹上的主动雷达末制导系统最大探测距离80 \r\n千米、雷达搜索扇面30°，理论上敌舰在20 \r\n分钟内是跑不出末制导雷达的搜索范围的。但为保险起见，还可根据信息获取平台传来的实时信息，让在太空中飞行的反舰弹道导弹进行一到两次中段修正。\r\n</p>\r\n<p>\r\n	在\r\n接近目标所在区域后，导弹进入再入段，早已与一、二级助推器脱离的弹头张开阻力板，利用大气阻力减速。当速度降低到4 \r\n马赫以下时，包裹在弹头外部的炽热空气电离层消失，导弹雷达开机，主动搜索目标舰队，并依据雷达获取的敌方舰队信息，识别出哪一个目标才是导弹所要攻击的\r\n目标。接下来的事情，就是导弹与敌舰末端防御系统的对抗了。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	从上述作战流程可知，反舰弹道导弹并不神秘，它的所有分系统、平台都是我们可以理解的存在。搭建这样一个庞大的作战系统，也需要花费大量的\r\n资源，技术含量不亚于打造一支航母战斗群。不过这也是常理，世界上并不存在“投机取巧”的取胜之道。同时，反舰弹道导弹也并非不可拦截的，海基反导系统、\r\n高性能的区域防空系统都对反舰弹道导弹有一定的拦截能力。从中国目前的形势来看，反舰导弹并不是反航母唯一可行的方式，它的意义在于为中国新添了一种反航\r\n母的手段。毕竟“双管齐下”甚至“多管齐下”，让敌方的防御系统、指挥系统疲于奔命，是一个非常有效、事半功倍的突破方式。\r\n</p>',0,'',1451284618,0),(18,6,'深圳滑坡事故一失联17岁少年被找到 一直在网吧','','','<p>\r\n	从12月20日到今天，是深圳最为漫长的一周，突如其来的一场事故让人感到阵阵寒意。但是深圳这座爱心之城，再次表现出其可爱之处，来自社会各角落的爱心汇往一处，让寒冬里的深圳也充满了温暖。\r\n</p>\r\n<p>\r\n	<strong>社工帮忙找回一名失联者</strong>\r\n</p>\r\n<p>\r\n	在\r\n失联者名单上，17岁的陈某名列其中。他毕业后就和姐姐来深圳工作。事故发生后，陈某的姐姐赶紧拨打他的电话，但是电话一直关机。无法联系到陈某，姐姐只\r\n能到安置点登记失联者信息，然后在后方焦急等待。3天来，社工李彧、仇玲飞一直陪着她，整理搜寻陈某的各种有效信息。随着时间推移，一个又一个消息传来，\r\n陈某姐姐的情绪越来越焦急。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	在不断整理陈某资料时，社工发现他非常热衷网络游戏。这时候陈某的手机忽然开机，但是社工却一直没法和他取得联系。李彧和仇玲飞赶紧和公安\r\n部门及现场指挥部等相关部门汇报沟通，一步步追踪到其网络游戏的账号IP地址，同时根据线索发动周边派出所民警及网吧联络点的力量共同找寻。\r\n</p>\r\n<p>\r\n	经\r\n过1天搜索，25日下午，社工陪同等待多日的家属在一家网吧找到了陈某。被姐姐抱在怀里时陈某还有点发蒙。这几天他一直没留意外面发生了什么事，没想到自\r\n己的粗心让社会这么关注。“太谢谢你们了，人找到就好。”陈某的姐姐不断向社工道谢。昨天，在家人的陪伴下，陈某已经安全回到家乡贵州。\r\n</p>',0,'',1451284772,0),(19,7,'IS首领巴格达迪自称一切尚好 威胁袭击以色列','','','<p>\r\n	<p class=\"f_center\">\r\n		<img src=\"http://img1.cache.netease.com/catchpic/9/90/90D358FB42022005A7671E2B1697E31F.jpg\" alt=\"圣诞节期间，美国牵头的联军空袭拉马迪尚被“伊斯兰国”占领的地区。\" /><br />\r\n圣诞节期间，美国牵头的联军空袭拉马迪尚被“伊斯兰国”占领的地区。\r\n	</p>\r\n	<p class=\"f_center\">\r\n		<img src=\"http://img1.cache.netease.com/catchpic/B/BA/BAD1F2C818A752CFA105C799BF9A6CF1.jpg\" alt=\"巴格达迪去年夏天露面的资料图片\" /><br />\r\n巴格达迪去年夏天露面的资料图片\r\n	</p>\r\n	<p class=\"f_center\">\r\n		<img src=\"http://img1.cache.netease.com/catchpic/C/CD/CD3ABDE3571AAC048455519EB123CC0B.jpg\" alt=\"12月26日，伊拉克政府军向拉马迪市内被“伊斯兰国”占据的最后区域挺进。\" />\r\n	</p>\r\n</p>\r\n<p>\r\n	12月26日，伊拉克政府军向拉马迪市内被“伊斯兰国”占据的最后区域挺进。\r\n</p>\r\n<p>\r\n	“伊斯兰国”26日公开了一段据称为该组织首领阿布·贝克尔·巴格达迪的录音。在这段长达24分钟的录音中，巴格达迪自称“伊斯兰国”一切尚好，空袭只会增强其追随者的决心。\r\n</p>\r\n<p>\r\n	如果确认为巴格达迪录音，这将是他今年5月以来首次现声。眼下，“伊斯兰国”正遭受多国打击，战事失利，势头大不如前。\r\n</p>\r\n<p>\r\n	<b>声称“不会吓倒我们”威胁袭击以色列</b>\r\n</p>\r\n<p>\r\n	巴格达迪在录音中说，“伊斯兰国”遭遇整个世界的打击，但美国牵头的联军“不会吓倒我们”，“也不可能摧毁我们的信念，因为我们会是这一切的胜利者”。相反，美国人因为害怕，不敢发动地面战争和“伊斯兰国”面对面交锋。\r\n</p>\r\n<p>\r\n	“美国及其盟友想通过代理人和追随者摧毁哈里发国，”巴格达迪说，“一旦他们的联盟破裂或尾巴被斩断，他们就迫不及待地再建一个（联盟），最近又宣布了一个打着伊斯兰旗帜的沙特联盟。”\r\n</p>\r\n<p>\r\n	沙特本月15日宣布，已组建一个由34国组成的伊斯兰军事联盟，以打击包括“伊斯兰国”在内的恐怖主义组织。巴格达迪警告这些意图打击“伊斯兰国”的国家，他们将付出代价。\r\n</p>\r\n<p>\r\n	巴格达迪还威胁袭击以色列：“我们从未忘记你……每一天我们都更逼近你。”\r\n</p>\r\n<p>\r\n	这段录音发布于“伊斯兰国”关联网站，该网站先前多次发布“伊斯兰国”的消息。\r\n</p>\r\n<p>\r\n	<b>叙政府军在多条战线取得进展“伊斯兰军”首领被炸死</b>\r\n</p>\r\n<p>\r\n	在叙利亚，美国牵头的联军和俄罗斯空袭不断，“伊斯兰国”控制的多处油田被毁，这一组织多名高层被炸死。\r\n</p>\r\n<p>\r\n	叙利亚政府军总司令部26日发表声明说，在俄罗斯和叙利亚战机空袭掩护下，叙政府军过去几周在多条战线取得进展。\r\n</p>\r\n<p>\r\n	声明说，在俄叙战机空袭的掩护下，叙政府军在首都大马士革郊区、南部德拉省和苏韦达省、中部霍姆斯省和哈马省以及北部的拉塔基亚省、阿勒颇省取得重大进展。\r\n</p>\r\n<p>\r\n	声明说，叙政府军在过去几周取得了阿勒颇省西南部65个小镇的控制权，并在本月17日至26日期间，向极端组织的590个目标发动168轮空袭。声明强调，叙政府军将继续采取军事行动，直到消灭恐怖主义，使叙利亚恢复安定。\r\n</p>\r\n<p>\r\n	叙军方25日证实，“伊斯兰军”首领扎赫兰·阿卢什当天在叙空军对首都大马士革东郊的空袭中被炸死。在大马士革南郊，“伊斯兰国”、“支持阵线”等组织约2000名武装人员向叙利亚政府军上缴重型武器。\r\n</p>\r\n<p>\r\n	<b>伊拉克最大省首府拉马迪收复战进入最后阶段——围攻政府建筑物</b>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	在伊拉克，“伊斯兰国”丢掉了辛贾尔和临近叙利亚的大片边境地区，5月占据的安巴尔省首府拉马迪也被政府军收复大部分地区，政府军的包围还在收拢，向“伊斯兰国”的最后一个据点——政府建筑物推进。\r\n</p>\r\n<p>\r\n	位于伊拉克首都巴格达以西约110公里的拉马迪，是伊拉克境内最大的省份安巴尔省的首府，伊拉克中部幼发拉底河上的鱼米之乡、历史名城和\r\n</p>\r\n<p>\r\n	战略要地。安巴尔省是伊拉克首都巴格达的西部门户。\r\n</p>\r\n<p>\r\n	“伊\r\n斯兰国”武装分子今年5月17日占领安巴尔省首府拉马迪。分析称，如果伊拉克政府军能够成功夺回并控制住拉马迪，将是政府军今年3月31日收复萨拉赫丁省\r\n首府提克里特后，“伊斯兰国”遭遇的第二次较大规模挫折，将有助于增强伊拉克政府军和亲政府逊尼派力量的士气。综合新华社电\r\n</p>',0,'',1451284886,0),(20,7,'缅警方:克钦邦采玉场废矿堆坍塌只有3人失踪','','','<p>\r\n	<img alt=\"缅警方：克钦邦采玉场废矿堆坍塌只有3人失踪\" src=\"http://img1.cache.netease.com/catchpic/A/A0/A0726974B45FEC5E3E6D528766B97D6C.jpg\" /><br />\r\n克钦邦采玉场废矿堆坍塌\r\n</p>\r\n<p>\r\n	当地时间2015年11月21日、22日，缅甸东北部的克钦族自治邦内一处玉石矿场于当地时间21日发生山体滑坡。\r\n</p>\r\n<p>\r\n	中新网12月28日电 据新加坡《联合早报》报道，缅甸警方及救援人员表示，数天前该国北部克钦邦帕敢镇发生的采玉场废矿堆坍塌事故，只有3人失踪，并非如媒体报道的多达50人遭活埋。\r\n</p>\r\n<p>\r\n	报道称，救援人员指出，警方只接获3人失踪的报告。而截至当地时间27日，搜救队还未找到任何遇难者遗体，因此尚无法确定这3人是否是被活埋而失踪。\r\n</p>\r\n<p>\r\n	帕敢镇行政长官丁瑞敏说，事发时大部分矿工已收工，而且此次事故也不像上个月同一地点发生的土崩那样，淹没了矿石废堆山下的棚屋和帐篷区，因此并没有酿成严重伤亡。\r\n</p>\r\n<p>\r\n	他指出，只有3个人的家属投报说，坍塌事故发生后，这3人一直没有回家。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	报道指出，这是克钦邦帕敢镇一个多月来发生的第二起采玉场废矿堆坍塌事故。上个月22日，在同一采矿山区发生的事件造成114人丧生，而\r\n25日当地又发生类似事故。当地媒体报道称，这次约有50名捡矿石者遭活埋，还一度传出搜救队已发现4至5具遇难者遗体，但当地官方否认已寻获遗体。\r\n</p>\r\n<p>\r\n	尽管当局表示失踪人数只有几人，参与搜救的警察郭梭吴表示，现在就断言有多少人被活埋，还言之过早。“究竟有多少人遭埋在那里，我们毫无头绪。”\r\n</p>\r\n<p>\r\n	另有一名要求匿名的搜救人员指出，当地居民相信可能有十多人惨遭活埋。他说，事故地点位置偏远、通讯系统落后，加上有关采玉场废矿堆有可能再次坍塌，阻碍了搜救进度，他说：“现场的地面有很多裂痕，搜救队若要开挖掘机进去，会很危险。”\r\n</p>\r\n<p>\r\n	(原标题：缅警方：克钦邦采玉场废矿堆坍塌只有3人失踪)\r\n</p>',0,'',1451284972,0),(21,8,'章子怡汪峰女儿诞生 晒大手握小手照报平安','','','<p>\r\n	<strong><img src=\"http://ent.163.com/15/1228/09/BBTOK75G00031H2L.html#p=BBTP9IIV00AJ0003\" alt=\"\" /><img src=\"http://img3.cache.netease.com/photo/0003/2015-12-28/600x450_BBTP9IIV00AJ0003.jpg\" alt=\"\" /><br />\r\n</strong>\r\n</p>\r\n<p>\r\n	<strong>网易娱乐12月28日报道</strong> 12月27日，章子怡在美国顺利诞下女儿，并在微博报喜：“2015年12月27日，你我她，小生命的诞生，让我们拥有了自己的家！一切平安、顺利，无限感激！”并晒出一家三口大手牵小手的<a href=\"http://mall.163.com/yxp.html\">照片</a>，无比温馨。从照片中看出小Baby的手指修长纤细很像章子怡。章子怡指甲上画着粉色W和爱心，可见孕期的章子怡心情大好，少女心爆棚。随后汪峰转发“她来了，可爱的小生命。从此尘埃落定，春暖花开……”道出了对于女儿降临无限的美好和对母女平安的踏实。\r\n</p>\r\n<p>\r\n	前几日网友晒出在圣地亚哥偶遇章子怡挺巨肚一家逛动物园的照片，子怡母亲也在其身边，有说有笑，一家人其乐融融。\r\n</p>\r\n<p>\r\n	虽然汪峰和章子怡为了女儿的到来兴奋不已，但实际上在此之前，汪峰已有女儿。有网友调侃称汪峰没有上头条的命，也没有生儿子的命，小S从此不必哭泣。\r\n</p>',0,'',1451285416,0),(22,8,'邓超疯狂转粉丝\"恶棍天使\"好评 一小时掉粉十万','','','<p>\r\n	<strong class=\"cRed\">网易娱乐12月27日报道</strong> 邓超孙俪夫妇新片《恶棍天使》上映至今已将3亿票房收入囊中，不过口碑却惨遭滑铁卢，就算被坐拥万达院线的王思聪讽刺“哈哈哈哈哈哈哈”，邓超也没有放弃对影片的口碑营销。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	今晚（12月27日）6点15分开始，邓超在短短一个小时之内连续转发了78条由他自导自演的电影《恶棍天使》的网友好评微博，每一条都搭配“碗得服”（翻译：wonderful）三个字以及一个doge表情。却不料因此在一小时内掉粉近十万，引发网友强烈吐槽。\r\n</p>\r\n<p>\r\n	<b>网友评论</b>\r\n</p>\r\n<p>\r\n	<b>古惑仔之妈妈再揍我一次：五分钟又掉一万。</b>\r\n</p>\r\n<p>\r\n	<b>7777爸爸：看他这丧心病狂的样子，果断取关......</b>\r\n</p>\r\n<p>\r\n	<b>求别虐娘娘：孙俪，赶快离婚，这货为了电影啥都能干出来！</b>\r\n</p>\r\n<p>\r\n	<b>我是脑残咋地吧：年底了被下降头的明星不少！！！</b>\r\n</p>',0,'',1451285609,0),(23,8,'83位电影人挺《老炮儿》抵烂片 高群书点赞','','','<p>\r\n	<strong class=\"cRed\">网易娱乐12月28日报道</strong><span class=\"cRed\"> </span>（文/小易）近日，《老炮儿》和《恶棍天使》同期上映，两部影片的质量和票房的对比引发热议。<strong> </strong>\r\n</p>\r\n<p>\r\n	12\r\n月27日，疑似导演高群书的朋友圈截图曝光，图片信息显示83个电影人对近几日国产电影的现象发出呼吁，希望全行业各领域支持国产好片《老炮儿》，称看不\r\n得烂片肆意践踏正在蒸蒸日上的电影市场，称有责任为中国观众制作优良的国产电影，并称今后不宣传推广任何烂片，希望唯票房是从的病态声音和行业乱象得到改\r\n善。\r\n</p>\r\n<p>\r\n	对此，高群书发文称：“虽然我不知道，不认识这83个电影人，但必须为这种自觉态度点赞。”\r\n</p>',0,'',1451285676,0);
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_type`
--

DROP TABLE IF EXISTS `news_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news_type` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT '',
  `addtime` int(11) DEFAULT '0',
  `edittime` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_type`
--

LOCK TABLES `news_type` WRITE;
/*!40000 ALTER TABLE `news_type` DISABLE KEYS */;
INSERT INTO `news_type` VALUES (9,'体育新闻',1450777107,0),(7,'国际新闻',1450776329,0),(6,'国内要闻',1450776272,0),(8,'娱乐新闻',1450776699,0);
/*!40000 ALTER TABLE `news_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(32) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `addtime` int(11) DEFAULT '0',
  `edittime` int(11) DEFAULT '0',
  `last_login` int(11) DEFAULT '0',
  `last_ip` varchar(16) DEFAULT '',
  `login_num` mediumint(9) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `email` (`email`,`password`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'273030282@qq.com','cac6d294364761c1b4bb4d5b7b3f6d5e',1450860757,0,1451283828,'127.0.0.1',4),(4,'kangyun@winsan.cn','cac6d294364761c1b4bb4d5b7b3f6d5e',1450860932,0,0,'127.0.0.1',0),(5,'test@test.com','cac6d294364761c1b4bb4d5b7b3f6d5e',1450863185,0,0,'127.0.0.1',0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-29 14:16:40