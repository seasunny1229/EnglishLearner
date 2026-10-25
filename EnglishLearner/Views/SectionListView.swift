import SwiftUI

/// 分类详情：按板块分组的话题列表
struct SectionListView: View {
    let category: ContentCategory

    var body: some View {
        List {
            ForEach(category.sections) { section in
                Section {
                    ForEach(section.topics) { topic in
                        NavigationLink {
                            TopicDetailView(topic: topic, section: section, category: category)
                        } label: {
                            TopicRow(topic: topic)
                        }
                    }
                } header: {
                    HStack(spacing: 6) {
                        Image(systemName: section.icon)
                        Text("\(section.nameCN) · \(section.nameEN)")
                    }
                    .foregroundStyle(category.themeColor)
                }
            }
        }
        .listStyle(.insetGrouped)
        .navigationTitle(category.nameCN)
        .navigationBarTitleDisplayMode(.large)
    }
}

/// 话题行
struct TopicRow: View {
    let topic: Topic

    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: topic.icon)
                .font(.title3)
                .frame(width: 36)
                .foregroundStyle(.teal)

            VStack(alignment: .leading, spacing: 3) {
                Text(topic.nameCN)
                    .font(.body.weight(.medium))
                Text(topic.nameEN)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }

            Spacer()

            Text("\(topic.expressions.count)")
                .font(.caption.weight(.semibold))
                .padding(.horizontal, 8)
                .padding(.vertical, 4)
                .background(Color.teal.opacity(0.12))
                .foregroundStyle(.teal)
                .clipShape(Capsule())
        }
        .padding(.vertical, 2)
    }
}

#Preview {
    NavigationStack {
        SectionListView(category: TopicData.dailyEnglish)
    }
}
