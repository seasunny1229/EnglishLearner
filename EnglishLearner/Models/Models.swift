import Foundation

// MARK: - 内容数据模型

/// 内容分类（日常英语 / 商务英语）
struct ContentCategory: Identifiable, Hashable {
    let id: String
    let nameCN: String
    let nameEN: String
    let icon: String
    let sections: [TopicSection]

    var topicCount: Int { sections.reduce(0) { $0 + $1.topics.count } }

    var expressionCount: Int {
        sections.flatMap(\.topics).reduce(0) { $0 + $1.expressions.count }
    }
}

/// 话题板块（如“自我介绍”“日常用语”）
struct TopicSection: Identifiable, Hashable {
    let id: String
    let nameCN: String
    let nameEN: String
    let icon: String
    let topics: [Topic]
}

/// 具体话题（如“见面打招呼”）
struct Topic: Identifiable, Hashable {
    let id: String
    let nameCN: String
    let nameEN: String
    let icon: String
    /// 适用场景说明
    let scene: String
    let expressions: [Expression]
}

/// 一条英文表达
struct Expression: Identifiable, Hashable {
    let id: String
    let english: String
    let chinese: String
    /// 使用提示（可选）
    let note: String?
}

// MARK: - 便于编写数据的便捷构造器

extension Expression {
    init(_ id: String, _ english: String, _ chinese: String, note: String? = nil) {
        self.id = id
        self.english = english
        self.chinese = chinese
        self.note = note
    }
}

extension Topic {
    init(_ id: String, _ nameCN: String, _ nameEN: String,
         icon: String, scene: String, expressions: [Expression]) {
        self.id = id
        self.nameCN = nameCN
        self.nameEN = nameEN
        self.icon = icon
        self.scene = scene
        self.expressions = expressions
    }
}

extension TopicSection {
    init(_ id: String, _ nameCN: String, _ nameEN: String,
         icon: String, topics: [Topic]) {
        self.id = id
        self.nameCN = nameCN
        self.nameEN = nameEN
        self.icon = icon
        self.topics = topics
    }
}
