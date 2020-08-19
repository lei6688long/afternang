

####
#     用户发表的动态，存储在MongoDB中
####


post_dynamic
{
    "_id": "主帖id",
    "space":"帖子发到的空间位置(0：全国贴，school_id：校园贴，class_id：班级贴，space_id:空间贴)",
    "uid": "创建者",
    "type": "类型(1、图文 2、视频 3、投票 4、分享 5、活动)",
    "pic":["http://aaa/1.png","http://aaa/2.png","http://aaa/3.png"],
    "context": "帖子文本信息",
    "illegal":"文本审核状态，0：不可申述，1：正常，2：可申述，3，申述中，4：申述失败",
    "creatime": "创建时间",
    "status": "状态(0:删除；1:正常)",
    "comment":[
        {
            "userid":"用户ID",
            "nickname":"用户昵称",
            "icon":"用户头像",
            "pcount": "点赞总数",
            "ecount": "评论总数",
            "tipoff"："举报次数",
            "comment":[
                {
                    "userid":"用户ID",
                    "nickname":"用户昵称",
                    "icon":"用户头像",
                    "pcount": "点赞总数",
                    "ecount": "评论总数",
                    "tipoff"："举报次数"
                },
                {
                    "userid":"用户ID",
                    "nickname":"用户昵称",
                    "icon":"用户头像",
                    "pcount": "点赞总数",
                    "ecount": "评论总数",
                    "tipoff"："举报次数"
                },
                {
                    "userid":"用户ID",
                    "nickname":"用户昵称",
                    "icon":"用户头像",
                    "pcount": "点赞总数",
                    "ecount": "评论总数",
                    "tipoff"："举报次数"
                }
            ]
        },
        {
            "userid":"用户ID",
            "nickname":"用户昵称",
            "icon":"用户头像",
            "pcount": "点赞总数",
            "ecount": "评论总数",
            "tipoff"："举报次数",
            "comment":[
                {
                    "userid":"用户ID",
                    "nickname":"用户昵称",
                    "icon":"用户头像",
                    "pcount": "点赞总数",
                    "ecount": "评论总数",
                    "tipoff"："举报次数"
                },
                {
                    "userid":"用户ID",
                    "nickname":"用户昵称",
                    "icon":"用户头像",
                    "pcount": "点赞总数",
                    "ecount": "评论总数",
                    "tipoff"："举报次数"
                },
                {
                    "userid":"用户ID",
                    "nickname":"用户昵称",
                    "icon":"用户头像",
                    "pcount": "点赞总数",
                    "ecount": "评论总数",
                    "tipoff"："举报次数"
                }
            ]
        },
        {
            "userid":"用户ID",
            "nickname":"用户昵称",
            "icon":"用户头像",
            "pcount": "点赞总数",
            "ecount": "评论总数",
            "tipoff"："举报次数",
            "comment":[
                {
                    "userid":"用户ID",
                    "nickname":"用户昵称",
                    "icon":"用户头像",
                    "pcount": "点赞总数",
                    "ecount": "评论总数",
                    "tipoff"："举报次数"
                },
                {
                    "userid":"用户ID",
                    "nickname":"用户昵称",
                    "icon":"用户头像",
                    "pcount": "点赞总数",
                    "ecount": "评论总数",
                    "tipoff"："举报次数"
                },
                {
                    "userid":"用户ID",
                    "nickname":"用户昵称",
                    "icon":"用户头像",
                    "pcount": "点赞总数",
                    "ecount": "评论总数",
                    "tipoff"："举报次数"
                }
            ]
        }
    ],
    "pcount": "点赞总数",
    "ecount": "评论总数",
    "tipoff"："举报次数",
    "weight":"综合系数，评论*0.7+点赞数*0.3",
    "upTime":"更新时间"
}











user_attention_fans
{
    "schoolid":"用户的学校id"
    "uid": "用户id",
    "attention":[     -- 关注
        {
            "schoolid":"学校id",
            "userid":"用户ID",
            "nickname":"用户昵称",
            "icon":"用户头像"
        },
        {
            "schoolid":"学校id",
            "userid":"用户ID",
            "nickname":"用户昵称",
            "icon":"用户头像"
        },
        {
            "schoolid":"学校id",
            "userid":"用户ID",
            "nickname":"用户昵称",
            "icon":"用户头像"
        }
    ],
    "fans":[      -- 粉丝
        {
            "schoolid":"学校id",
            "userid":"用户ID",
            "nickname":"用户昵称",
            "icon":"用户头像"
        },
        {
            "schoolid":"学校id",
            "userid":"用户ID",
            "nickname":"用户昵称",
            "icon":"用户头像"
        },
        {
            "schoolid":"学校id",
            "userid":"用户ID",
            "nickname":"用户昵称",
            "icon":"用户头像"
        }
    ],
    "attcount":"关注用户数",
    "fancount":"粉丝数",
    "dycount": "发布的动态总数",
    "upTime":"更新时间"
}