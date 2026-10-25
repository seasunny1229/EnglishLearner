import SwiftUI

/// App 主界面：学习 / 搜索 / 收藏
struct ContentView: View {
    var body: some View {
        TabView {
            BrowseView()
                .tabItem { Label("学习", systemImage: "books.vertical.fill") }

            SearchView()
                .tabItem { Label("搜索", systemImage: "magnifyingglass") }

            FavoritesView()
                .tabItem { Label("收藏", systemImage: "heart.fill") }
        }
        .tint(.teal)
    }
}

#Preview {
    ContentView()
}
