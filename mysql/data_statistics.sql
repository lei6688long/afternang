



#  用户数据情况
DROP TABLE if exists supervise_class_study_log;
CREATE TABLE supervise_class_study_log
(
    id                             BIGINT(20)   NOT NULL AUTO_INCREMENT COMMENT '自增主键',
    class_id                       VARCHAR(32)  COMMENT '班级ID',
    user_id                        VARCHAR(48)  COMMENT '用户的账号ID',
    study_duration                 BIGINT       COMMENT '学习时长',
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