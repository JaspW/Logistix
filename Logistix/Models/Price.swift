import Foundation
import RealmSwift

final class Price: Object, Codable {
    @Persisted var cargoCost = ""
    @Persisted var payment = ""
    @Persisted var totalCost = ""
}
