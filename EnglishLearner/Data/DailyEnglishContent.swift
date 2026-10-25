import Foundation

// MARK: - 日常英语内容
// 板块：自我介绍 / 日常用语 / 个人经历 / 个人偏好 / 身边事物与生活
// 后续添加素材时，按下面的格式继续追加即可。

extension TopicData {

    // MARK: 板块一：自我介绍

    static let selfIntroSection = TopicSection(
        "self-intro", "自我介绍", "Self-Introduction",
        icon: "person.crop.circle.badge.checkmark",
        topics: [
            Topic(
                "self-intro-basic", "自我介绍", "Introducing Yourself",
                icon: "person.wave.2.fill",
                scene: "初识新朋友、聚会、语言交换、社交活动的开场，社交和商务场合都会用到。",
                expressions: [
                    Expression(
                        "si-01", "Hi, I'm Kyle. It's a pleasure to meet you.",
                        "你好，我是 Kyle，很高兴认识你。",
                        note: "最经典的开口第一句，把名字换成你自己的即可。"
                    ),
                    Expression(
                        "si-02", "I'd like to briefly introduce myself.",
                        "我想简单做个自我介绍。",
                        note: "适合稍微正式一点的场合，比如课程或活动开始时。"
                    ),
                    Expression(
                        "si-03", "I work in the tech industry, and I'm also a big fan of hiking and photography.",
                        "我在科技行业工作，平时特别喜欢徒步和摄影。",
                        note: "一句话结构：职业 + 兴趣爱好，信息量适中，容易接话。"
                    ),
                    Expression(
                        "si-04", "This is actually my first time here, so I'm still finding my way around.",
                        "这是我第一次来，还在熟悉环境。",
                        note: "在新环境里用这句能自然地邀请对方帮你介绍。"
                    ),
                ]
            ),
            Topic(
                "self-intro-hometown", "介绍来自哪里", "Where I'm From",
                icon: "map.fill",
                scene: "被问 Where are you from? 时的展开，聊家乡的特色与感情。",
                expressions: [
                    Expression(
                        "hf-01", "I'm from Hangzhou, a beautiful city in eastern China famous for its West Lake.",
                        "我来自杭州，中国东部一座美丽的城市，以西湖闻名。",
                        note: "城市 + 一句特色，是最加分的回答方式。"
                    ),
                    Expression(
                        "hf-02", "I grew up in a small town, but I moved to Shanghai for work a few years ago.",
                        "我在一个小镇长大，几年前为了工作搬到了上海。",
                        note: "grew up 表示“长大”，自然带出人生轨迹。"
                    ),
                    Expression(
                        "hf-03", "My hometown is known for its food — you have to try the local dishes if you ever visit.",
                        "我家乡以美食闻名，你要是有机会去一定要尝尝当地菜。",
                        note: "用美食引出话题，对方一般会追问细节。"
                    ),
                    Expression(
                        "hf-04", "I've been living in Shanghai for about five years now, and I really enjoy the city life here.",
                        "我在上海住了差不多五年了，很喜欢这里的城市生活。",
                        note: "现在完成进行时 have been living 强调“一直住到现在”。"
                    ),
                ]
            ),
            Topic(
                "self-intro-work", "介绍自己的工作", "What I Do",
                icon: "briefcase.fill",
                scene: "被问 What do you do? 时的回答，社交与商务场合都高频出现。",
                expressions: [
                    Expression(
                        "wd-01", "I work as a software engineer at a tech company.",
                        "我在一家科技公司做软件工程师。",
                        note: "work as + 职位，是最直接清楚的句式。"
                    ),
                    Expression(
                        "wd-02", "I'm in charge of mobile app development.",
                        "我负责移动应用开发。",
                        note: "be in charge of 表示“负责某块业务”。"
                    ),
                    Expression(
                        "wd-03", "I've been working in this field for over five years.",
                        "我在这个领域工作五年多了。",
                        note: "说明经验年限，商务场合很常用。"
                    ),
                    Expression(
                        "wd-04", "My job involves a lot of cross-team collaboration, which keeps things interesting.",
                        "我的工作需要大量跨团队协作，所以从来不会无聊。",
                        note: "involves 描述工作内容；加一句感受让对话更自然。"
                    ),
                ]
            ),
        ]
    )

