import SwiftUI

// MARK: - 共用组件

/// 表达卡片：英文 + 中文 + 使用提示 + 收藏
struct ExpressionCard: View {
    let expression: Expression
    let isFavorite: Bool
    let onToggleFavorite: () -> Void

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack(alignment: .top, spacing: 12) {
                Text(expression.english)
                    .font(.system(.headline, design: .rounded).weight(.semibold))
                    .foregroundStyle(.primary)
                    .fixedSize(horizontal: false, vertical: true)

                Spacer(minLength: 4)

                Button(action: onToggleFavorite) {
                    Image(systemName: isFavorite ? "star.fill" : "star")
                        .font(.title3)
                        .foregroundStyle(isFavorite ? .yellow : .secondary.opacity(0.5))
                }
                .buttonStyle(.plain)
                .accessibilityLabel(isFavorite ? "取消收藏" : "收藏")
            }

            Text(expression.chinese)
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .fixedSize(horizontal: false, vertical: true)

            if let note = expression.note, !note.isEmpty {
                HStack(alignment: .top, spacing: 6) {
                    Image(systemName: "lightbulb.fill")
                        .font(.caption2)
                        .foregroundStyle(.orange)
                    Text(note)
                        .font(.caption)
                        .foregroundStyle(.secondary)
                        .fixedSize(horizontal: false, vertical: true)
                }
                .padding(.top, 2)
            }
        }
        .padding(16)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(uiColor: .secondarySystemGroupedBackground))
        .clipShape(RoundedRectangle(cornerRadius: 14))
    }
}

// MARK: - 分类主题色

extension ContentCategory {
    var gradient: LinearGradient {
        switch id {
        case "daily":
            LinearGradient(
                colors: [Color.teal, Color.blue],
                startPoint: .topLeading, endPoint: .bottomTrailing
            )
        default:
            LinearGradient(
                colors: [Color.indigo, Color.purple],
                startPoint: .topLeading, endPoint: .bottomTrailing
            )
        }
    }

    var themeColor: Color {
        id == "daily" ? .teal : .indigo
    }
}
