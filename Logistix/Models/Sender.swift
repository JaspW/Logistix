import Foundation
import RealmSwift

final class Sender: Object, Codable {
    @Persisted var name = ""
    @Persisted var phoneNumber = ""
}