    // MARK: 板块二：日常用语

    static let dailyPhrasesSection = TopicSection(
        "daily-phrases", "日常用语", "Daily Expressions",
        icon: "bubble.left.and.bubble.right.fill",
        topics: [
            Topic(
                "ph-greeting", "见面打招呼", "Greetings",
                icon: "hand.wave.fill",
                scene: "偶遇熟人、见面寒暄、开启对话。",
                expressions: [
                    Expression(
                        "gr-01", "Hey, how's it going?",
                        "嘿，最近怎么样？",
                        note: "比 How are you 更口语、更地道，回答用 Not bad, you? 即可。"
                    ),
                    Expression(
                        "gr-02", "Long time no see! How have you been?",
                        "好久不见！你最近过得怎么样？",
                        note: "老友重逢标配开场。"
                    ),
                    Expression(
                        "gr-03", "What have you been up to lately?",
                        "你最近都在忙些什么？",
                        note: "比 What are you doing 更自然的近况问法。"
                    ),
                    Expression(
                        "gr-04", "It's so good to run into you!",
                        "太巧了，没想到在这儿碰到你！",
                        note: "run into sb. 表示“偶遇某人”。"
                    ),
                ]
            ),
            Topic(
                "ph-request", "表达请求", "Making Requests",
                icon: "hand.raised.fill",
                scene: "请人帮忙、提出请求时既礼貌又自然。",
                expressions: [
                    Expression(
                        "rq-01", "Could you do me a favor?",
                        "能帮我个忙吗？",
                        note: "do sb. a favor 固定搭配，先问再提具体请求。"
                    ),
                    Expression(
                        "rq-02", "Would you mind helping me with this?",
                        "你介意帮我弄一下这个吗？",
                        note: "Would you mind + doing，非常客气。"
                    ),
                    Expression(
                        "rq-03", "I was wondering if you could give me a hand.",
                        "不知道你能不能帮我一下。",
                        note: "I was wondering if... 是最委婉的请求句式。"
                    ),
                    Expression(
                        "rq-04", "Sorry to trouble you, but could you show me how this works?",
                        "抱歉打扰一下，能给我演示一下这个怎么用吗？",
                        note: "先致歉再请求，对陌生人最稳妥。"
                    ),
                ]
            ),
            Topic(
                "ph-thanks", "表达感谢", "Expressing Thanks",
                icon: "heart.fill",
                scene: "接受帮助、收到好意后的回应。",
                expressions: [
                    Expression(
                        "tk-01", "Thanks a lot! I really appreciate it.",
                        "多谢！我真的很感激。",
                        note: "appreciate 比 thank you 程度更深。"
                    ),
                    Expression(
                        "tk-02", "That's so kind of you.",
                        "你人真好。",
                        note: "It's kind of you to do sth. 的口语简化。"
                    ),
                    Expression(
                        "tk-03", "I can't thank you enough for your help.",
                        "真是太感谢你的帮助了。",
                        note: "字面是“谢多少都不够”，表达极高程度的感谢。"
                    ),
                    Expression(
                        "tk-04", "Thanks for having my back.",
                        "谢谢你挺我 / 帮我兜底。",
                        note: "have sb.'s back 指关键时刻支持某人，偏美式口语。"
                    ),
                ]
            ),
            Topic(
                "ph-apology", "表达歉意", "Apologizing",
                icon: "hand.thumbsdown.fill",
                scene: "迟到、打扰、做错事时的道歉与补救。",
                expressions: [
                    Expression(
                        "ap-01", "I'm so sorry about that. It won't happen again.",
                        "非常抱歉，下不为例。",
                        note: "正式道歉 + 保证，职场也适用。"
                    ),
                    Expression(
                        "ap-02", "My apologies for the delay.",
                        "抱歉耽搁了。",
                        note: "My apologies 比 I'm sorry 略正式，常用于邮件。"
                    ),
                    Expression(
                        "ap-03", "I didn't mean to keep you waiting. Sorry about that.",
                        "我不是故意让你等的，不好意思。",
                        note: "didn't mean to 表示“不是故意的”。"
                    ),
                    Expression(
                        "ap-04", "My bad — I totally forgot about it.",
                        "我的错，我完全忘了这事儿。",
                        note: "My bad 很口语，适合朋友之间的小事。"
                    ),
                ]
            ),
        ]
    )

