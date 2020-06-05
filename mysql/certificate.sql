



#  证书类型维度表
DROP TABLE if exists common_certificate;
CREATE TABLE common_certificate
(
    id                      BIGINT(20)   NOT NULL AUTO_INCREMENT COMMENT '自增主键',
    certificate_id          VARCHAR(64)  COMMENT '证书ID',
    certificate_name        VARCHAR(64)  COMMENT '证书名称',
    certificate_sort        smallint(4)  COMMENT '证书分类(待定，还没有做出分类)',
    certificate_hot         int(11)      COMMENT '学生考这个证书的火热程度(0-100的值)',
    create_time             TIMESTAMP    COMMENT '用户注册时间的时间戳',
    update_time             TIMESTAMP    COMMENT '更新字段的时间戳',
    PRIMARY KEY (id),
    KEY idx (user_id)
)ENGINE=INNODB DEFAULT CHARSET=utf8
COMMENT='证书维度表'





#  大学学校维度表
DROP TABLE if exists common_school;
CREATE TABLE common_school
(
    id                      BIGINT(20)   NOT NULL AUTO_INCREMENT COMMENT '自增主键',
    certificate_id          VARCHAR(64)  COMMENT '证书ID',
    certificate_name        VARCHAR(64)  COMMENT '证书名称',
    certificate_sort        smallint(4)  COMMENT '证书分类(待定，还没有做出分类)',
    certificate_hot         int(11)      COMMENT '学生考这个证书的火热程度(0-100的值)',
    create_time             TIMESTAMP    COMMENT '用户注册时间的时间戳',
    update_time             TIMESTAMP    COMMENT '更新字段的时间戳',
    PRIMARY KEY (id),
    KEY idx (user_id)
)ENGINE=INNODB DEFAULT CHARSET=utf8
COMMENT='学校维度表'



#  研究生专业维度表
DROP TABLE if exists common_postgraduate_profession;
CREATE TABLE common_postgraduate_profession
(
    id                      BIGINT(20)   NOT NULL AUTO_INCREMENT COMMENT '自增主键',
    certificate_id          VARCHAR(64)  COMMENT '证书ID',
    certificate_name        VARCHAR(64)  COMMENT '证书名称',
    certificate_sort        smallint(4)  COMMENT '证书分类(待定，还没有做出分类)',
    certificate_hot         int(11)      COMMENT '学生考这个证书的火热程度(0-100的值)',
    create_time             TIMESTAMP    COMMENT '用户注册时间的时间戳',
    update_time             TIMESTAMP    COMMENT '更新字段的时间戳',
    PRIMARY KEY (id),
    KEY idx (user_id)
)ENGINE=INNODB DEFAULT CHARSET=utf8
COMMENT='学校维度表'




