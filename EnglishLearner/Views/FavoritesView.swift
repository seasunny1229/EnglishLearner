import SwiftUI

/// 收藏页：按话题分组的收藏表达
struct FavoritesView: View {
    @ObservedObject private var favorites = FavoritesStore.shared

    /// 收藏的表达，按话题分组
    private var grouped: [(topic: Topic, items: [Expression])] {
        var byTopic: [String: (Topic, [Expression])] = [:]
        var order: [String] = []
        for id in favorites.favoriteIDs {
            guard let context = TopicData.context(forExpressionID: id) else { continue }
            if byTopic[context.topic.id] == nil {
                byTopic[context.topic.id] = (context.topic, [])
                order.append(context.topic.id)
            }
            byTopic[context.topic.id]?.1.append(context.expression)
        }
        return order.compactMap { byTopic[$0] }
    }

    var body: some View {
        NavigationStack {
            Group {
                if grouped.isEmpty {
                    emptyPrompt
                } else {
                    List {
                        ForEach(grouped, id: \.topic.id) { group in
                            Section {
                                ForEach(group.items) { expression in
                                    ExpressionCard(
                                        expression: expression,
                                        isFavorite: true
                                    ) {
                                        favorites.toggle(expression.id)
                                    }
                                    .listRowInsets(EdgeInsets(top: 6, leading: 12, bottom: 6, trailing: 12))
                                    .listRowBackground(Color.clear)
                                }
                                .onDelete { offsets in
                                    for index in offsets {
                                        favorites.toggle(group.items[index].id)
                                    }
                                }
                            } header: {
                                Label(group.topic.nameCN, systemImage: group.topic.icon)
                                    .foregroundStyle(.teal)
                            }
                        }
                    }
                    .listStyle(.insetGrouped)
                }
            }
            .navigationTitle("我的收藏")
        }
    }

    private var emptyPrompt: some View {
        VStack(spacing: 10) {
            Image(systemName: "star.slash")
                .font(.system(size: 36))
                .foregroundStyle(.tertiary)
            Text("还没有收藏\n在话题详情里点击 ⭐ 就能收藏常用表达")
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(uiColor: .systemGroupedBackground))
    }
}

#Preview {
    FavoritesView()
}
