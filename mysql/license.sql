



#  证书维度表
DROP TABLE if exists common_license;
CREATE TABLE common_certificate
(
    id                      BIGINT(20)   NOT NULL AUTO_INCREMENT COMMENT '自增主键',
    license_id              VARCHAR(16)  COMMENT '证书ID(c开头的7位数，如：c241745)',
    license_name            VARCHAR(64)  COMMENT '证书名称',
    license_sort            smallint(4)  COMMENT '证书分类(待定，还没有做出分类)',
    hot                     int(8)       COMMENT '学生考这个证书的火热程度(0-100的值)',
    update_time             TIMESTAMP    COMMENT '更新字段的时间戳',
    PRIMARY KEY (id),
    KEY idx (certificate_id)
)ENGINE=INNODB DEFAULT CHARSET=utf8
COMMENT='证书维度表'





#  专业维度表
DROP TABLE if exists common_profession;
CREATE TABLE common_profession
(
    id                      BIGINT(20)   NOT NULL AUTO_INCREMENT COMMENT '自增主键',
    profession_id           VARCHAR(16)  COMMENT '专业ID(p开头的7位数，如：p241745)',
    profession_name         VARCHAR(64)  COMMENT '专业name',
    profession_section      smallint(4)  COMMENT '专业段位(1：专科专业，2：本科专业，8：研究生专业)',
    update_time             TIMESTAMP    COMMENT '更新字段的时间戳',
    PRIMARY KEY (id),
    KEY idx (profession_id)
)ENGINE=INNODB DEFAULT CHARSET=utf8
COMMENT='专业维度表'
#  说明：如果是专科专业，就是p1开头的7位数，如果是本科专业，就是p2开头，如果是研究上专业，就是p8






#  大学学校维度表
DROP TABLE if exists common_school;
CREATE TABLE common_school
(
    id                      BIGINT(20)   NOT NULL AUTO_INCREMENT COMMENT '自增主键',
    province_id             VARCHAR(4)   COMMENT '省份ID',
    province_name           VARCHAR(64)  COMMENT '省份name',
    city_id                 VARCHAR(8)   COMMENT '地市ID',
    city_name               VARCHAR(64)  COMMENT '地市name',
    school_id               VARCHAR(8)   COMMENT '学校ID(s开头的5位，如：s24175)',
    school_name             VARCHAR(64)  COMMENT '学校名称',
    icon                    VARCHAR(64)  COMMENT '学校校徽',
    school_address          VARCHAR(512) COMMENT '学校的详细地址',
    school_birthday         date         COMMENT '校庆日',
    school_tile             VARCHAR(512) COMMENT '学校的各种tile(如：985,211,双一流)',
    hot                     int(8)       COMMENT '学校的火热程度(0-100的值)',
    branch_schoolid_list    VARCHAR(64)  COMMENT '当前学校的分校id(学校ID之间用,隔开，如：s24172,s82684)',
    update_time             TIMESTAMP    COMMENT '更新字段的时间戳',
    PRIMARY KEY (id),
    KEY idx (province_id,city_id,school_id)
)ENGINE=INNODB DEFAULT CHARSET=utf8
COMMENT='学校维度表'





#  研究生专业维度表
DROP TABLE if exists common_postgraduate_profession;
CREATE TABLE common_postgraduate_profession
(
    id                      BIGINT(20)   NOT NULL AUTO_INCREMENT COMMENT '自增主键',
    school_id               VARCHAR(8)   COMMENT '学校ID(s开头的5位，如：s2417)',
    school_name             VARCHAR(64)  COMMENT '学校名称',
    icon                    VARCHAR(64)  COMMENT '学校校徽',
    school_tile             VARCHAR(512) COMMENT '专业的各种tile(如：985,211,双一流)',
    profession_id           VARCHAR(16)  COMMENT '专业ID(p开头的7位数，如：p241745)',
    profession_name         VARCHAR(64)  COMMENT '专业name',
    profession_section      smallint(4)  COMMENT '专业段位(8：专硕，9：学硕)',
    school_order            int(11)      COMMENT '学校综合实力在全国学校中的排名',
    profession_order        int(11)      COMMENT '专业的综合实力在全国同专业中的排名',
    hot                     int(8)       COMMENT '学生考这个专业的火热程度(0-100的值)',
    last_5_admission_score  VARCHAR(32)  COMMENT '近五年的录取分数线(如：412,423,400,418,420)',
    update_time             TIMESTAMP    COMMENT '更新字段的时间戳',
    PRIMARY KEY (id),
    KEY idx (school_id,profession_id)
)ENGINE=INNODB DEFAULT CHARSET=utf8
COMMENT='研究生专业维度表'










