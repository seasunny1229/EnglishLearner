import Foundation

// MARK: - 旅游英语内容
// 板块：交通出行 / 酒店住宿 / 饮食点餐 / 游玩观光
// 后续添加素材时，按下面的格式继续追加即可。

extension TopicData {

    // MARK: 板块一：交通出行

    static let travelTransportSection = TopicSection(
        "travel-transport", "交通出行", "Transportation",
        icon: "car.fill",
        topics: [
            Topic(
                "travel-airport", "机场与登机", "At the Airport",
                icon: "airplane",
                scene: "值机选座、行李托运、确认登机口等机场场景。",
                expressions: [
                    Expression(
                        "air-01", "Excuse me, where can I check in for flight CA981?",
                        "打扰一下，请问 CA981 航班在哪里办理值机？",
                        note: "check in for + 航班号，机场问询万能开头。"
                    ),
                    Expression(
                        "air-02", "I'd like a window seat, please.",
                        "我想要一个靠窗的座位。",
                        note: "靠过道是 aisle seat，值机选座必备。"
                    ),
                    Expression(
                        "air-03", "I have one suitcase to check in.",
                        "我有一件行李需要托运。",
                        note: "托运用 check in，随身行李是 carry-on。"
                    ),
                    Expression(
                        "air-04", "Is this the right gate for the flight to London?",
                        "这是飞往伦敦航班的登机口吗？",
                        note: "转机或登机口临时变动时确认用。"
                    ),
                ]
            ),
            Topic(
                "travel-directions", "市内交通与问路", "Getting Around & Directions",
                icon: "mappin.circle.fill",
                scene: "打车、乘坐公交地铁、街头问路等市内出行场景。",
                expressions: [
                    Expression(
                        "dir-01", "Excuse me, how do I get to the nearest subway station?",
                        "打扰一下，最近的地铁站怎么走？",
                        note: "how do I get to 是问路最常用句式。"
                    ),
                    Expression(
                        "dir-02", "Could you take me to this address, please?",
                        "请带我到这个地址，好吗？",
                        note: "出示地址打车实用句；take me to 表示“送我到”。"
                    ),
                    Expression(
                        "dir-03", "How much is the fare?",
                        "车费是多少？",
                        note: "fare 特指交通费用，打车前先确认价格。"
                    ),
                    Expression(
                        "dir-04", "Does this bus go to the city center?",
                        "这班公交车去市中心吗？",
                        note: "上车前确认线路，地铁同理换成 this train。"
                    ),
                ]
            ),
        ]
    )

    // MARK: 板块二：酒店住宿

    static let travelStaySection = TopicSection(
        "travel-stay", "酒店住宿", "Accommodation",
        icon: "bed.double.fill",
        topics: [
            Topic(
                "travel-checkin", "预订与入住", "Booking & Check-in",
                icon: "key.fill",
                scene: "到店报预订、确认入住信息等前台场景。",
                expressions: [
                    Expression(
                        "chk-01", "I have a reservation under the name Kyle.",
                        "我有一个预订，名字是 Kyle。",
                        note: "under the name 表示“以……的名字预订”，报姓名即可。"
                    ),
                    Expression(
                        "chk-02", "I'd like to check in, please. Do you have any rooms available?",
                        "我想办理入住，请问还有空房吗？",
                        note: "未预订直接入住（walk-in）时先问空房。"
                    ),
                    Expression(
                        "chk-03", "I'll be staying for three nights.",
                        "我要住三晚。",
                        note: "前台确认入住天数时的标准回答。"
                    ),
                    Expression(
                        "chk-04", "What time is breakfast served?",
                        "早餐几点供应？",
                        note: "顺口问清早餐时间和地点，前台常用对话。"
                    ),
                ]
            ),
            Topic(
                "travel-room", "住宿需求与退房", "Requests & Check-out",
                icon: "bell.fill",
                scene: "住宿期间提出需求、报修、延迟退房与结账。",
                expressions: [
                    Expression(
                        "rm-01", "Could I get an extra blanket, please?",
                        "能再给我一条毯子吗？",
                        note: "extra + 物品，客房服务万能句式。"
                    ),
                    Expression(
                        "rm-02", "The air conditioning in my room doesn't seem to work.",
                        "我房间的空调好像坏了。",
                        note: "doesn't seem to work 委婉报修，可换成 shower、wifi 等。"
                    ),
                    Expression(
                        "rm-03", "Could I have a late check-out, please?",
                        "可以延迟退房吗？",
                        note: "延迟退房固定说法 late check-out。"
                    ),
                    Expression(
                        "rm-04", "I'd like to check out. Could I get a receipt, please?",
                        "我要退房，请给我一张收据好吗？",
                        note: "退房时索要收据，方便报销。"
                    ),
                ]
            ),
        ]
    )

