

#  班级表
DROP TABLE if exists class_info;
CREATE TABLE class_info
(
    id                      BIGINT(20)   NOT NULL AUTO_INCREMENT COMMENT '自增主键',
    class_id                VARCHAR(32)  COMMENT '班级ID(随机生成的hashkey值)',
    class_name              VARCHAR(48)  COMMENT '班级名称(自定义班级名，不超过16个字)',
    brand                   VARCHAR(64)  COMMENT '班级icon',
    class_master_id         VARCHAR(48)  COMMENT '班长ID',
    class_master_name       VARCHAR(24)  COMMENT '班长昵称(不超过8个字)',
    master_icon             VARCHAR(64)  COMMENT '班长的头像icon',
    master_school_id        VARCHAR(8)   COMMENT '学校ID(s开头的6位，如：s24175)',
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



#  相互监督的班级
DROP TABLE if exists class_supervise;
CREATE TABLE class_supervise
(
    id                      BIGINT(20)   NOT NULL AUTO_INCREMENT COMMENT '自增主键',
    class_id                VARCHAR(32)  COMMENT '班级ID(随机生成的hashkey值)',
    class_name              VARCHAR(48)  COMMENT '班级名称(自定义班级名，不超过16个字)',
    brand                   VARCHAR(64)  COMMENT '班级icon',
    class_master_id         VARCHAR(48)  COMMENT '班长ID',
    class_master_name       VARCHAR(24)  COMMENT '班长昵称(不超过8个字)',
    master_icon             VARCHAR(64)  COMMENT '班长的头像icon',
    master_school_id        VARCHAR(8)   COMMENT '学校ID(s开头的6位，如：s24175)',
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
