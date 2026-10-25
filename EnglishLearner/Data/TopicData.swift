import Foundation

/// 全部内容数据的入口：分类定义、全局检索、上下文查询。
/// 后续添加新板块/话题时，在对应内容文件里追加即可。
enum TopicData {

    // MARK: - 分类

    static let categories: [ContentCategory] = [dailyEnglish, businessEnglish]

    static let dailyEnglish = ContentCategory(
        id: "daily",
        nameCN: "日常英语",
        nameEN: "Daily English",
        icon: "sun.max.fill",
        sections: [
            selfIntroSection,
            dailyPhrasesSection,
            experienceSection,
            preferenceSection,
            myLifeSection,
        ]
    )

    static let businessEnglish = ContentCategory(
        id: "business",
        nameCN: "商务英语",
        nameEN: "Business English",
        icon: "briefcase.fill",
        sections: [
            businessIntroSection,
            businessCommSection,
            businessSmallTalkSection,
        ]
    )

    // MARK: - 检索

    /// 搜索结果：命中的话题 / 命中的表达
    struct SearchResults {
        var topics: [Topic] = []
        var expressions: [(topic: Topic, expression: Expression)] = []
        var isEmpty: Bool { topics.isEmpty && expressions.isEmpty }
    }

    /// 全局搜索：支持话题名（中英）与表达内容（中英）
    static func search(_ keyword: String) -> SearchResults {
        let trimmed = keyword.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !trimmed.isEmpty else { return SearchResults() }
        let lower = trimmed.lowercased()

        var results = SearchResults()
        for category in categories {
            let categoryMatched = matches(category.nameCN, lower) || matches(category.nameEN, lower)
            for section in category.sections {
                let sectionMatched = categoryMatched
                    || matches(section.nameCN, lower) || matches(section.nameEN, lower)
                for topic in section.topics {
                    let topicMatched = sectionMatched
                        || matches(topic.nameCN, lower) || matches(topic.nameEN, lower)
                    if topicMatched {
                        results.topics.append(topic)
                    }
                    for expression in topic.expressions where !topicMatched {
                        if matches(expression.english, lower) || matches(expression.chinese, lower) {
                            results.expressions.append((topic, expression))
                        }
                    }
                }
            }
        }
        return results
    }

    private static func matches(_ text: String, _ lowerKeyword: String) -> Bool {
        text.localizedCaseInsensitiveContains(lowerKeyword)
    }

    // MARK: - 表达上下文查询

    /// 一条表达所属的话题 / 板块 / 分类（用于收藏页定位）
    struct ExpressionContext {
        let category: ContentCategory
        let section: TopicSection
        let topic: Topic
        let expression: Expression
    }

    static func context(forExpressionID id: String) -> ExpressionContext? {
        for category in categories {
            for section in category.sections {
                for topic in section.topics {
                    if let expression = topic.expressions.first(where: { $0.id == id }) {
                        return ExpressionContext(
                            category: category, section: section,
                            topic: topic, expression: expression
                        )
                    }
                }
            }
        }
        return nil
    }
}
