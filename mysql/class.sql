

#  成长班级表
DROP TABLE if exists growing_class_base;
CREATE TABLE growing_class_base
(
    id                           BIGINT(20)   NOT NULL AUTO_INCREMENT COMMENT '自增主键',
    class_id                     VARCHAR(32)  COMMENT '班级ID',
    class_type                   int(8)       COMMENT '班级类型(1、考研考证班级，2、班级群)',
    class_name                   VARCHAR(48)  COMMENT '班级名称(自定义班级名，不超过16个字)',
    brand                        VARCHAR(64)  COMMENT '班级封面',
    class_master_id              VARCHAR(48)  COMMENT '班长ID',
    class_master_name            VARCHAR(24)  COMMENT '班长昵称(不超过8个字)',
    class_master_real_name       VARCHAR(24)  COMMENT '班长的真实姓名',
    master_icon                  VARCHAR(64)  COMMENT '班长的头像icon',
    master_school_id             VARCHAR(8)   COMMENT '班长所属学校ID',
    master_school_name           VARCHAR(64)  COMMENT '班长所属学校名称',
    class_user_count             int(11)      COMMENT '班级成员数',
    first_study_date             TIMESTAMP    COMMENT '每天班级中最早的学习时间',

    connect_room_id              VARCHAR(64)  COMMENT '聊天室ID',
    study_room_id                VARCHAR(64)  COMMENT '文章视频学习区ID',
    dynamic_room_id              VARCHAR(64)  COMMENT '动态区ID',

    class_recommend              VARCHAR(512)  COMMENT '班级介绍',
    class_notice                 VARCHAR(512)  COMMENT '班级公告',


    create_time                  TIMESTAMP    COMMENT '创建时间的时间戳',
    update_time                  TIMESTAMP    COMMENT '更新字段的时间戳',
    PRIMARY KEY (id),
    KEY idx (class_id,class_master_id,master_school_id)
)ENGINE=INNODB DEFAULT CHARSET=utf8
COMMENT='成长班级表'






#  学生在班级中的学习表
DROP TABLE if exists study_user_class;
CREATE TABLE study_user_class
(
    id                           BIGINT       NOT NULL AUTO_INCREMENT COMMENT '自增主键',
    user_id                      VARCHAR(48)  COMMENT '用户的账号ID',
    login_id                     VARCHAR(64)  COMMENT '用户的登陆ID(QQ微信手机号相互不互通)',
    nick_name                    VARCHAR(24)  COMMENT '用户昵称(不超过8个字)',
    icon                         VARCHAR(64)  COMMENT '用户头像',
    class_id                     VARCHAR(32)  COMMENT '班级ID',
    study_start_date             TIMESTAMP    COMMENT '学习的开始时间',
    study_duration               BIGINT       COMMENT '学习时长',


    create_time                  TIMESTAMP    COMMENT '创建时间的时间戳',
    update_time                  TIMESTAMP    COMMENT '更新字段的时间戳',
    PRIMARY KEY (id),
    KEY idx (school_id,profession_id)
)ENGINE=INNODB DEFAULT CHARSET=utf8
COMMENT='成长班级表'














#  相互监督的班级
DROP TABLE if exists supervise_class;
CREATE TABLE supervise_class
(
    id                      BIGINT(20)   NOT NULL AUTO_INCREMENT COMMENT '自增主键',
    class_id                VARCHAR(32)  COMMENT '班级ID',
    class_master_id         VARCHAR(48)  COMMENT '班长ID',
    class_master_real_name  VARCHAR(24)  COMMENT '班长的真实姓名',
    master_icon             VARCHAR(64)  COMMENT '班长的头像icon',
    master_school_id        VARCHAR(8)   COMMENT '学校ID',
    master_school_name      VARCHAR(64)  COMMENT '学校名称',

    connect_room_id         VARCHAR(64)  COMMENT '聊天室ID',
    study_room_id           VARCHAR(64)  COMMENT '文章视频学习区ID',
    dynamic_room_id         VARCHAR(64)  COMMENT '动态区ID',


    create_time             TIMESTAMP    COMMENT '创建时间的时间戳',
    update_time             TIMESTAMP    COMMENT '更新字段的时间戳',
    PRIMARY KEY (id),
    KEY idx (school_id,profession_id)
)ENGINE=INNODB DEFAULT CHARSET=utf8
COMMENT='班级表'
