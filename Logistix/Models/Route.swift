import Foundation
import RealmSwift

final class Route: Object, Codable {
    @Persisted var sourceAddress = ""
    @Persisted var destinationAddress = ""
}
