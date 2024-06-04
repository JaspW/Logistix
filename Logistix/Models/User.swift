import Foundation

enum Role: String {
    case user
    case admin
}

struct User: Codable, Identifiable {
    let id: String
    let role: String
    let email: String
    let name: String
    let pass: String
}
