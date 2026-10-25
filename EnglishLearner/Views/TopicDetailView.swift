import SwiftUI

/// 话题详情：适用场景 + 表达列表
struct TopicDetailView: View {
    let topic: Topic
    var section: TopicSection?
    var category: ContentCategory?

    @ObservedObject private var favorites = FavoritesStore.shared

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 14) {
                sceneCard

                ForEach(topic.expressions) { expression in
                    ExpressionCard(
                        expression: expression,
                        isFavorite: favorites.isFavorite(expression.id)
                    ) {
                        favorites.toggle(expression.id)
                    }
                }

                Text("以上为通用示例，后续可随时补充你自己的个性化表达。")
                    .font(.caption)
                    .foregroundStyle(.tertiary)
                    .frame(maxWidth: .infinity)
                    .padding(.top, 6)
            }
            .padding(16)
        }
        .background(Color(uiColor: .systemGroupedBackground))
        .navigationTitle(topic.nameCN)
        .navigationBarTitleDisplayMode(.large)
    }

    /// 适用场景卡片
    private var sceneCard: some View {
        VStack(alignment: .leading, spacing: 8) {
            Label("适用场景", systemImage: "theatermasks")
                .font(.footnote.bold())
                .foregroundStyle(.teal)

            if let section, let category {
                Text("\(category.nameCN) · \(section.nameCN)")
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }

            Text(topic.scene)
                .font(.subheadline)
                .foregroundStyle(.primary)
        }
        .padding(16)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.teal.opacity(0.08))
        .clipShape(RoundedRectangle(cornerRadius: 14))
    }
}

#Preview {
    NavigationStack {
        TopicDetailView(
            topic: TopicData.dailyEnglish.sections[0].topics[0],
            section: TopicData.dailyEnglish.sections[0],
            category: TopicData.dailyEnglish
        )
    }
}