    // MARK: 板块三：表达个人经历

    static let experienceSection = TopicSection(
        "experience", "表达个人经历", "Personal Experiences",
        icon: "clock.arrow.circlepath",
        topics: [
            Topic(
                "ex-work", "介绍工作经历", "Work Experience",
                icon: "list.bullet.rectangle.fill",
                scene: "聊职业发展路径、过往项目，社交和面试场景通用。",
                expressions: [
                    Expression(
                        "we-01", "I started my career as a junior developer at a startup.",
                        "我的职业生涯是从一家初创公司的初级开发工程师开始的。",
                        note: "start one's career as... 经典的开场句式。"
                    ),
                    Expression(
                        "we-02", "Before joining my current company, I worked at an e-commerce firm for three years.",
                        "加入现在的公司之前，我在一家电商公司工作了三年。",
                        note: "梳理履历时用 Before joining... 串联时间线。"
                    ),
                    Expression(
                        "we-03", "That project taught me a lot about teamwork and time management.",
                        "那个项目让我学到了很多关于团队协作和时间管理的东西。",
                        note: "项目 + 收获，让经历描述有血有肉。"
                    ),
                    Expression(
                        "we-04", "One of the projects I'm most proud of was leading a small team to rebuild our app from scratch.",
                        "我最自豪的项目之一是带领一个小团队从零重做了我们的 App。",
                        note: "从零开始 = from scratch；自豪经历的高光句式。"
                    ),
                ]
            ),
            Topic(
                "ex-media", "聊书籍、电影和新闻", "Books, Movies & News",
                icon: "film.fill",
                scene: "闲聊最近读的书、看的电影、关注的新闻，是最常见的破冰话题。",
                expressions: [
                    Expression(
                        "bm-01", "I've just finished reading a great book — I couldn't put it down.",
                        "我刚读完一本特别好的书，简直爱不释手。",
                        note: "couldn't put it down 字面“放不下来”，形容书太精彩。"
                    ),
                    Expression(
                        "bm-02", "I recently watched a movie that really moved me. I'd highly recommend it.",
                        "我最近看了一部特别打动我的电影，强烈推荐。",
                        note: "moved me 表示“打动我”；推荐时加一句理由更好。"
                    ),
                    Expression(
                        "bm-03", "Did you catch the news about the new AI model released this week?",
                        "你看到这周发布新 AI 模型的新闻了吗？",
                        note: "catch the news 表示“看到/刷到新闻”。"
                    ),
                    Expression(
                        "bm-04", "It's totally worth your time — the ending really caught me off guard.",
                        "绝对值得一看，结局完全出乎我的意料。",
                        note: "catch sb. off guard 表示“让人猝不及防”。"
                    ),
                ]
            ),
        ]
    )

    // MARK: 板块四：表达个人偏好

