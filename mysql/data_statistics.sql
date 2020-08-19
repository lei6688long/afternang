


####
#     用户的数据统计
####




#  用户数据情况，截止到目前
DROP TABLE if exists study_user_target;
CREATE TABLE study_user_target
(
    id                             BIGINT(20)   NOT NULL AUTO_INCREMENT COMMENT '自增主键',
    user_id                        VARCHAR(48)  COMMENT '用户的账号ID',
    week_study_days                INT          COMMENT '每周学习天数',
    week_study_duration            BIGINT       COMMENT '每周学习时长',
    study_start_time               TIMESTAMP    COMMENT '每天在规定时间之前学习',
    create_time                    TIMESTAMP    COMMENT '创建时间的时间戳',
    update_time                    TIMESTAMP    COMMENT '更新字段的时间戳',
    PRIMARY KEY (id),
    KEY idx (user_id)
)ENGINE=INNODB DEFAULT CHARSET=utf8
COMMENT='截止到目前的学习数据表'






#  用户数据情况，截止到目前
DROP TABLE if exists study_stat_untilnow;
CREATE TABLE study_stat_untilnow
(
    id                             BIGINT(20)   NOT NULL AUTO_INCREMENT COMMENT '自增主键',
    data_period                    VARCHAR(16)  COMMENT '日期',
    user_id                        VARCHAR(48)  COMMENT '用户的账号ID',
    study_duration                 BIGINT       COMMENT '学习时长',
    other_study_duration           BIGINT       COMMENT '其他平台的学习时长',
    chat_duration                  BIGINT       COMMENT '聊天时长',
    play_duration                  BIGINT       COMMENT '娱乐时长',
    study_days                     INT          COMMENT '学习天数',
    complete_task_days             INT          COMMENT '完成自己设定的学习任务目标天数',
    study_2hour_down_days          INT          COMMENT '学习在2小时以下的天数',
    study_6hour_down_days          INT          COMMENT '学习在2-6小时之间的天数',
    study_6hour_up_days            INT          COMMENT '学习在6小时以上的天数',
    study_8clock_before_days       INT          COMMENT '在8点之前学习的天数',
    create_time                    TIMESTAMP    COMMENT '创建时间的时间戳',
    update_time                    TIMESTAMP    COMMENT '更新字段的时间戳',
    PRIMARY KEY (id),
    KEY idx (user_id)
)ENGINE=INNODB DEFAULT CHARSET=utf8
COMMENT='截止到目前的学习数据表'






#  用户数据情况，昨日
DROP TABLE if exists study_stat_day;
CREATE TABLE study_stat_day
(
    id                             BIGINT(20)   NOT NULL AUTO_INCREMENT COMMENT '自增主键',
    data_period                    VARCHAR(16)  COMMENT '日期',
    user_id                        VARCHAR(48)  COMMENT '用户的账号ID',
    study_duration                 BIGINT       COMMENT '学习时长',
    other_study_duration           BIGINT       COMMENT '其他平台的学习时长',
    chat_duration                  BIGINT       COMMENT '聊天时长',
    play_duration                  BIGINT       COMMENT '娱乐时长',
    is_task_complete               smallint(4)  COMMENT '今天的学习是否达到学习目标(0：未达到，1：达到)',
    is_study_8clock_before         smallint(4)  COMMENT '是否是在8点之前开始学习(0：不是，1：是)',
    create_time                    TIMESTAMP    COMMENT '创建时间的时间戳',
    update_time                    TIMESTAMP    COMMENT '更新字段的时间戳',
    PRIMARY KEY (id),
    KEY idx (user_id)
)ENGINE=INNODB DEFAULT CHARSET=utf8
COMMENT='昨日的学习数据表'







