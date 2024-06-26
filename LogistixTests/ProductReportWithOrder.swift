import XCTest
import FirebaseFirestore
import FirebaseFirestoreSwift
import Combine
@testable import Logistix

final class AuthorizationTests: XCTestCase {
    private var authViewModel: AuthViewModel!
    
    @MainActor override func setUp() {
        super.setUp()
        authViewModel = AuthViewModel()
    }
    
    override func tearDown() {
        super.tearDown()
        authViewModel = nil
    }

    func testViewSelectedProductReportWithOrders() {

     let productReportService = ProductReportService()
     let userID = "user123"
     let productID = "product456"
      
     productReportService.addPurchase(for: userID, productID: productID, purchase: Purchase(id: "order1", date: "2024-06-01", amount: 100.0))
     productReportService.addPurchase(for: userID, productID: productID, purchase: Purchase(id: "order2", date: "2024-06-02", amount: 150.0))

     do {
       let report = try productReportService.viewProductReport(for: userID, productID: productID)
       XCTAssertEqual(report.count, 2)
     } catch {
       XCTFail("Отчет о выбранном товаре не должен выбрасывать ошибку при наличии покупок")
     }
  }
}
