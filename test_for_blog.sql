/*
 Navicat Premium Data Transfer

 Source Server         : MySQL80
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : localhost:3306
 Source Schema         : test_for_blog

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 29/04/2021 04:18:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_blog
-- ----------------------------
DROP TABLE IF EXISTS `t_blog`;
CREATE TABLE `t_blog`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `appreciation` bit(1) NOT NULL,
  `commentabled` bit(1) NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `copyright` bit(1) NOT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `first_picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `flag` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `published` bit(1) NOT NULL,
  `recommend` bit(1) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `views` int(0) NULL DEFAULT NULL,
  `type_id` bigint(0) NULL DEFAULT NULL,
  `user_id` bigint(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK292449gwg5yf7ocdlmswv9w4j`(`type_id`) USING BTREE,
  INDEX `FK8ky5rrsxh01nkhctmo7d48p82`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_blog
-- ----------------------------
INSERT INTO `t_blog` VALUES (1, b'1', b'1', '# maven中静态资源的过滤\r\n\r\npom.xml文件中加入下面配置\r\n\r\n### 可以过滤java和resources文件夹里面所有的的.properties和.xml文件\r\n**directory：指定资源所在的目录，目录的路径是相对于pom.xml文件的\r\nincludes：指定要包含哪些文件**\r\n**filtering标签中：false表示不过滤，true表示过滤**\r\n\r\n```java\r\n    <build>\r\n        <resources>\r\n            <resource>\r\n                <directory>src/main/java</directory>\r\n                <includes>\r\n                    <include>**/*.properties</include>\r\n                    <include>**/*.xml</include>\r\n                </includes>\r\n                <filtering>false</filtering>\r\n            </resource>\r\n            <resource>\r\n                <directory>src/main/resources</directory>\r\n                <includes>\r\n                    <include>**/*.properties</include>\r\n                    <include>**/*.xml</include>\r\n                </includes>\r\n                <filtering>false</filtering>\r\n            </resource>\r\n        </resources>\r\n    </build>\r\n```\r\n', b'1', '2021-04-28 22:38:50', '代码块显示测试', 'https://picsum.photos/id/458/800/400 ', 'Repost', b'1', b'1', 'maven中静态资源的过滤', '2021-04-28 22:49:01', 5, 1, 1);
INSERT INTO `t_blog` VALUES (2, b'0', b'0', '## There is another sky \r\n**by Emily Dickinson**\r\nThere Is Another Sky,\r\n\r\nEver Serene And Fair,\r\n\r\nAnd There Is Another Sunshine,\r\n\r\nThough It Be Darkness There;\r\n\r\nNever Mind Faded Forests, Austin,\r\n\r\nNever Mind Silent Fields -\r\n\r\nHere Is A Little Forest,\r\n\r\nWhose Leaf Is Ever Green;\r\n\r\nHere Is A Brighter Garden,\r\n\r\nWhere Not A Frost Has Been;\r\n\r\nIn Its Unfading Flowers\r\n\r\nI Hear The Bright Bee Hum:\r\n\r\nPrithee, My Brother,\r\n\r\nInto My Garden Come!', b'0', '2021-04-28 22:41:44', 'Emily Dickinson', 'https://picsum.photos/id/458/800/400 ', 'Translate', b'1', b'1', 'Emily Dickinson Poems', '2021-04-28 22:48:52', 1, 4, 1);
INSERT INTO `t_blog` VALUES (3, b'1', b'1', '## Web功能开发\r\n\r\n### DispatcherServlet 自动配置\r\n\r\n#### Dispatcher Servlet简介\r\n\r\nDispatcherServlet是前置控制器，配置在web.xml文件中的。拦截匹配的请求，Servlet拦截匹配规则要自己定义，把拦截下来的请求，依据相应的规则分发到目标Controller来处理，是配置spring MVC的第一步。\r\n\r\n#### 自动配置\r\n\r\nDispatcherServletAutoConfiguration（Dispatcher Servlet 生效）；\r\n\r\nWebMvcAutoConfiguration（视图解析器、静态资源处理等）；\r\n\r\n* [Spring MVC auto-configuration --Spring Boot参考指南](https://docs.spring.io/spring-boot/docs/1.4.1.RELEASE/reference/htmlsingle/#boot-features-spring-mvc-auto-configuration)\r\n\r\n### HttpMessageConverter\r\n\r\n* @RequestBody：解析请求中的参数，并绑定到POJO（Plain Ordinary Java Object）类。\r\n* @ResponseBody：将POJO类转化为对应的字符串响应出去。\r\n\r\n### 默认欢迎页和 favicon配置\r\n\r\n* Sring Boot也默认配置了welcome page和 favicon，这两个配置都与静态资源映射相关联；', b'1', '2021-04-28 22:43:57', '超链接功能测试', 'https://picsum.photos/id/555/800/400', 'Repost', b'1', b'1', 'spring boot project-web功能开发', '2021-04-28 22:48:29', 11, 1, 1);
INSERT INTO `t_blog` VALUES (4, b'1', b'1', '## Summer by Amy Lowell\r\nSome men there are who find in nature all\r\n\r\nTheir inspiration, hers the sympathy\r\n\r\nWhich spurs them on to any great endeavor,\r\n\r\nTo them the fields and woods are closest friends,\r\n\r\nAnd they hold dear communion with the hills;\r\n\r\nThe voice of waters soothes them with its fall,\r\n\r\nAnd the great winds bring healing in their sound.\r\n\r\nTo them a city is a prison house\r\n\r\nWhere pent up human forces labour and strive,\r\n\r\nWhere beauty dwells not, driven forth by man;\r\n\r\nBut where in winter they must live until\r\n\r\nSummer gives back the spaces of the hills.\r\n', b'0', '2021-04-28 22:45:25', '文字展示测试', 'https://picsum.photos/id/563/800/400 ', 'Translate', b'1', b'1', 'Summer', '2021-04-28 22:48:03', 9, 4, 1);
INSERT INTO `t_blog` VALUES (5, b'1', b'1', '# 数组控制\r\n\r\n## 遍历数组\r\n\r\n* 遍历数组可以使用`for`循环，`for`循环可以访问数组索引，`for each`循环直接迭代每个数组元素，但无法获取索引；\r\n\r\n* 使用`Arrays.toString()`可以快速获取数组内容。\r\n\r\n  ```java\r\n  import java.util.Arrays;\r\n  \r\n  public class Main {\r\n      public static void main(String[] args) {\r\n          int[] ns = { 1, 1, 2, 3, 5, 8 };\r\n          System.out.println(Arrays.toString(ns));\r\n      }\r\n  }\r\n  ```\r\n\r\n  \r\n\r\n## 数组排序\r\n\r\n* 常用的排序算法有冒泡排序、插入排序和快速排序等；\r\n\r\n* 冒泡排序使用两层`for`循环实现排序；\r\n\r\n  * 冒泡排序的特点是，每一轮循环后，最大的一个数被交换到末尾，因此，下一轮循环就可以“刨除”最后的数，每一轮循环都比上一轮循环的结束位置靠前一位。\r\n\r\n* 交换两个变量的值需要借助一个临时变量。\r\n\r\n  * 错误示范\r\n\r\n    ```java\r\n    int x = 1;\r\n    int y = 2;\r\n    \r\n    x = y; // x现在是2\r\n    y = x; // y现在还是2\r\n    ```\r\n\r\n  * 正确写法\r\n\r\n    ```java\r\n    int x = 1;\r\n    int y = 2;\r\n    \r\n    int t = x; // 把x的值保存在临时变量t中, t现在是1\r\n    x = y; // x现在是2\r\n    y = t; // y现在是t的值1\r\n    ```\r\n\r\n  \r\n\r\n* 可以直接使用Java标准库提供的`Arrays.sort()`进行排序；\r\n\r\n* 对数组排序会直接修改数组本身。\r\n\r\n\r\n\r\n## 多维数组\r\n\r\n* 二维数组就是数组的数组，三维数组就是二维数组的数组；\r\n* 多维数组的每个数组元素长度都不要求相同；\r\n* 打印多维数组可以使用`Arrays.deepToString()`；\r\n* 最常见的多维数组是二维数组，访问二维数组的一个元素使用`array[row][col]`。\r\n\r\n\r\n\r\n## 命令行参数\r\n\r\n* 命令行参数类型是`String[]`数组；\r\n* 命令行参数由JVM接收用户输入并传给`main`方法；\r\n* 如何解析命令行参数需要由程序自己实现。', b'1', '2021-04-29 00:37:42', 'Java数组基础知识', 'https://picsum.photos/id/1035/800/400', 'Origin', b'1', b'1', 'Java基础之数组', '2021-04-29 00:37:42', 0, 1, 1);
INSERT INTO `t_blog` VALUES (6, b'1', b'1', '# 布尔运算\r\n\r\n* 与运算和或运算是短路运算；\r\n\r\n* 三元运算`b ? x : y`后面的类型必须相同，三元运算也是“短路运算”，只计算`x`或`y`。\r\n\r\n  ```java\r\n  int n = -100;\r\n  int x = n >= 0 ? n : -n;\r\n  System.out.println(x); // 100\r\n  ```\r\n\r\n  \r\n\r\n* 关系运算符的优先级从高到低依次是\r\n\r\n  * `!`\r\n  * `>` , `>=` , `<` , `<=` \r\n  * `==` , `!=`\r\n  * `&&`\r\n  * `||`\r\n\r\n\r\n\r\n# 字符和字符串\r\n\r\n* Java的字符类型`char`是基本类型，字符串类型`String`是引用类型；\r\n* 基本类型的变量是“持有”某个数值，引用类型的变量是“指向”某个对象；\r\n* 引用类型的变量可以是空值`null`；\r\n  * 它表示不存在，即该变量不指向任何对象。\r\n* 要区分空值`null`和空字符串`\"\"`。\r\n  * 空字符串是一个有效的字符串对象，它不等于`null`。\r\n\r\n\r\n\r\n## 转义字符\r\n\r\n* 常见的转义字符包括：\r\n\r\n  * `\\\"` 表示字符`\"`\r\n\r\n  * `\\\'` 表示字符`\'`\r\n\r\n  * `\\\\` 表示字符`\\`\r\n\r\n  * `\\n` 表示换行符\r\n\r\n  * `\\r` 表示回车符\r\n\r\n  * `\\t` 表示Tab\r\n\r\n  * `\\u####` 表示一个Unicode编码的字符\r\n\r\n    ```java\r\n    char c3 = `\\u0041`; // `A`,因为十六进制数0041 = 十进制 65\r\n    String s = \"ABC\\n\\u4e2d\\u6587\"; // 包含6个字符：A, B, C, 换行符, 中, 文\r\n    ```\r\n\r\n    * // \\u#### 注意是十六进制\r\n\r\n## 空值null\r\n\r\n```java\r\nString s1 = null; // s1是null\r\nString s2; // 没有赋初始值，s2也是null\r\nString s3 = s1; // s3也是null\r\nString s4 = \"\"; // s4指向空字符串，不是null\r\n```\r\n', b'1', '2021-04-29 00:39:21', '测试文章', 'https://picsum.photos/id/1035/800/400 ', 'Origin', b'1', b'1', 'Java基础之布尔运算', '2021-04-29 00:39:21', 0, 1, 1);
INSERT INTO `t_blog` VALUES (7, b'1', b'1', '#  data structure & algorithm\r\n\r\n## 导言\r\n\r\n### Big-O notation\r\n\r\n* time complexity：一个算法运行时间长短的量度。\r\n* space complexity：一个算法在运行过程中临时占用存储空间大小的量度。\r\n* 在多数场景中，一个好的算法往往更注重的是时间复杂度的比较，而空间复杂度只要在一个合理的范围内就可以。\r\n\r\n### untagged\r\n\r\n* Recursion\r\n\r\n  Recursion is an alternative to iteration.\r\n\r\n  递归与迭代：简而言之，递归就是重复调用自身，退出的条件为if..else语句，当条件符合基时终止，而迭代是使用循环（for, while, do...while），当循环条件不满足时退出循环。即，递归是缩小问题，反向思维，而迭代是由已知的循序渐进推演，正向地得到答案。\r\n\r\n  * 例子：Factorial，Fibonacci sequence.\r\n\r\n```java\r\n// Factorial   n! = 1 * 2 * 3... * n\r\n// Fibonacci sequence   1 1 2 3 5 8\r\n```\r\n\r\n\r\n\r\n## 题目\r\n\r\n1. 如何判断一单向链表是否为有环链表？', b'1', '2021-04-29 00:40:56', '测试文章', 'https://picsum.photos/id/1035/800/400 ', 'Origin', b'1', b'1', '数据结构与算法导言', '2021-04-29 00:40:56', 2, 1, 1);

-- ----------------------------
-- Table structure for t_blog_tags
-- ----------------------------
DROP TABLE IF EXISTS `t_blog_tags`;
CREATE TABLE `t_blog_tags`  (
  `blogs_id` bigint(0) NOT NULL,
  `tags_id` bigint(0) NOT NULL,
  INDEX `FK5feau0gb4lq47fdb03uboswm8`(`tags_id`) USING BTREE,
  INDEX `FKh4pacwjwofrugxa9hpwaxg6mr`(`blogs_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of t_blog_tags
-- ----------------------------
INSERT INTO `t_blog_tags` VALUES (1, 4);
INSERT INTO `t_blog_tags` VALUES (1, 3);
INSERT INTO `t_blog_tags` VALUES (2, 2);
INSERT INTO `t_blog_tags` VALUES (2, 4);
INSERT INTO `t_blog_tags` VALUES (3, 1);
INSERT INTO `t_blog_tags` VALUES (3, 3);
INSERT INTO `t_blog_tags` VALUES (4, 4);
INSERT INTO `t_blog_tags` VALUES (4, 2);
INSERT INTO `t_blog_tags` VALUES (5, 3);
INSERT INTO `t_blog_tags` VALUES (5, 4);
INSERT INTO `t_blog_tags` VALUES (6, 3);
INSERT INTO `t_blog_tags` VALUES (6, 4);
INSERT INTO `t_blog_tags` VALUES (7, 5);
INSERT INTO `t_blog_tags` VALUES (7, 4);

-- ----------------------------
-- Table structure for t_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `admin_comment` bit(1) NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `blog_id` bigint(0) NULL DEFAULT NULL,
  `parent_comment_id` bigint(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKke3uogd04j4jx316m1p51e05u`(`blog_id`) USING BTREE,
  INDEX `FK4jj284r3pb7japogvo6h72q95`(`parent_comment_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_comment
-- ----------------------------
INSERT INTO `t_comment` VALUES (1, b'0', '/images/avatar.png', '很好的文章！', '2021-04-28 23:23:26', 'paker@161.com', 'parker', 3, NULL);
INSERT INTO `t_comment` VALUES (2, b'0', '/images/avatar.png', '是的，多写一点。', '2021-04-28 23:24:17', 'anker@161.com', '小白', 3, NULL);
INSERT INTO `t_comment` VALUES (3, b'0', '/images/avatar.png', '太烂了', '2021-04-28 23:27:48', 'pa@163.com', '喷喷', 3, NULL);
INSERT INTO `t_comment` VALUES (4, b'1', 'https://picsum.photos/id/452/100/100', '不欢迎你喷喷', '2021-04-28 23:29:02', 'parker_test@163.com', 'Link', 3, 3);

-- ----------------------------
-- Table structure for t_tag
-- ----------------------------
DROP TABLE IF EXISTS `t_tag`;
CREATE TABLE `t_tag`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_tag
-- ----------------------------
INSERT INTO `t_tag` VALUES (1, '猫咪');
INSERT INTO `t_tag` VALUES (2, '风景');
INSERT INTO `t_tag` VALUES (3, 'Java');
INSERT INTO `t_tag` VALUES (4, '思考');
INSERT INTO `t_tag` VALUES (5, 'data structures');
INSERT INTO `t_tag` VALUES (6, 'leetcode');

-- ----------------------------
-- Table structure for t_type
-- ----------------------------
DROP TABLE IF EXISTS `t_type`;
CREATE TABLE `t_type`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_type
-- ----------------------------
INSERT INTO `t_type` VALUES (1, '技术日志');
INSERT INTO `t_type` VALUES (2, '我的日常');
INSERT INTO `t_type` VALUES (3, '科研任务');
INSERT INTO `t_type` VALUES (4, '诗词');
INSERT INTO `t_type` VALUES (5, '猫咪');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 'https://picsum.photos/id/452/100/100', '2021-04-28 22:31:22', 'parker_test@163.com', 'admin', '827ccb0eea8a706c4c34a16891f84e7b', '1', '2021-04-28 22:33:28', 'admin');

SET FOREIGN_KEY_CHECKS = 1;