    static let preferenceSection = TopicSection(
        "preference", "表达个人偏好", "Personal Preferences",
        icon: "heart.text.square.fill",
        topics: [
            Topic(
                "pr-food", "介绍喜欢的食物", "Favorite Food",
                icon: "fork.knife",
                scene: "聊饮食偏好、请客推荐、聊家乡味道，全世界通用的社交话题。",
                expressions: [
                    Expression(
                        "ff-01", "My favorite food is hotpot — I could eat it every week!",
                        "我最爱吃火锅，一周吃一次都不嫌多！",
                        note: "I could eat it every week 夸张表达喜爱，很自然。"
                    ),
                    Expression(
                        "ff-02", "I'm a big fan of Sichuan cuisine — the spicier, the better.",
                        "我是川菜的忠实粉丝，越辣越好。",
                        note: "a big fan of... 表达强烈喜好；the more... the better 句式加分。"
                    ),
                    Expression(
                        "ff-03", "I'm not a picky eater, but I'm not really big on seafood.",
                        "我不挑食，但对海鲜不太感冒。",
                        note: "picky eater 挑食的人；not big on... 表示“不太喜欢”。"
                    ),
                    Expression(
                        "ff-04", "If you ever come to my city, you have to try the street food there.",
                        "你要是来我的城市，一定要尝尝那里的街头小吃。",
                        note: "请客/推荐美食的经典句式。"
                    ),
                ]
            ),
            Topic(
                "pr-travel", "介绍喜欢去旅游的地方", "Favorite Travel Destinations",
                icon: "airplane",
                scene: "聊旅行偏好、dream destination、难忘的旅程。",
                expressions: [
                    Expression(
                        "td-01", "I love traveling to places with amazing natural scenery.",
                        "我喜欢去自然风光绝美的地方旅行。",
                        note: "先说偏好类型，方便对方接话。"
                    ),
                    Expression(
                        "td-02", "My dream destination is Iceland — I really want to see the northern lights.",
                        "我的梦想目的地是冰岛，特别想看极光。",
                        note: "dream destination 是固定说法，聊旅行必用。"
                    ),
                    Expression(
                        "td-03", "The most memorable trip I've ever taken was to Yunnan — the mountains there were breathtaking.",
                        "我最难忘的一次旅行是去云南，那里的山美得令人窒息。",
                        note: "breathtaking 形容风景“美到窒息”；最高级句式很出彩。"
                    ),
                    Expression(
                        "td-04", "I prefer laid-back beach vacations over packed city tours.",
                        "比起行程满满的城市观光，我更喜欢悠闲的海滩度假。",
                        note: "prefer A over B 表达比较偏好；laid-back 悠闲放松。"
                    ),
                ]
            ),
        ]
    )

    // MARK: 板块五：身边事物与个人生活