    // MARK: 板块三：饮食点餐

    static let travelFoodSection = TopicSection(
        "travel-food", "饮食点餐", "Dining Out",
        icon: "fork.knife",
        topics: [
            Topic(
                "travel-ordering", "餐厅点餐", "Ordering at a Restaurant",
                icon: "fork.knife",
                scene: "进店落座、看菜单、点菜、结账的完整点餐流程。",
                expressions: [
                    Expression(
                        "odr-01", "A table for two, please.",
                        "请给我一张两人桌。",
                        note: "进店第一句，也可问 Do you have a table for two?"
                    ),
                    Expression(
                        "odr-02", "Could I see the menu, please?",
                        "请给我看下菜单，好吗？",
                        note: "Could I... 礼貌请求万能句式。"
                    ),
                    Expression(
                        "odr-03", "I'll have the steak, medium, please.",
                        "我要一份牛排，五分熟。",
                        note: "点餐用 I'll have；熟度从生到熟：rare / medium rare / medium / well done。"
                    ),
                    Expression(
                        "odr-04", "Could we get the bill, please?",
                        "请给我们结账，好吗？",
                        note: "美式也说 check the bill，英式用 bill。"
                    ),
                ]
            ),
            Topic(
                "travel-preference", "口味偏好与推荐", "Preferences & Recommendations",
                icon: "hand.thumbsup.fill",
                scene: "说明忌口与过敏、请人推荐、夸赞食物。",
                expressions: [
                    Expression(
                        "prf-01", "I can't handle spicy food very well.",
                        "我不太能吃辣。",
                        note: "handle 表示“受得了”，点餐前先说明口味。"
                    ),
                    Expression(
                        "prf-02", "I'm allergic to peanuts.",
                        "我对花生过敏。",
                        note: "be allergic to 表达过敏，关键的一句，务必会说。"
                    ),
                    Expression(
                        "prf-03", "What would you recommend here?",
                        "这里有什么推荐的吗？",
                        note: "问店员或当地朋友，容易吃到地道美食。"
                    ),
                    Expression(
                        "prf-04", "This is delicious — I really enjoy it.",
                        "这太好吃了，我非常喜欢。",
                        note: "夸赞食物最直接的表达，气氛立刻拉满。"
                    ),
                ]
            ),
        ]
    )

    // MARK: 板块四：游玩观光

    static let travelFunSection = TopicSection(
        "travel-fun", "游玩观光", "Sightseeing & Fun",
        icon: "camera.fill",
        topics: [
            Topic(
                "travel-sightseeing", "景点游览与拍照", "Visiting Attractions",
                icon: "camera.fill",
                scene: "请人拍照、咨询开放时间、了解景点背景。",
                expressions: [
                    Expression(
                        "sgh-01", "Could you take a photo of us, please?",
                        "能帮我们拍张照吗？",
                        note: "请路人拍照最常用的一句。"
                    ),
                    Expression(
                        "sgh-02", "Is photography allowed here?",
                        "这里允许拍照吗？",
                        note: "博物馆、教堂等场所先确认再拍。"
                    ),
                    Expression(
                        "sgh-03", "What are the opening hours?",
                        "开放时间是什么时候？",
                        note: "opening hours 开放时间，问商店营业时间也适用。"
                    ),
                    Expression(
                        "sgh-04", "Could you tell me a bit about the history of this place?",
                        "能给我讲讲这个地方的历史吗？",
                        note: "请导游或当地朋友介绍，快速了解景点。"
                    ),
                ]
            ),
            Topic(
                "travel-tickets", "购票与行程安排", "Tickets & Planning",
                icon: "ticket.fill",
                scene: "购买门票、参加导览、规划参观时间。",
                expressions: [
                    Expression(
                        "tkt-01", "How much is the admission fee?",
                        "门票多少钱？",
                        note: "admission fee 专指门票、入场费。"
                    ),
                    Expression(
                        "tkt-02", "Two tickets for the 2 PM tour, please.",
                        "请给我两张下午两点的导览票。",
                        note: "tour 可指定时讲解团、导览活动。"
                    ),
                    Expression(
                        "tkt-03", "Do you have a map of the area?",
                        "有这一带的地图吗？",
                        note: "游客中心、售票处常用地句。"
                    ),
                    Expression(
                        "tkt-04", "How long does the visit take?",
                        "参观大概需要多长时间？",
                        note: "规划行程时估计时间必问。"
                    ),
                ]
            ),
        ]
    )
}
