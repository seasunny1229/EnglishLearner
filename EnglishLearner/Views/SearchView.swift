import SwiftUI

/// 全局搜索：话题（中英文名）与表达内容（中英文）
struct SearchView: View {
    @State private var keyword = ""

    private var results: TopicData.SearchResults {
        TopicData.search(keyword)
    }

    var body: some View {
        NavigationStack {
            List {
                if keyword.trimmingCharacters(in: .whitespaces).isEmpty {
                    emptyPrompt
                } else if results.isEmpty {
                    Text("没有找到相关内容，换个关键词试试？")
                        .foregroundStyle(.secondary)
                } else {
                    if !results.topics.isEmpty {
                        Section("话题") {
                            ForEach(results.topics) { topic in
                                NavigationLink {
                                    TopicDetailView(topic: topic)
                                } label: {
                                    TopicRow(topic: topic)
                                }
                            }
                        }
                    }
                    if !results.expressions.isEmpty {
                        Section("表达") {
                            ForEach(results.expressions, id: \.expression.id) { item in
                                NavigationLink {
                                    TopicDetailView(topic: item.topic)
                                } label: {
                                    VStack(alignment: .leading, spacing: 4) {
                                        Text(item.expression.english)
                                            .font(.subheadline.weight(.medium))
                                            .lineLimit(2)
                                        Text(item.expression.chinese)
                                            .font(.caption)
                                            .foregroundStyle(.secondary)
                                            .lineLimit(1)
                                        Text("收录于「\(item.topic.nameCN)」")
                                            .font(.caption2)
                                            .foregroundStyle(.tertiary)
                                    }
                                    .padding(.vertical, 2)
                                }
                            }
                        }
                    }
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("搜索")
            .searchable(text: $keyword, prompt: "搜索话题或表达，如“打招呼”或 “must-see”")
        }
    }

    private var emptyPrompt: some View {
        VStack(spacing: 10) {
            Image(systemName: "text.magnifyingglass")
                .font(.system(size: 36))
                .foregroundStyle(.tertiary)
            Text("支持中文或英文关键词\n可以搜话题名，也可以搜表达内容")
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 40)
        .listRowBackground(Color.clear)
    }
}

#Preview {
    SearchView()
}
