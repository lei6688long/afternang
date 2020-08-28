

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

    plan_table                   VARCHAR(64)  COMMENT '计划表ID',
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



#  成长班级表，用户表
DROP TABLE if exists growing_class_user;
CREATE TABLE growing_class_user
(
    id                           BIGINT(20)   NOT NULL AUTO_INCREMENT COMMENT '自增主键',
    class_id                     VARCHAR(32)  COMMENT '班级ID',
    user_id                      VARCHAR(48)  COMMENT '用户的账号ID',
    nick_name                    VARCHAR(24)  COMMENT '用户昵称(不超过8个字)',
    sex                          smallint(4)  COMMENT '性别(0：女，1：男)',
    icon                         VARCHAR(64)  COMMENT '用户头像',
    school_id                    VARCHAR(8)   COMMENT '学校ID',
    school_name                  VARCHAR(64)  COMMENT '学校name',
    set_target                   VARCHAR(255) COMMENT '设置我的学习梦想',
    status                       VARCHAR(64)  COMMENT '班长对成员的权限状态等设置',
    create_time                  TIMESTAMP    COMMENT '创建时间的时间戳',
    update_time                  TIMESTAMP    COMMENT '更新字段的时间戳',
    PRIMARY KEY (id),
    KEY idx (class_id,user_id,school_id)
)ENGINE=INNODB DEFAULT CHARSET=utf8
COMMENT='成长班级用户表'




#  学生在班级中的pk设置
DROP TABLE if exists growing_class_user_pk_setting;
CREATE TABLE growing_class_user_pk_setting
(
    id                           BIGINT       NOT NULL AUTO_INCREMENT COMMENT '自增主键',
    class_id                     VARCHAR(32)  COMMENT '班级ID',
    user_id                      VARCHAR(48)  COMMENT '用户的账号ID',
    nick_name                    VARCHAR(24)  COMMENT '用户昵称(不超过8个字)',
    icon                         VARCHAR(64)  COMMENT '用户头像',
    pk_user_id                   VARCHAR(48)  COMMENT 'pk对象的用户ID',
    pk_nick_name                 VARCHAR(24)  COMMENT 'pk对象的用户昵称(不超过8个字)',
    pk_icon                      VARCHAR(64)  COMMENT 'pk对象的用户头像',
    create_time                  TIMESTAMP    COMMENT '创建时间的时间戳',
    update_time                  TIMESTAMP    COMMENT '更新字段的时间戳',
    PRIMARY KEY (id),
    KEY idx (class_id,user_id,pk_user_id)
)ENGINE=INNODB DEFAULT CHARSET=utf8
COMMENT='成长班级用户个人的学习情况'




#  成长班级, 班级总体学习流水表
DROP TABLE if exists growing_class_log;
CREATE TABLE growing_class_log
(
    id                           BIGINT(20)   NOT NULL AUTO_INCREMENT COMMENT '自增主键',
    data_period                  VARCHAR(16)  COMMENT '日期',
    class_id                     VARCHAR(32)  COMMENT '班级ID',
    first_study_time             TIMESTAMP    COMMENT '每天班级中最早的学习时间',
    first_study_user_id          VARCHAR(48)  COMMENT '每天班级中最早的学习用户ID',
    create_time                  TIMESTAMP    COMMENT '创建时间的时间戳',
    update_time                  TIMESTAMP    COMMENT '更新字段的时间戳',
    PRIMARY KEY (id),
    KEY idx (class_id)
)ENGINE=INNODB DEFAULT CHARSET=utf8
COMMENT='成长班级总体学习情况日志表'





