import Foundation

final class OrdersViewModel: ObservableObject {
    @Published var searchTerm = ""
    @Published var isViewExpanded = false
    
    let storageManager = StorageManager.shared
    
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy"
        return formatter
    }()
}
