import Foundation

// MARK: - 商务英语内容
// 板块：职场自我介绍 / 职场沟通 / 商务社交
// 现阶段先搭好框架并放入通用表达，后续持续补充你的个性化素材。

extension TopicData {

    // MARK: 板块一：职场自我介绍

    static let businessIntroSection = TopicSection(
        "biz-intro", "职场自我介绍", "Business Introductions",
        icon: "person.text.rectangle.fill",
        topics: [
            Topic(
                "biz-self-intro", "商务自我介绍", "Business Self-Introduction",
                icon: "briefcase.fill",
                scene: "新团队入职、会议开场、行业活动上介绍自己：姓名 + 公司 + 职位 + 职责。",
                expressions: [
                    Expression(
                        "bi-01", "Hello everyone, I'm Kyle from the product team.",
                        "大家好，我是产品团队的 Kyle。",
                        note: "会议开场最简洁得体的自我介绍。"
                    ),
                    Expression(
                        "bi-02", "It's a pleasure to meet you all — I've heard great things about this team.",
                        "很高兴认识大家，早听说这个团队很棒。",
                        note: "heard great things 顺带表达敬意，破冰效果极佳。"
                    ),
                    Expression(
                        "bi-03", "I'm a product manager at a tech company, focusing on mobile apps.",
                        "我是一家科技公司的产品经理，主要负责移动应用方向。",
                        note: "职位 + focusing on 细分领域，一句话说清定位。"
                    ),
                    Expression(
                        "bi-04", "I'm the person to reach out to if you have any questions about the project.",
                        "关于这个项目有任何问题都可以找我。",
                        note: "明确自己的角色和对接方式，新人融入必备。"
                    ),
                ]
            ),
            Topic(
                "biz-education", "教育背景", "Educational Background",
                icon: "graduationcap.fill",
                scene: "被问学历、专业背景，商务社交和面试都会聊到。",
                expressions: [
                    Expression(
                        "ed-01", "I graduated from Zhejiang University with a degree in computer science.",
                        "我毕业于浙江大学，计算机专业。",
                        note: "graduate from + 学校 + with a degree in + 专业，标准句式。"
                    ),
                    Expression(
                        "ed-02", "I majored in English, which is why I'm comfortable communicating in English.",
                        "我专业是英语，所以我能用英语顺畅交流。",
                        note: "顺势展示语言能力，商务场合很加分。"
                    ),
                    Expression(
                        "ed-03", "I also hold a master's degree in business administration.",
                        "我还持有工商管理硕士学位。",
                        note: "hold a degree 表示“拥有学位”，比 have 正式。"
                    ),
                    Expression(
                        "ed-04", "My background in engineering helps me approach problems in a very structured way.",
                        "我的工科背景让我习惯用很有条理的方式解决问题。",
                        note: "把背景和能力挂钩，比单纯罗列学历更打动人。"
                    ),
                ]
            ),
            Topic(
                "biz-role", "职位与职责", "Role & Responsibilities",
                icon: "checklist",
                scene: "说明你的职位、汇报关系、负责范围。",
                expressions: [
                    Expression(
                        "rr-01", "I'm currently leading a team of five engineers.",
                        "我目前带领一个五人的工程师团队。",
                        note: "lead a team of + 人数，直接体现职责范围。"
                    ),
                    Expression(
                        "rr-02", "My main responsibility is to make sure the project stays on track.",
                        "我的主要职责是确保项目按计划推进。",
                        note: "stay on track 表示“不偏离轨道、按计划进行”。"
                    ),
                    Expression(
                        "rr-03", "I report directly to the head of the product department.",
                        "我直接向产品负责人汇报。",
                        note: "report to 是职场描述汇报关系的固定说法。"
                    ),
                    Expression(
                        "rr-04", "I work closely with design, engineering, and marketing teams.",
                        "我和设计、工程、市场团队都合作密切。",
                        note: "work closely with 体现跨职能协作能力。"
                    ),
                ]
            ),
        ]
    )

    // MARK: 板块二：职场沟通