#  学生在班级中的学习情况，用户个人的学习情况
DROP TABLE if exists growing_class_user_log;
CREATE TABLE growing_class_user_log
(
    id                           BIGINT       NOT NULL AUTO_INCREMENT COMMENT '自增主键',
    data_period                  VARCHAR(16)  COMMENT '日期',
    user_id                      VARCHAR(48)  COMMENT '用户的账号ID',
    nick_name                    VARCHAR(24)  COMMENT '用户昵称(不超过8个字)',
    icon                         VARCHAR(64)  COMMENT '用户头像',
    class_id                     VARCHAR(32)  COMMENT '用户所属班级ID',
    study_start_time             TIMESTAMP    COMMENT '一天中学习最早开始时间',
    study_duration               BIGINT       COMMENT '学习时长',
    is_study_active              tinyint      COMMENT '是否在学习状态(0:未学习，1:正在学习，2:暂停休息)',
    create_time                  TIMESTAMP    COMMENT '创建时间的时间戳',
    update_time                  TIMESTAMP    COMMENT '更新字段的时间戳',
    PRIMARY KEY (id),
    KEY idx (user_id,class_id)
)ENGINE=INNODB DEFAULT CHARSET=utf8
COMMENT='成长班级用户个人的学习情况'



#  班级评论模块
class_comment
{
    "classid":"班级ID",
    "star5":"5星好评数",
    "star4":"4星好评数",
    "star3":"3星好评数",
    "star2":"2星好评数",
    "star1":"1星好评数",
    "ccount": "评论总数",
    "comment":[
        {
            "schoolid":"学校id",
            "userid":"用户ID",
            "nickname":"用户昵称",
            "icon":"用户头像",
            "cTime":"评论时间",
            "starLevel": "评论标星数",
            "context":"评论的内容"
        },
        {
            "schoolid":"学校id",
            "userid":"用户ID",
            "nickname":"用户昵称",
            "icon":"用户头像",
            "cTime":"评论时间",
            "starLevel": "评论标星数",
            "context":"评论的内容"
        },
        {
            "schoolid":"学校id",
            "userid":"用户ID",
            "nickname":"用户昵称",
            "icon":"用户头像",
            "cTime":"评论时间",
            "starLevel": "评论标星数",
            "context":"评论的内容"
        }
    ],
    "upTime":"更新时间"
}
















#  相互监督的班级
DROP TABLE if exists supervise_class;
CREATE TABLE supervise_class
(
    id                          BIGINT(20)   NOT NULL AUTO_INCREMENT COMMENT '自增主键',
    class_id                    VARCHAR(32)  COMMENT '班级ID',
    class_master_id             VARCHAR(48)  COMMENT '班级管理员ID',
    class_user_count            tinyint      COMMENT '班级成员数(监督班人数<=7)',
    set_everyday_study_time     BIGINT       COMMENT '设置用户每天的学习时长',
    set_punishment              VARCHAR(512) COMMENT '设置班级用户如果未完成规定时长时的惩罚',
    set_convention              VARCHAR(512) COMMENT '设置班级公约',
    create_time                 TIMESTAMP    COMMENT '创建时间的时间戳',
    update_time                 TIMESTAMP    COMMENT '更新字段的时间戳',
    PRIMARY KEY (id),
    KEY idx (class_id)
)ENGINE=INNODB DEFAULT CHARSET=utf8
COMMENT='相互监督班级表'





#  相互监督的班级学习情况日志表
DROP TABLE if exists supervise_class_study_log;
CREATE TABLE supervise_class_study_log
(
    id                             BIGINT(20)   NOT NULL AUTO_INCREMENT COMMENT '自增主键',
    data_period                    VARCHAR(16)  COMMENT '日期',
    user_id                        VARCHAR(48)  COMMENT '用户的账号ID',
    chat_duration                  BIGINT       COMMENT '聊天时长',
    play_duration                  BIGINT       COMMENT '娱乐时长',
    total_work_situation           tinyint      COMMENT '今日任务总体完成情况',
    study_status_if_satisfaction   tinyint      COMMENT '今日学习状态是否满意',
    waste_duration                 BIGINT       COMMENT '今日大约浪费的时长',
    reflection_context             VARCHAR(512) COMMENT '反思内容',
    create_time                    TIMESTAMP    COMMENT '创建时间的时间戳',
    update_time                    TIMESTAMP    COMMENT '更新字段的时间戳',
    PRIMARY KEY (id),
    KEY idx (class_id,user_id)
)ENGINE=INNODB DEFAULT CHARSET=utf8
COMMENT='相互监督的班级学习情况日志表'
