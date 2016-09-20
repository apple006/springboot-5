SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(32) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('2', 'lance', 'e10adc3949ba59abbe56e057f20f883e', 'Lance', '2016-06-02 23:35:38');
INSERT INTO `t_user` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'Admin', '2016-06-01 23:35:17');


DROP TABLE IF EXISTS `t_news`;
CREATE TABLE `t_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `summary` varchar(500) DEFAULT NULL,
  `author` varchar(30) DEFAULT NULL,
  `content` varchar(5000) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `t_news` VALUES ('1', 'Gecco 1.2.0 发布，支持运行时抓取规则配置', 'Gecco的动态编程是新版本的核心功能，Gecco支持动态生成SpiderBean包括类，属性，注解。可以不需要预先定义SpiderBean即可完成抓取', 'Lucky', '<p style=\"color:#000000;font-family:&quot;font-size:14px;font-style:normal;font-weight:normal;text-align:left;text-indent:0px;background-color:#FFFFFF;\">\r\n	Gecco 1.2.0 发布了，该版本改进内容包括：\r\n</p>\r\n<p style=\"color:#000000;font-family:&quot;font-size:14px;font-style:normal;font-weight:normal;text-align:left;text-indent:0px;background-color:#FFFFFF;\">\r\n	1.HttpClientDownloader保证inputstream能重复使用，<a href=\"https://github.com/shangjian\">@shangjian</a>提供修改思路\r\n</p>\r\n<p style=\"color:#000000;font-family:&quot;font-size:14px;font-style:normal;font-weight:normal;text-align:left;text-indent:0px;background-color:#FFFFFF;\">\r\n	2.支持一个Before/AfterDownloader对应多个SpiderBean\r\n</p>\r\n<p style=\"color:#000000;font-family:&quot;font-size:14px;font-style:normal;font-weight:normal;text-align:left;text-indent:0px;background-color:#FFFFFF;\">\r\n	3.Gecco的动态编程是新版本的核心功能，Gecco支持动态生成SpiderBean包括类，属性，注解。可以不需要预先定义SpiderBean即可完成抓取。详细情况可以参考<a href=\"http://my.oschina.net/u/2336761/blog/706041\">http://my.oschina.net/u/2336761/blog/706041</a>\r\n</p>\r\n<p style=\"color:#000000;font-family:&quot;font-size:14px;font-style:normal;font-weight:normal;text-align:left;text-indent:0px;background-color:#FFFFFF;\">\r\n	<strong>通过动态特性，可以实现如下功能：</strong>\r\n</p>\r\n<ol class=\" list-paddingleft-2\" style=\"color:#000000;font-family:&quot;font-size:14px;font-style:normal;font-weight:normal;text-align:left;text-indent:0px;background-color:#FFFFFF;\">\r\n	<li>\r\n		<p>\r\n			已经定义了ORM（如：hiberante）的bean，将注解动态的加载到ORM的bean中，可以很方便的将页面格式化后入库\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<p>\r\n			很多类似的网站的抓取，SpiderBean都一样，只是提取元素的cssPath不一样，为了不构建很多重复的SpiderBean，可以考虑动态生成SpiderBean\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<p>\r\n			通过配置的方式抓取页面，通过后台管理系统、配置文件等配置抓取规则，动态的将配置规则转换成SpiderBean\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<p>\r\n			利用动态SpiderBean可以构建可视化爬虫，利用可视化工具构建抓取规则，将规则动态转换为SpiderBean\r\n		</p>\r\n	</li>\r\n</ol>', '1', '2016-07-06 00:05:50', null);
INSERT INTO `t_news` VALUES ('2', '那些值得你试试的Android竞品分析工具', '本文整理了一些自己在开发过程中经常会用到的竞品分析工具，这些工具可以帮助分析竞品', 'Tom', '<h3 style=\"font-family:&quot;font-weight:500;color:#333333;font-size:24px;font-style:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	前言\r\n</h3>\r\n<p style=\"color:#333333;font-family:&quot;font-size:16px;font-style:normal;font-weight:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	本文整理了一些自己在开发过程中经常会用到的竞品分析工具，这些工具可以帮助分析竞品。让我们得以了解竞品相应的一些技术信息，例如：代码质量、某种业务的实现方式、用了什么第三方库等。除此之外，也有一些高端玩家会玩起 HOOK ，更有甚者是通过修改代码然后进行二次打包。当然这些损害开发者利益的事情，是不值得提倡的。但如果只是出于学习的目的，我是十分建议多折腾的。\r\n</p>\r\n<p style=\"color:#333333;font-family:&quot;font-size:16px;font-style:normal;font-weight:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	<strong>提前声明：</strong>\r\n</p>\r\n<ul style=\"color:#333333;font-family:&quot;font-size:16px;font-style:normal;font-weight:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	<li>\r\n		本文只对工具做简要功能介绍，要求面面俱到讲解每个工具使用，本人表示能力有限啊；\r\n	</li>\r\n	<li>\r\n		下文所介绍的工具，都会附上这些工具的官方地址以及相应的使用教程链接（如果有）；\r\n	</li>\r\n	<li>\r\n		有童鞋对下文提到的工具已经用得出神入化，欢迎写成文章，可以的话，也欢迎给个链接让我补充进本文，顺带学习一下；\r\n	</li>\r\n	<li>\r\n		本文所有提到的工具只做分析学习使用，请不要拿去做损害他人利益的事情；\r\n	</li>\r\n</ul>\r\n<h3 style=\"font-family:&quot;font-weight:500;color:#333333;font-size:24px;font-style:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	Apk 内部结构\r\n</h3>\r\n<p style=\"color:#333333;font-family:&quot;font-size:16px;font-style:normal;font-weight:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	为了方便介绍工具，需要先简单科普一下 Apk 的内部结构，已经很熟悉的童鞋可以忽略此章节。需要注意的是，这里介绍的 Apk 结构并不包含加固的情况，虽然很多厂家推出了加固服务用于对抗反编译，但是加固也有诸多的问题存在，另外基本上分析的大厂应用都没有发现有加固的，可能也是考虑到加固后安装包存在的诸多问题吧。\r\n</p>\r\n<p style=\"color:#333333;font-family:&quot;font-size:16px;font-style:normal;font-weight:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	直接使用 Android Studio 创建一个 HelloWorld 的 Moudle，然后打个 release 的 Apk 安装包，并修改后缀 apk 为 zip 后进行解压，可以看到下面一个标准的结构：\r\n</p>\r\n<p style=\"color:#333333;font-family:&quot;font-size:16px;font-style:normal;font-weight:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	<img src=\"http://img.blog.csdn.net/20160705104032699\" alt=\"\" title=\"\" style=\"border:0px;\" />\r\n</p>\r\n<ul style=\"color:#333333;font-family:&quot;font-size:16px;font-style:normal;font-weight:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	<li>\r\n		META-INF： 存放签名文件签名信息的目录，用于系统签名校验；\r\n	</li>\r\n	<li>\r\n		res： 存放资源文件的目录，包含项目中的 xml 和 图片资源等；\r\n	</li>\r\n	<li>\r\n		AndroidManifest.xml： Android项目中的配置文件；\r\n	</li>\r\n	<li>\r\n		classes.dex： 由Java产生的字节码文件打包生成为虚拟机可以解读的字节码文件，所有的源码都在其中；\r\n	</li>\r\n	<li>\r\n		resources.arsc： 资源文件的ID索引表，如：layout、drawable、mipmap都会在R文件生成相应的ID资源；\r\n	</li>\r\n	<li>\r\n		其他目录：开发者自行添加的目录，如：存放资源的 asserts 、存放依赖包的 lib 目录等。\r\n	</li>\r\n</ul>\r\n<p style=\"color:#333333;font-family:&quot;font-size:16px;font-style:normal;font-weight:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	上面介绍完了一个最基本的 Apk 解压后的目录结构，下面直接拿微信作为示例，看看大厂应用的结构是怎样的：\r\n</p>\r\n<p style=\"color:#333333;font-family:&quot;font-size:16px;font-style:normal;font-weight:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	<img src=\"http://img.blog.csdn.net/20160705104257793\" alt=\"\" title=\"\" style=\"border:0px;\" />\r\n</p>\r\n<p style=\"color:#333333;font-family:&quot;font-size:16px;font-style:normal;font-weight:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	我们可以看到微信除包含了上面提到的，还有 asserts、lib、r 这三个自行添加的目录，至于前两个目录是干嘛的上面已经提到，r 目录里面主要存放了一些 svg 和 xml 文件，有兴趣可以自行试试。如果要问为什么微信有3个dex文件的话，只能说它超了 Android 系统设定 65k 方法的限制，所以有多个dex包。\r\n</p>\r\n<p style=\"color:#333333;font-family:&quot;font-size:16px;font-style:normal;font-weight:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	OK，关于 Apk 的目录结构介绍基本到此，这有助于我们去理解下面即将要介绍的工具！\r\n</p>\r\n<h3 style=\"font-family:&quot;font-weight:500;color:#333333;font-size:24px;font-style:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	Apktool\r\n</h3>', '1', '2016-07-06 00:08:37', null);
INSERT INTO `t_news` VALUES ('3', 'MongoDB和数据流：实现一个MongoDB Kafka消费者', '仲培艺，关注数据库领域，纠错、寻求报道或者投稿请致邮', 'Tom', '<h2 style=\"font-family:&quot;font-weight:500;color:#333333;font-size:30px;font-style:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	数据流\r\n</h2>\r\n<p style=\"color:#333333;font-family:&quot;font-size:16px;font-style:normal;font-weight:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	在当前的数据领域，单独一个系统无法支撑所有的请求。想要分析数据，则需要来源多样的海量信息数据。\r\n</p>\r\n<p style=\"color:#333333;font-family:&quot;font-size:16px;font-style:normal;font-weight:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	同时，我们迫不及待地渴求着答案；如果洞悉一切所需的时间超过了数十毫秒，信息就失去了价值——类似于高频交易、欺诈侦测和推荐引擎这一类应用程序，更是经不起这样的等待消耗。这通常要求在流入的数据被存入数据库之前，就对其进行分析。对数据丢失的零容忍和更多挑战的出现，无疑使其更为棘手。\r\n</p>\r\n<p style=\"color:#333333;font-family:&quot;font-size:16px;font-style:normal;font-weight:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	Kafka和数据流侧重于从多元fire-hose中获取大量数据并将其分输至需要这些数据的系统——通过筛选、聚合和分析的方法。\r\n</p>\r\n<p style=\"color:#333333;font-family:&quot;font-size:16px;font-style:normal;font-weight:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	这篇博文介绍了Apache Kafka，并举例分析了如何将MongoDB用作流式数据的源（生产者）或目标（消费者）。关于这一主题，<a href=\"https://www.mongodb.com/collateral/data-streaming-with-apache-kafka-and-mongodb\" target=\"_blank\">数据流和Kafka &amp; MongoDB</a>白皮书提供了更为完备的研究。\r\n</p>\r\n<h2 style=\"font-family:&quot;font-weight:500;color:#333333;font-size:30px;font-style:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	Apache Kafka\r\n</h2>\r\n<p style=\"color:#333333;font-family:&quot;font-size:16px;font-style:normal;font-weight:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	Kafka提供了一个灵活、可扩展且可靠的方法，用以在一个或多个生产者与消费者之间进行事件数据流交流。事件例子包括：\r\n</p>\r\n<ul style=\"color:#333333;font-family:&quot;font-size:16px;font-style:normal;font-weight:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	<li>\r\n		<p>\r\n			周期性的传感器读数，如当前温度\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<p>\r\n			用户在网上商店向购物车中添加商品\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<p>\r\n			发送带有特定标签的推文\r\n		</p>\r\n	</li>\r\n</ul>\r\n<p style=\"color:#333333;font-family:&quot;font-size:16px;font-style:normal;font-weight:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	Kafka事件流被归纳为几个主题。每个生产者选择一个主题来发送指定事件，而消费者则根据所需主题来提取事件。例如，一个财经应用可以根据一个标题来提取关于纽约证券交易所（NYSE）股票交易事件；若为求交易机会，则可根据另一个标题来提取公司财务报告。\r\n</p>\r\n<p style=\"color:#333333;font-family:&quot;font-size:16px;font-style:normal;font-weight:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	Kafka中的标题被进一步细分为支持扩展的分区。每一个Kafka节点（代理）负责接收、存储并传递来自指定主题一个或多个分区的事件。按照这个方法，一个主题的处理和存储可以线性扩展覆盖多个代理。也可以通过相似的方法来扩展一个应用——让多个消费者根据一个指定标题来提取时间，每一个事件都来源自独立分区。\r\n</p>', '1', '2016-07-07 12:03:56', null);
INSERT INTO `t_news` VALUES ('4', 'MongoDB推出了新型DaaS解决方案“Altas”,提供数据库托管服务', 'Atlas操作简便，无需构建、配置或管理服务器；无需备份调度', 'Tom', '<p style=\"color:#333333;font-family:&quot;font-size:16px;font-style:normal;font-weight:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	日前，<a href=\"https://www.mongodb.com/cloud\" target=\"_blank\">MongoDB 推出了Atlas</a>，一个新型DaaS解决方案，它在云上运行MongoDB非常简便、活力且节约成本。无论运行的是一个单机副本集还是一个负载百兆字节的分片集群，Atlas作为一个服务于MongoDB的数据库，都可帮助其轻松运行。\r\n</p>\r\n<p style=\"color:#333333;font-family:&quot;font-size:16px;font-style:normal;font-weight:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	<strong>简便性：</strong>\r\n</p>\r\n<p style=\"color:#333333;font-family:&quot;font-size:16px;font-style:normal;font-weight:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	Atlas操作简便，无需构建、配置或管理服务器；无需备份调度；也无需建立监控或查找安全漏洞。若服务器夜间性能下降，则该系统会对其进行维护。而若出现了一些无法自动解决的问题，也由全天候服务的响应团队帮助用户出面解决。面对其它一些需求，如扩大存储、扩展运行或是添加分片，用户只需要轻敲用户界面（UI），剩余事项就可交由Atlas处理。\r\n</p>\r\n<p style=\"color:#333333;font-family:&quot;font-size:16px;font-style:normal;font-weight:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	<strong>有活力：</strong>\r\n</p>\r\n<p style=\"color:#333333;font-family:&quot;font-size:16px;font-style:normal;font-weight:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	MongoDB Atlas是基于当前云产品组成部分的构建，这些部分长年来负责管理集群。其中，监控部分于四年前首发。同时，Atlas还配备有对MongoDB来说最为先进的备份解决方案。这一方案发布于三年前，支持时间点（point in time）恢复，支持强大的配置选项，而MongoDB多年来对工作负载备份的高要求，也证实了其稳定性。其自两年前推广可用以来，支持Atlas集群，并对Automation进行管理，历经迭代。因此，虽然Atlas自身是一个新产品，但其所有组成部分都已经历经了多年的挑战与测试。\r\n</p>\r\n<p style=\"color:#333333;font-family:&quot;font-size:16px;font-style:normal;font-weight:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	<strong>弹性价格：</strong>\r\n</p>\r\n<p style=\"color:#333333;font-family:&quot;font-size:16px;font-style:normal;font-weight:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	总的来说，云产品的一大亮点就是其弹性的价格，而产品开发者也想其DaaS具有这一优点。使用Atlas的用户只需要为其真正用到的部分买单，而计费账单则按月结算。这样用户只需要花费几美元就可以体验几个小时的集群启动，还能够无需忧虑地以一个预想的价格，最大程度地运行其最为关键的工作负载。\r\n</p>\r\n<p style=\"color:#333333;font-family:&quot;font-size:16px;font-style:normal;font-weight:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	<strong>其他观点:</strong>\r\n</p>\r\n<p style=\"color:#333333;font-family:&quot;font-size:16px;font-style:normal;font-weight:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	MongoDB Atlas无疑是在云上运行MongoDB的最佳方案。然而，若用户不希望运行全部在云上完成，则将为其提供其他方案，以便在其选定的环境下管理MongoDB。如果用户运行的是一个混合环境，则需查看<a href=\"https://www.mongodb.com/cloud\" target=\"_blank\">MongoDB云管理器</a>；如果完全是On-Prem，则需尝试<a href=\"https://www.mongodb.com/products/ops-manager\" target=\"_blank\">MongoDB Ops管理器</a>。这三个管理产品共享相同的强大组成部分，确保用户不受运行环境的干扰。产品覆盖了所有部署MongoDB的场景。\r\n</p>\r\n<p style=\"color:#333333;font-family:&quot;font-size:16px;font-style:normal;font-weight:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	如今，<a href=\"https://www.mongodb.com/cloud\" target=\"_blank\">MongoDB Atlas</a>已支持AWS生产，而且在不久的将来，还会和战略合作伙伴Microsoft Azure和Google Cloud Platform协同推出。\r\n</p>\r\n<p style=\"color:#333333;font-family:&quot;font-size:16px;font-style:normal;font-weight:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	一直以来MongoDB都致力于促进数据库发展并助力开发者团队进行应用程序开发。现在，Atlas使这一切在云上的进行变得更为顺畅。\r\n</p>\r\n<p style=\"color:#333333;font-family:&quot;font-size:16px;font-style:normal;font-weight:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	<strong>关于作者——Eliot Horowitz</strong>\r\n</p>\r\n<p style=\"color:#333333;font-family:&quot;font-size:16px;font-style:normal;font-weight:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	Eliot，MongoDB CTO &amp;联合创始人，也是MongoDB内核开发核心贡献者，曾是ShopWiki联合创始人&amp; CTO。此前，入选了美国商业周刊评选出的2006年度全国25岁以下的企业家前二十五强。Eliot还在美国布朗大学获得了计算机科学理学学士学位。\r\n</p>', '1', '2016-07-07 12:04:36', null);
INSERT INTO `t_news` VALUES ('5', '论物联网四项设计挑战的最佳解决方案', '', 'Lucky', '<p style=\"color:#333333;font-family:&quot;font-size:16px;font-style:normal;font-weight:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	无论是智能住宅、联网汽车还是智能工厂，所有智能技术的核心都是设备间的网络互联，而这正是我们耳熟能详的<a href=\"https://en.wikipedia.org/wiki/Internet_of_things\" target=\"_blank\">物联网</a>（IoT）。IoT发展过程中不断改善人们生活和交互的方式。\r\n</p>\r\n<p style=\"color:#333333;font-family:&quot;font-size:16px;font-style:normal;font-weight:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	企业可以收集有效的信息来简化操作流程、预测重大变化、和确保满足客户实时需求。用户可以具有更加智能化的生活方式而不是在繁琐的事物上浪费时间。\r\n</p>\r\n<p style=\"color:#333333;font-family:&quot;font-size:16px;font-style:normal;font-weight:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	IoT具有很大的前景，但面向开发者，构建IoT系统时将面临一些独特的挑战。\r\n</p>\r\n<p style=\"color:#333333;font-family:&quot;font-size:16px;font-style:normal;font-weight:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	<strong>电池寿命受限</strong><span class=\"Apple-converted-space\">&nbsp;</span> \r\n</p>\r\n<br />\r\n<img src=\"http://img.blog.csdn.net/20160705164106874\" alt=\"图片描述\" title=\"\" style=\"border:0px;\" /> \r\n<p style=\"color:#333333;font-family:&quot;font-size:16px;font-style:normal;font-weight:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	以平板电脑为例，如手机一般大小的电脑。虽然功能齐全，但大屏幕不一定方便，而且屏幕越大的智能硬件需要更大的电池。倘若电脑尺寸更小一些，其所需的电池量也是一样的。\r\n</p>\r\n<p style=\"color:#333333;font-family:&quot;font-size:16px;font-style:normal;font-weight:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	虽然看起来电池寿命问题归属硬件工程师领域，但是一些UX和专业的软件开发方法也可以有效提高设备的电池寿命：\r\n</p>\r\n<ul style=\"color:#333333;font-family:&quot;font-size:16px;font-style:normal;font-weight:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	<li>\r\n		<p>\r\n			<strong>使用黑色：</strong>在AMOLED屏幕（无须背光模块）中黑色像素促使电池寿命最大化。一般来说，显示屏相对比之下鲜艳的颜色比深色需要消耗更多的电量。\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<p>\r\n			<strong>尽可能使用JPEG：</strong>尽管PNG因其灵活性和支持透明度受到的更多的欢迎，但JPEG仍然为较好的压缩格式。据<a href=\"http://mobisocial.stanford.edu/papers/boneh-www2012.pdf\" target=\"_blank\">斯坦福大学研究</a>表明JPEG标准比PNG更能缩少电量消耗。\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<p>\r\n			<strong>缩减网络请求：</strong>虽然有些时候需要实时查询数据的连通性，但是需要谨慎地运用这些技术，尤其是对于加密的数据。\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<p>\r\n			<strong>减少JavaScript：</strong>应用程序中有很多带宽/耗电的因素，其中最大的是Javascript的使用，当浏览器遇到&lt;script&gt;<span class=\"Apple-converted-space\">&nbsp;</span>标签时，脚本代码会优先运行。\r\n		</p>\r\n	</li>\r\n</ul>\r\n<p style=\"color:#333333;font-family:&quot;font-size:16px;font-style:normal;font-weight:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	<strong>数据管理：“抓住一切”并不是最终结果</strong> \r\n</p>\r\n<p style=\"color:#333333;font-family:&quot;font-size:16px;font-style:normal;font-weight:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	为了真正充分利用IoT系统，需要确保所提供的功能保证一切安全。当涉及到大数据，正如<a href=\"http://www.forbes.com/forbes/welcome/#4555b09a74e4\" target=\"_blank\">Forbes</a>所述，座右铭“如果你不能度量它，你就不能管理它，“在IoT领域真的很实用。\r\n</p>\r\n<p style=\"color:#333333;font-family:&quot;font-size:16px;font-style:normal;font-weight:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	目前是软件开发者常犯得错误是在没有考虑实际目的情况下收集尽可能的数据。回归电池寿命，想要节省电池量，仅需收集数据处理中有限的数据。\r\n</p>\r\n<p style=\"color:#333333;font-family:&quot;font-size:16px;font-style:normal;font-weight:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	在数据安全方面，最终需要在开放的生态系统处理，另外这也是一个新领域仍然在不断地被开发。因此，你需要了解行业趋势。与其他手机开发项目相比，在所需基础上保证用户权限可以有效保证设备安全。\r\n</p>\r\n<p style=\"color:#333333;font-family:&quot;font-size:16px;font-style:normal;font-weight:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	当然，数字威胁并不是唯一值得担心的。如果你管理用户的个人数据，需要确保从<a href=\"https://www.sitepoint.com/protect-yourself-and-your-business-from-social-engineering/\" target=\"_blank\">社会工程攻击</a>中受到保护。\r\n</p>', '1', '2016-07-07 12:05:29', null);
INSERT INTO `t_news` VALUES ('6', '蜕变还是改变？且看Spark 2.0测评', 'park 2.0对TPC-DS的支持度确实比Spark 1.6更好。Spark SQL 1.6版本只能运行大约70个查询，而2.0预览版可以运行99个SQL。在SPARK-12540这个JIRA中，可以看到一些相关的TPC-DS需要的SQL功能点都在陆续的完成中', 'Lucky', '<p style=\"color:#333333;font-family:&quot;font-size:16px;font-style:normal;font-weight:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	Databricks近期推出了Spark 2.0的预览版，开源社区对这个版本有非常高的期待，即使是预览版也有很多的下载试用。Spark版本号从1.x演进到2.0，可以看出社区对这个版本寄予厚望。在对外发布的<a href=\"https://databricks.com/blog/2016/05/11/apache-spark-2-0-technical-preview-easier-faster-and-smarter.html\" target=\"_blank\">官方blog</a>中，Easier/Faster/Smarter是其宣传的几个主要创新领域。笔者把它通俗的翻译为：SQL支持更全，更强大的性能，适配流式计算和批处理的统一编程模型。\r\n</p>\r\n<p style=\"color:#333333;font-family:&quot;font-size:16px;font-style:normal;font-weight:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	从实用性的角度，这几个功能确实是企业用户特别看重的内容，说明Databricks以及社区开始重视商业需求，并期望Spark向商业产品化的方向转变。那么实际情况到底是怎样呢？和一些商业大数据产品，如星环TDH的比较又如何呢？我们来做一些深度的测评来对比下。\r\n</p>\r\n测试环境的准备\r\n<p style=\"color:#333333;font-family:&quot;font-size:16px;font-style:normal;font-weight:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	首先看下我们的测试环境情况，考虑到Spark的内存管理机制不够完善，我们使用了128GB的内存配置，尽量减少因为Spark SQL的稳定性问题给整个测试带来的负面影响。测试集群包含4台同构的x86服务器，每台配置如下：\r\n</p>\r\n<blockquote style=\"font-size:14px;color:#333333;font-family:&quot;font-style:normal;font-weight:normal;text-align:justify;text-indent:0px;background:#F7F7F7;\">\r\n	<p>\r\n		CPU：2X6 core, E5 2620 v2, 2.10GHz<span class=\"Apple-converted-space\">&nbsp;</span><br />\r\n内存：128G<span class=\"Apple-converted-space\">&nbsp;</span><br />\r\n网络：千兆网卡<span class=\"Apple-converted-space\">&nbsp;</span><br />\r\n磁盘：3X3T\r\n	</p>\r\n</blockquote>\r\n<p style=\"color:#333333;font-family:&quot;font-size:16px;font-style:normal;font-weight:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	然而实际测试中，我们发现Spark SQL的稳定性依然是个很大的问题。为了测试出很好的对比数据，我们花费了比预期多5倍的时间。系统仍然有很多不稳定运行的问题，尤其是在连续运行批量的业务方面，我们几乎没有在一次连续测试中跑完所有的SQL，最后不得不从多次运行benchmark的结果中选出每个查询最好的数据作为Spark SQL的最终性能报告数据源。虽然这个测试方法因为Spark 2.0 预览版本质量问题而显的不正规，但是还是能够帮助我们去理解这个版本的一些现实状况。\r\n</p>\r\n<p style=\"color:#333333;font-family:&quot;font-size:16px;font-style:normal;font-weight:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	同时为了对比，我们选用TDH 4.5版本来做功能以及性能验证的样板。基本测试程序也选用Databricks Blog上提到的TPC-DS。\r\n</p>\r\nSQL支持度\r\n<p style=\"color:#333333;font-family:&quot;font-size:16px;font-style:normal;font-weight:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	首先值得肯定的是，Spark 2.0对TPC-DS的支持度确实比Spark 1.6更好。Spark SQL 1.6版本只能运行大约70个查询，而2.0预览版可以运行99个SQL。在SPARK-12540这个JIRA中，可以看到一些相关的TPC-DS需要的SQL功能点都在陆续的完成中。\r\n</p>\r\n<p style=\"color:#333333;font-family:&quot;font-size:16px;font-style:normal;font-weight:normal;text-align:justify;text-indent:0px;background-color:#FFFFFF;\">\r\n	从相应的JIRA记录中，我们可以看到Spark 2.0在SQL兼容实现上的主要思路。在Catalyst中为不同的SQL功能增加相应的变换器，将其变成有相同语义的已经实现的SQL执行计划。这个实现方式总体上不错，但同时也有很多的局限性，譬如比较难以处理各种corner case，对子查询的支持比较差，只能运行简单场景下的子查询，此外一些SQL可能会触发多种变换器，从而带来一些不是期望中的结果。正如Databricks的开发人员在各自JIRA上对这些限制的一些描述\r\n</p>', '1', '2016-07-07 12:06:10', null);


-- 集成shiro的初始化sql
/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50519
Source Host           : localhost:3306
Source Database       : shiro

Target Server Type    : MYSQL
Target Server Version : 50519
File Encoding         : 65001

Date: 2016-09-20 21:20:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `name` varchar(128) NOT NULL COMMENT '资源名称',
  `type` varchar(32) NOT NULL COMMENT '资源类型：menu,button,',
  `url` varchar(128) DEFAULT NULL COMMENT '访问url地址',
  `percode` varchar(128) DEFAULT NULL COMMENT '权限代码字符串',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父结点id',
  `parentids` varchar(128) DEFAULT NULL COMMENT '父结点id列表串',
  `sortstring` varchar(128) DEFAULT NULL COMMENT '排序号',
  `available` char(1) DEFAULT NULL COMMENT '是否可用,1：可用，0不可用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
INSERT INTO `sys_permission` VALUES ('1', '权限', '', '', null, '0', '0/', '0', '1');
INSERT INTO `sys_permission` VALUES ('11', '商品管理', 'menu', '/item/queryItem.action', null, '1', '0/1/', '1.', '1');
INSERT INTO `sys_permission` VALUES ('12', '商品新增', 'permission', '/item/add.action', 'item:create', '11', '0/1/11/', '', '1');
INSERT INTO `sys_permission` VALUES ('13', '商品修改', 'permission', '/item/editItem.action', 'item:update', '11', '0/1/11/', '', '1');
INSERT INTO `sys_permission` VALUES ('14', '商品删除', 'permission', '', 'item:delete', '11', '0/1/11/', '', '1');
INSERT INTO `sys_permission` VALUES ('15', '商品查询', 'permission', '/item/queryItem.action', 'item:query', '11', '0/1/15/', null, '1');
INSERT INTO `sys_permission` VALUES ('21', '用户管理', 'menu', '/user/query.action', 'user:query', '1', '0/1/', '2.', '1');
INSERT INTO `sys_permission` VALUES ('22', '用户新增', 'permission', '', 'user:create', '21', '0/1/21/', '', '1');
INSERT INTO `sys_permission` VALUES ('23', '用户修改', 'permission', '', 'user:update', '21', '0/1/21/', '', '1');
INSERT INTO `sys_permission` VALUES ('24', '用户删除', 'permission', '', 'user:delete', '21', '0/1/21/', '', '1');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` varchar(36) NOT NULL,
  `name` varchar(128) NOT NULL,
  `available` char(1) DEFAULT NULL COMMENT '是否可用,1：可用，0不可用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('ebc8a441-c6f9-11e4-b137-0adc305c3f28', '商品管理员', '1');
