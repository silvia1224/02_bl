SET NAMES UTF8;
DROP DATABASE IF EXISTS bl;
CREATE DATABASE bl CHARSET=UTF8;
USE bl;

/**用户信息表**/
CREATE TABLE bl_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  upwd VARCHAR(32),
  email VARCHAR(64),
  phone VARCHAR(16),

  avatar VARCHAR(128),        #头像图片路径
  user_name VARCHAR(32),      #用户名，如王小明
  gender INT                  #性别  0-女  1-男
);

/**购物车条目**/
CREATE TABLE bl_shoppingcart_item(
  iid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,      #用户编号
  product_id INT,   #商品编号
  count INT,        #购买数量
  is_checked BOOLEAN #是否已勾选，确定购买
);

/**用户订单**/
CREATE TABLE bl_order(
  aid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,
  address_id INT,
  status INT,             #订单状态  1-等待付款  2-等待发货  3-运输中  4-已签收  5-已取消
  order_time BIGINT,      #下单时间
  pay_time BIGINT,        #付款时间
  deliver_time BIGINT,    #发货时间
  received_time BIGINT    #签收时间
)AUTO_INCREMENT=10000000;

/**用户订单**/
CREATE TABLE bl_order_detail(
  did INT PRIMARY KEY AUTO_INCREMENT,
  order_id INT,           #订单编号
  product_id INT,         #产品编号
  count INT               #购买数量
);

/****首页轮播广告商品****/
CREATE TABLE bl_index_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(64),
  href VARCHAR(128)
);

/****首页商品****/
CREATE TABLE bl_index_product(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(64),
  details VARCHAR(128),
  pic VARCHAR(128),
  price DECIMAL(10,2),
  href VARCHAR(128),
  seq_recommended TINYINT,
  seq_new_arrival TINYINT,
  seq_top_sale TINYINT
);

/******数据导入******/
/**插入用户信息**/
INSERT INTO bl_user VALUES(NULL,'silvia','123456','123456789@qq.com',13750849681,NULL,NULL,0),
(NULL,'tom','111111','65448749@qq.com',13650849681,NULL,NULL,1);

/****首页轮播广告商品****/
INSERT INTO bl_index_carousel VALUES
(NULL, 'img/index/banner1.jpg','轮播广告商品1','product_details_1.html'),
(NULL, 'img/index/banner2.jpg','轮播广告商品2','product_details_2.html'),
(NULL, 'img/index/banner3.jpg','轮播广告商品3','product_details_3.html'),
(NULL, 'img/index/banner4.jpg','轮播广告商品4','product_details_4.html');

/****首页商品****/
INSERT INTO bl_index_product VALUES
(NULL, '北欧白色陶瓷花瓶摆件现代简约欧式插花干花花器客厅家居软装饰品', NULL, 'img/product/product1.jpg', 2699, 'product_details_1.html', 1, 1, 1),
(NULL, '彼爱北欧实木餐桌椅组合现代简约小户型多功能智能电磁炉饭桌家具', NULL, 'img/product/product2.jpg', 3999, 'product_details_2.html', 2, 2, 2),
(NULL, '葱郁世界 现代绿植创意龟背竹装饰画相框画饭厅挂画餐厅墙面壁画', NULL, 'img/product/product3.jpg', 3299, 'product_details_3.html', 3, 3, 3),
(NULL, '落地中式根雕流水喷泉风水轮摆件客厅招财鱼缸加湿器创意家居装饰', NULL, 'img/product/product4.jpg', 3999, 'product_details_4.html', 4, 4, 4),
(NULL, '梅花鹿纯铜鹿摆件家居装饰品客厅玄关办公室工艺品招财开业送礼品', NULL, 'img/product/product5.jpg', 3298, 'product_details_5.html', 5, 5, 5),
(NULL, '陶瓷干花花瓶摆件 手工创意简约客厅插花花器家居装饰品', NULL, 'img/product/product6.jpg',3699, 'product_details_6.html', 6, 6, 6),
(NULL, '新中式禅意玄关摆件客厅办公室创意家居软装饰工艺品乔迁新居礼品', NULL, 'img/product/product7.jpg', 3399, 'product_details_7.html', 7, 7, 7),
(NULL, '心花怒放 北欧风格六边形装饰画ins挂画客厅餐厅壁画粉色主卧墙画', NULL, 'img/product/product7.jpg', 3298, 'product_details_8.html', 8, 8, 8),
(NULL, '原始原素全实木床1.8米1.5双人床现代简约卧室家具橡木高箱储物床', NULL, 'img/product/product7.jpg', 4999, 'product_details_9.html',9, 9, 9);
