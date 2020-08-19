


########
##
##    与钱相关
##
########




#  用户的钱包
DROP TABLE if exists wallet_user;
CREATE TABLE wallet_user
(
    id                             BIGINT(20)   NOT NULL AUTO_INCREMENT COMMENT '自增主键',
    user_id                        VARCHAR(48)  COMMENT '用户的账号ID',
    food_stamp_count               INT          COMMENT '粮票数',
    sun_count                      BIGINT       COMMENT '太阳数',
    yesterday_obtain_sun_count     INT          COMMENT '昨天获得的太阳数',
    create_time                    TIMESTAMP    COMMENT '创建时间的时间戳',
    update_time                    TIMESTAMP    COMMENT '更新字段的时间戳',
    PRIMARY KEY (id),
    KEY idx (user_id)
)ENGINE=INNODB DEFAULT CHARSET=utf8
COMMENT='用户的钱包'








#  组团拿奖学金
DROP TABLE if exists group_scholarship;
CREATE TABLE group_scholarship
(
    id                             BIGINT(20)   NOT NULL AUTO_INCREMENT COMMENT '自增主键',
    group_id                       VARCHAR(48)  COMMENT '团号ID',
    user_count                     INT          COMMENT '团用户数',
    money                          BIGINT       COMMENT '钱币数(1元=1000哩)',
    create_time                    TIMESTAMP    COMMENT '创建时间的时间戳',
    update_time                    TIMESTAMP    COMMENT '更新字段的时间戳',
    PRIMARY KEY (id),
    KEY idx (group_id)
)ENGINE=INNODB DEFAULT CHARSET=utf8
COMMENT='组团拿奖学金'



#  团-用户关系表
DROP TABLE if exists group_user;
CREATE TABLE group_user
(
    id                             BIGINT(20)   NOT NULL AUTO_INCREMENT COMMENT '自增主键',
    group_id                       VARCHAR(48)  COMMENT '团号ID',
    user_id                        VARCHAR(48)  COMMENT '用户的账号ID',
    nick_name                      VARCHAR(24)  COMMENT '用户昵称(不超过8个字)',
    icon                           VARCHAR(64)  COMMENT '用户头像',
    school_id                      VARCHAR(8)   COMMENT '学校ID',
    create_time                    TIMESTAMP    COMMENT '创建时间的时间戳',
    update_time                    TIMESTAMP    COMMENT '更新字段的时间戳',
    PRIMARY KEY (id),
    KEY idx (group_id,user_id)
)ENGINE=INNODB DEFAULT CHARSET=utf8
COMMENT='团-用户关系表'