# 商品信息
CREATE TABLE `product_info` (
`product_id`  varchar(32) NOT NULL ,
`product_name`  varchar(64) NOT NULL ,
`product_price`  decimal(8,2) NOT NULL ,
`product_stock`  int NOT NULL ,
`product_description`  varchar(64) NULL ,
`product_icon`  varchar(512) NULL ,
`product_type`  int NOT NULL ,
`create_time`  timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
`update_time`  timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
PRIMARY KEY (`product_id`)
)
;


# 商品类目表

CREATE TABLE `product_category` (
`category_id`  int NOT NULL AUTO_INCREMENT ,
`category_name`  varchar(64) NOT NULL UNIQUE,
`category_type`  int NOT NULL ,
`create_time`  timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
`update_time`  timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
PRIMARY KEY (`category_id`)
)
;


# 订单表
CREATE TABLE `order_master` (
`order_id`  varchar(32) NOT NULL ,
`buyer_name`  varchar(32) NOT NULL ,
`buyer_phone`  varchar(32) NOT NULL ,
`buyer_address`  varchar(128) NOT NULL ,
`buyer_openid`  varchar(64) NOT NULL ,
`order_amount`  decimal(8,2) NOT NULL ,
`order_state`  tinyint(3) NOT NULL DEFAULT 0 COMMENT '0为新下单' ,
`pay_state`  tinyint(3) NOT NULL DEFAULT 0 COMMENT '0未支付' ,
`create_time`  timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
`update_time`  timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
PRIMARY KEY (`order_id`)
)
;

# 订单详细信息
CREATE TABLE `order_detail` (
`detail_id`  varchar(32) NOT NULL ,
`order_id`  varchar(32) NOT NULL ,
`product_id`  varchar(32) NOT NULL ,
`product_name`  varchar(64) NOT NULL ,
`product_price`  decimal(8,2) NOT NULL ,
`product_quantity`  int NOT NULL ,
`product_icon`  varchar(512) NULL ,
`create_time`  timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
`update_time`  timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
PRIMARY KEY (`detail_id`),
INDEX `idx_order_id` (`order_id`)
)
;