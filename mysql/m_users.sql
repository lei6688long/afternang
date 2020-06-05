

# 用户基本表
DROP TABLE if exists m_users;
CREATE TABLE m_users
(
    id                      BIGINT(20)   NOT NULL AUTO_INCREMENT COMMENT '自增主键',
    user_id                 VARCHAR(64)  COMMENT '用户ID',
    real_name               VARCHAR(64)  COMMENT '用户真实姓名',
    nick_name               VARCHAR(64)  COMMENT '用户昵称',
    sex                     smallint(4)  COMMENT '性别(0：女，1：男)',
    icon                    VARCHAR(64)  COMMENT '用户头像',
    school_section          smallint(4)  COMMENT '学段(0：大学生，1：研究生)',
    school_id               VARCHAR(16)  COMMENT '学校ID',
    school_name             VARCHAR(64)  COMMENT '学校name',
    entrance_school_date    VARCHAR(64)  COMMENT '入学时间',
    is_authenticate         smallint(4)  COMMENT '是否已经实名制认证(0：未认证，1：已认证)',
    status                  smallint(4)  COMMENT '用户状态(-1：账户已注销，0：已经毕业，1：正常)',
    create_time             TIMESTAMP    COMMENT '用户注册时间的时间戳',
    update_time             TIMESTAMP    COMMENT '用户更新字段的时间戳',
    PRIMARY KEY (id),
    KEY idx (user_id)
)ENGINE=INNODB DEFAULT CHARSET=utf8
COMMENT='用户表'


#     说明：
#       用户的user_id，是hashkeys