    static let businessCommSection = TopicSection(
        "biz-comm", "职场沟通", "Workplace Communication",
        icon: "text.bubble.fill",
        topics: [
            Topic(
                "biz-meeting", "会议常用语", "Meeting Phrases",
                icon: "person.3.fill",
                scene: "开会开场、追问、插话、总结收尾。",
                expressions: [
                    Expression(
                        "mt-01", "Let's get started, shall we?",
                        "我们开始吧？",
                        note: "主持会议开场的礼貌句式。"
                    ),
                    Expression(
                        "mt-02", "Could you elaborate on that point?",
                        "你能详细说说这一点吗？",
                        note: "elaborate on 深入展开，会议中追问最常用。"
                    ),
                    Expression(
                        "mt-03", "If I could just add something here...",
                        "我想在这里补充一点……",
                        note: "礼貌插话，比直接打断得体得多。"
                    ),
                    Expression(
                        "mt-04", "Let's circle back to that after we cover the main topics.",
                        "这个问题我们聊完主要议题再回来讨论。",
                        note: "circle back 表示“稍后再谈”，外企会议高频短语。"
                    ),
                    Expression(
                        "mt-05", "To sum up, here's what we've agreed on.",
                        "总结一下，这些是我们达成一致的要点。",
                        note: "会议收尾必备，to sum up 引导总结。"
                    ),
                ]
            ),
            Topic(
                "biz-email", "邮件与书面沟通", "Email & Writing",
                icon: "envelope.fill",
                scene: "写英文邮件的开头、跟进、请求与结尾。",
                expressions: [
                    Expression(
                        "em-01", "I'm writing to follow up on our last conversation.",
                        "我来信是想跟进一下我们上次的沟通。",
                        note: "follow up on 跟进，邮件开头万能句。"
                    ),
                    Expression(
                        "em-02", "Please find the attached report for your review.",
                        "请查收附件中的报告供您审阅。",
                        note: "附件 = attached；供审阅 = for your review。"
                    ),
                    Expression(
                        "em-03", "Could you get back to me by end of day?",
                        "能否在今天下班前回复我？",
                        note: "get back to me 回复我；end of day 常缩写为 EOD。"
                    ),
                    Expression(
                        "em-04", "Thanks in advance for your help.",
                        "先谢谢你的帮助。",
                        note: "邮件结尾礼貌收尾，提前致谢。"
                    ),
                    Expression(
                        "em-05", "Looking forward to hearing from you.",
                        "期待你的回复。",
                        note: "几乎所有商务邮件的收尾句，注意 to 后接动名词。"
                    ),
                ]
            ),
        ]
    )

    // MARK: 板块三：商务社交

    static let businessSmallTalkSection = TopicSection(
        "biz-smalltalk", "商务社交", "Business Small Talk",
        icon: "cup.and.saucer.fill",
        topics: [
            Topic(
                "biz-smalltalk-daily", "职场寒暄", "Small Talk at Work",
                icon: "message.fill",
                scene: "茶水间偶遇、会议前闲聊、和外国同事拉近距离。",
                expressions: [
                    Expression(
                        "st-01", "How was your weekend? Did you do anything fun?",
                        "周末过得怎么样？做了什么有意思的事吗？",
                        note: "周一最自然的开场白。"
                    ),
                    Expression(
                        "st-02", "Busy week, huh?",
                        "这周够忙的吧？",
                        note: "一句 huh 带出共鸣感，对方立刻能接话。"
                    ),
                    Expression(
                        "st-03", "Any plans for the holidays?",
                        "假期有什么安排吗？",
                        note: "长假前万能闲聊句。"
                    ),
                    Expression(
                        "st-04", "It's been crazy weather lately, hasn't it?",
                        "最近天气是不是太反常了？",
                        note: "天气是最安全的破冰话题，反义疑问句邀请对方回应。"
                    ),
                ]
            ),
            Topic(
                "biz-opinion", "表达观点", "Expressing Opinions",
                icon: "text.quote",
                scene: "会议讨论、方案评审中表达认同、反对与建议。",
                expressions: [
                    Expression(
                        "op-01", "From my point of view, we should prioritize quality over speed.",
                        "在我看来，我们应该质量优先于速度。",
                        note: "from my point of view 提出观点的标准开头。"
                    ),
                    Expression(
                        "op-02", "I see what you mean, but I'd like to offer a different perspective.",
                        "我明白你的意思，不过我想提供一个不同的视角。",
                        note: "先认可再转折，反驳也显得有风度。"
                    ),
                    Expression(
                        "op-03", "That's a great point — I totally agree.",
                        "说得很有道理，我完全同意。",
                        note: "认可对方观点的高频回应。"
                    ),
                    Expression(
                        "op-04", "I'm afraid I have to disagree on this one.",
                        "这一点恐怕我不能同意。",
                        note: "I'm afraid 缓和语气，礼貌表达分歧。"
                    ),
                    Expression(
                        "op-05", "Let's agree to disagree and move on to the next topic.",
                        "我们各持己见，继续下一个话题吧。",
                        note: "agree to disagree 僵持时的体面收场。"
                    ),
                ]
            ),
        ]
    )
}