    static let myLifeSection = TopicSection(
        "my-life", "身边事物与个人生活", "My Life & Surroundings",
        icon: "house.and.flag.fill",
        topics: [
            Topic(
                "life-city", "我所在的城市", "My City",
                icon: "building.2.fill",
                scene: "向外国朋友介绍你居住的城市：特点、交通、生活节奏。",
                expressions: [
                    Expression(
                        "mc-01", "I live in Shanghai — it's one of the most vibrant cities in China.",
                        "我住在上海，它是中国最有活力的城市之一。",
                        note: "one of the most + 形容词，介绍任何城市都好用。"
                    ),
                    Expression(
                        "mc-02", "The city never sleeps — there's always something new to explore.",
                        "这座城市从不眠，总有新东西可以探索。",
                        note: "never sleep 形容夜生活丰富、节奏快。"
                    ),
                    Expression(
                        "mc-03", "Public transportation here is super convenient — you can get anywhere by metro.",
                        "这里的公共交通特别方便，坐地铁哪儿都能到。",
                        note: "介绍城市基础设施的实用句。"
                    ),
                    Expression(
                        "mc-04", "The best time to visit is in autumn, when the weather is mild and the leaves turn golden.",
                        "最好的游览季节是秋天，天气温和，树叶都变成金色。",
                        note: "回答“什么时候来玩最好”的标准句式。"
                    ),
                ]
            ),
            Topic(
                "life-job", "我的工作日常", "My Job",
                icon: "desktopcomputer",
                scene: "描述一天的工作节奏、工作内容与感受。",
                expressions: [
                    Expression(
                        "mj-01", "My typical workday starts at nine with a quick team check-in.",
                        "我典型的工作日从九点的小组快速碰头开始。",
                        note: "check-in 在职场语境里指“碰头对齐进度”。"
                    ),
                    Expression(
                        "mj-02", "I usually have a few meetings in the morning and focus on deep work in the afternoon.",
                        "我上午一般有几个会，下午专注做深度工作。",
                        note: "deep work 深度工作，现代职场高频词。"
                    ),
                    Expression(
                        "mj-03", "The best part of my job is solving tricky problems with my teammates.",
                        "我工作中最有意思的部分就是和同事一起攻克难题。",
                        note: "被问“工作怎么样”时的加分回答。"
                    ),
                    Expression(
                        "mj-04", "Work keeps me pretty busy, but I always make time for the gym.",
                        "工作挺忙的，但我总会挤出时间去健身。",
                        note: "make time for... 表示“为……挤出时间”。"
                    ),
                ]
            ),
            Topic(
                "life-family", "我的家庭", "My Family",
                icon: "figure.2.and.child.holdinghands",
                scene: "向外国朋友介绍家庭成员、家庭氛围与家庭传统。",
                expressions: [
                    Expression(
                        "fm-01", "There are four people in my family — my parents, my younger sister, and me.",
                        "我们家有四口人——父母、我妹妹和我。",
                        note: "介绍家庭成员的基本句式，注意家人不加 the。"
                    ),
                    Expression(
                        "fm-02", "We're a pretty close family — we talk on the phone almost every day.",
                        "我们家关系特别亲密，几乎每天都打电话。",
                        note: "a close family 表示“关系亲密的家庭”。"
                    ),
                    Expression(
                        "fm-03", "I try to visit my parents as often as I can, even though we live in different cities.",
                        "虽然和父母住在不同城市，我还是尽量常回去看他们。",
                        note: "as often as I can 表达“尽可能频繁”。"
                    ),
                    Expression(
                        "fm-04", "Family dinners are a big tradition for us, especially during the Spring Festival.",
                        "家庭聚餐是我们家的大传统，尤其是春节的时候。",
                        note: "聊传统 = a big tradition，自然引出文化话题。"
                    ),
                ]
            ),
            Topic(
                "life-attractions", "旅游景点、自然风光与历史人文", "Travel, Nature & History",
                icon: "camera.metering.matrix",
                scene: "向外国朋友推荐景点、描述自然风光与历史文化，兼做“导游”必备。",
                expressions: [
                    Expression(
                        "at-01", "The West Lake is a must-see if you ever visit Hangzhou.",
                        "如果你去杭州，西湖是必去的。",
                        note: "a must-see 必看景点，推荐任何景点都能用。"
                    ),
                    Expression(
                        "at-02", "The scenery there is absolutely breathtaking — I've never seen anything like it.",
                        "那里的风景美得惊人，我从未见过那样的景色。",
                        note: "描述自然风光的万能感叹句。"
                    ),
                    Expression(
                        "at-03", "It's a place rich in history — some buildings there date back over a thousand years.",
                        "那是个历史悠久的地方，有些建筑可以追溯到一千多年前。",
                        note: "date back to... 表示“追溯到……”，讲历史必用。"
                    ),
                    Expression(
                        "at-04", "You can really feel the blend of ancient culture and modern life there.",
                        "在那里你能真切感受到古老文化与现代生活的交融。",
                        note: "blend/fusion of A and B 描述人文特色的高级表达。"
                    ),
                ]
            ),
        ]
    )
}