#  用户数据情况，本周
DROP TABLE if exists study_stat_thisweek;
CREATE TABLE study_stat_thisweek
(
    id                             BIGINT(20)   NOT NULL AUTO_INCREMENT COMMENT '自增主键',
    data_period                    VARCHAR(16)  COMMENT '日期',
    user_id                        VARCHAR(48)  COMMENT '用户的账号ID',
    study_duration                 BIGINT       COMMENT '学习时长',
    other_study_duration           BIGINT       COMMENT '其他平台的学习时长',
    chat_duration                  BIGINT       COMMENT '聊天时长',
    play_duration                  BIGINT       COMMENT '娱乐时长',
    study_days                     INT          COMMENT '学习天数',
    complete_task_days             INT          COMMENT '完成自己设定的学习任务目标天数',
    study_2hour_down_days          INT          COMMENT '学习在2小时以下的天数',
    study_6hour_down_days          INT          COMMENT '学习在2-6小时之间的天数',
    study_6hour_up_days            INT          COMMENT '学习在6小时以上的天数',
    study_8clock_before_days       INT          COMMENT '在8点之前学习的天数',
    create_time                    TIMESTAMP    COMMENT '创建时间的时间戳',
    update_time                    TIMESTAMP    COMMENT '更新字段的时间戳',
    PRIMARY KEY (id),
    KEY idx (user_id)
)ENGINE=INNODB DEFAULT CHARSET=utf8
COMMENT='本周的学习数据表'







#  用户数据情况，本月
DROP TABLE if exists study_stat_thismonth;
CREATE TABLE study_stat_thismonth
(
    id                             BIGINT(20)   NOT NULL AUTO_INCREMENT COMMENT '自增主键',
    data_period                    VARCHAR(16)  COMMENT '日期',
    user_id                        VARCHAR(48)  COMMENT '用户的账号ID',
    study_duration                 BIGINT       COMMENT '学习时长',
    other_study_duration           BIGINT       COMMENT '其他平台的学习时长',
    chat_duration                  BIGINT       COMMENT '聊天时长',
    play_duration                  BIGINT       COMMENT '娱乐时长',
    study_days                     INT          COMMENT '学习天数',
    complete_task_days             INT          COMMENT '完成自己设定的学习任务目标天数',
    study_2hour_down_days          INT          COMMENT '学习在2小时以下的天数',
    study_6hour_down_days          INT          COMMENT '学习在2-6小时之间的天数',
    study_6hour_up_days            INT          COMMENT '学习在6小时以上的天数',
    study_8clock_before_days       INT          COMMENT '在8点之前学习的天数',
    create_time                    TIMESTAMP    COMMENT '创建时间的时间戳',
    update_time                    TIMESTAMP    COMMENT '更新字段的时间戳',
    PRIMARY KEY (id),
    KEY idx (user_id)
)ENGINE=INNODB DEFAULT CHARSET=utf8
COMMENT='本月的学习数据表'






#  用户数据情况，本学期
DROP TABLE if exists study_stat_semester;
CREATE TABLE study_stat_semester
(
    id                             BIGINT(20)   NOT NULL AUTO_INCREMENT COMMENT '自增主键',
    data_period                    VARCHAR(16)  COMMENT '日期',
    user_id                        VARCHAR(48)  COMMENT '用户的账号ID',
    study_duration                 BIGINT       COMMENT '学习时长',
    other_study_duration           BIGINT       COMMENT '其他平台的学习时长',
    chat_duration                  BIGINT       COMMENT '聊天时长',
    play_duration                  BIGINT       COMMENT '娱乐时长',
    study_days                     INT          COMMENT '学习天数',
    complete_task_days             INT          COMMENT '完成自己设定的学习任务目标天数',
    study_2hour_down_days          INT          COMMENT '学习在2小时以下的天数',
    study_6hour_down_days          INT          COMMENT '学习在2-6小时之间的天数',
    study_6hour_up_days            INT          COMMENT '学习在6小时以上的天数',
    study_8clock_before_days       INT          COMMENT '在8点之前学习的天数',
    create_time                    TIMESTAMP    COMMENT '创建时间的时间戳',
    update_time                    TIMESTAMP    COMMENT '更新字段的时间戳',
    PRIMARY KEY (id),
    KEY idx (user_id)
)ENGINE=INNODB DEFAULT CHARSET=utf8
COMMENT='本学期的学习数据表'