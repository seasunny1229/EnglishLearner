import SwiftUI

/// 首页：内容分类入口
struct BrowseView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 16) {
                    header

                    ForEach(TopicData.categories) { category in
                        NavigationLink {
                            SectionListView(category: category)
                        } label: {
                            CategoryCard(category: category)
                        }
                        .buttonStyle(.plain)
                    }
                }
                .padding(.horizontal, 16)
                .padding(.bottom, 24)
            }
            .background(Color(uiColor: .systemGroupedBackground))
            .navigationTitle("我的英语素材库")
        }
    }

    private var header: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("积累你自己的表达，练就随时开口的底气")
                .font(.subheadline)
                .foregroundStyle(.secondary)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.top, 4)
    }
}

/// 分类大卡片
struct CategoryCard: View {
    let category: ContentCategory

    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            HStack(spacing: 14) {
                Image(systemName: category.icon)
                    .font(.system(size: 32, weight: .bold))
                    .foregroundStyle(.white)

                VStack(alignment: .leading, spacing: 2) {
                    Text(category.nameCN)
                        .font(.title2.bold())
                        .foregroundStyle(.white)
                    Text(category.nameEN)
                        .font(.subheadline.weight(.medium))
                        .foregroundStyle(.white.opacity(0.85))
                }

                Spacer()

                Image(systemName: "chevron.right")
                    .font(.headline)
                    .foregroundStyle(.white.opacity(0.8))
            }

            HStack(spacing: 16) {
                Label("\(category.topicCount) 个话题", systemImage: "bubble.left.and.bubble.right.fill")
                Label("\(category.expressionCount) 条表达", systemImage: "text.quote")
            }
            .font(.footnote.weight(.medium))
            .foregroundStyle(.white.opacity(0.9))

            // 板块名一览
            Text(category.sections.map(\.nameCN).joined(separator: " · "))
                .font(.caption)
                .lineLimit(2)
                .foregroundStyle(.white.opacity(0.75))
        }
        .padding(20)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(category.gradient)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .shadow(color: category.themeColor.opacity(0.3), radius: 8, y: 4)
    }
}

#Preview {
    BrowseView()
}
