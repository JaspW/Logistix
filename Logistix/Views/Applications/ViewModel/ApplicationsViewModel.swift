import Foundation

final class ApplicationsViewModel: ObservableObject {
    @Published var searchTerm = ""
    @Published var isViewExpanded = false
    
    let storageManager = StorageManager.shared
    
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy"
        return formatter
    }()
}