INSERT INTO `sys_role` VALUES ('ebc9d647-c6f9-11e4-b137-0adc305c3f28', '用户管理员', '1');

-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission` (
  `id` varchar(36) NOT NULL,
  `sys_role_id` varchar(32) NOT NULL COMMENT '角色id',
  `sys_permission_id` varchar(32) NOT NULL COMMENT '权限id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------
INSERT INTO `sys_role_permission` VALUES ('ebc8a441-c6f9-11e4-b137-0adc305c3f21', 'ebc8a441-c6f9-11e4-b137-0adc305c', '12');
INSERT INTO `sys_role_permission` VALUES ('ebc8a441-c6f9-11e4-b137-0adc305c3f22', 'ebc8a441-c6f9-11e4-b137-0adc305c', '11');
INSERT INTO `sys_role_permission` VALUES ('ebc8a441-c6f9-11e4-b137-0adc305c3f24', 'ebc9d647-c6f9-11e4-b137-0adc305c', '21');
INSERT INTO `sys_role_permission` VALUES ('ebc8a441-c6f9-11e4-b137-0adc305c3f25', 'ebc8a441-c6f9-11e4-b137-0adc305c', '15');
INSERT INTO `sys_role_permission` VALUES ('ebc9d647-c6f9-11e4-b137-0adc305c3f23', 'ebc9d647-c6f9-11e4-b137-0adc305c', '22');
INSERT INTO `sys_role_permission` VALUES ('ebc9d647-c6f9-11e4-b137-0adc305c3f26', 'ebc8a441-c6f9-11e4-b137-0adc305c', '13');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `usercode` varchar(32) NOT NULL COMMENT '账号',
  `username` varchar(64) NOT NULL COMMENT '姓名',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `salt` varchar(64) DEFAULT NULL COMMENT '盐',
  `locked` char(1) DEFAULT NULL COMMENT '账号是否锁定，1：锁定，0未锁定',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('lisi', 'lisi', '李四', 'bf07fd8bbc73b6f70b8319f2ebb87483', 'uiwueylm', '0');
INSERT INTO `sys_user` VALUES ('zhangsan', 'zhangsan', '张三', 'cb571f7bd7a6f73ab004a70322b963d5', 'eteokues', '0');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` varchar(36) NOT NULL,
  `sys_user_id` varchar(32) NOT NULL,
  `sys_role_id` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('ebc8a441-c6f9-11e4-b137-0adc305c3f28', 'zhangsan', 'ebc8a441-c6f9-11e4-b137-0adc305c');
INSERT INTO `sys_user_role` VALUES ('ebc9d647-c6f9-11e4-b137-0adc305c3f28', 'lisi', 'ebc9d647-c6f9-11e4-b137-0adc305c');
