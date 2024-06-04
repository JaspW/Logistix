import Foundation
import RealmSwift

final class Recipient: Object, Codable {
    @Persisted var name = ""
    @Persisted var phoneNumber = ""
}
