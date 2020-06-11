

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
    school_id               VARCHAR(8)   COMMENT '学校ID',
    school_name             VARCHAR(64)  COMMENT '学校name',
    entrance_school_date    date         COMMENT '入学时间',
    profession_section      smallint(4)  COMMENT '专业段位(1：专科专业，2：本科专业，8：专硕专业，9：学硕专业)',
    profession_id           VARCHAR(16)  COMMENT '专业ID(p开头的7位数，如：p241745)',
    profession_name         VARCHAR(64)  COMMENT '专业name',
    is_authenticate         smallint(4)  COMMENT '是否已经实名制认证(0：未认证，1：已认证)',
    status                  smallint(4)  COMMENT '用户状态(-1：账户已注销，0：已经毕业，1：正常)',
    create_time             TIMESTAMP    COMMENT '用户注册时间的时间戳',
    update_time             TIMESTAMP    COMMENT '用户更新字段的时间戳',
    PRIMARY KEY (id),
    KEY idx (user_id)
)ENGINE=INNODB DEFAULT CHARSET=utf8
COMMENT='用户基本表'


#     说明：
#       用户的user_id，是手机号、appid等第三方登陆标识
#







# 用户证书认证表
DROP TABLE if exists m_certification;
CREATE TABLE m_certification
(
    id                      BIGINT(20)   NOT NULL AUTO_INCREMENT COMMENT '自增主键',
    user_id                 VARCHAR(64)  COMMENT '用户ID',
    school_section          smallint(4)  COMMENT '学段(1：大学生，7：研究生)',
    school_id               VARCHAR(8)   COMMENT '学校ID',
    school_name             VARCHAR(64)  COMMENT '学校name',
    certificate_id          VARCHAR(16)  COMMENT '专业or证书ID(包含研究生专业id、和考的专业证书id)',
    certificate_name        VARCHAR(16)  COMMENT '专业or证书name(包含研究生专业名，证书名称)',
    type                    smallint(4)  COMMENT '证书类型(0：学生考的专业证书，1：专科学校学生证，2：本科学校学生证，8：专硕专业学生证，9：学硕专业学生证)',
    photo                   VARCHAR(64)  COMMENT '用户用于认证的证书照片',
    is_authenticate         smallint(4)  COMMENT '认证是否通过(0：未认证，1：已认证)',
    status                  smallint(4)  COMMENT '用户状态(0：已经毕业，1：正常)',
    create_time             TIMESTAMP    COMMENT '用户注册时间的时间戳',
    update_time             TIMESTAMP    COMMENT '用户更新字段的时间戳',
    PRIMARY KEY (id),
    KEY idx (user_id)
)ENGINE=INNODB DEFAULT CHARSET=utf8
COMMENT='用户基本表'