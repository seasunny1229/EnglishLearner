import Foundation
import Combine

/// 收藏状态管理（本地持久化）
final class FavoritesStore: ObservableObject {
    static let shared = FavoritesStore()

    private let storageKey = "com.kylecui.englishlearner.favorites"

    @Published private(set) var favoriteIDs: Set<String>

    private init() {
        let saved = UserDefaults.standard.stringArray(forKey: storageKey) ?? []
        favoriteIDs = Set(saved)
    }

    func isFavorite(_ id: String) -> Bool {
        favoriteIDs.contains(id)
    }

    func toggle(_ id: String) {
        if favoriteIDs.contains(id) {
            favoriteIDs.remove(id)
        } else {
            favoriteIDs.insert(id)
        }
        UserDefaults.standard.set(Array(favoriteIDs), forKey: storageKey)
    }
}
