import SwiftUI

struct OrderIdView: View {
    @EnvironmentObject private var ordersVM: OrdersViewModel
    
    let order: Order
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("№ \(order.trackingNumber)")
                    .font(.title3)
                    .foregroundStyle(order.status != "Отменен"
                                     ? Color(hex: 0x00CCA6, alpha: 1)
                                     : .red
                    )
                    .padding([.top, .bottom], 8)
                    .padding([.leading, .trailing], 8)
                    .background {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.main.opacity(0.2))
                    }
                
                Spacer()
                
                Text(ordersVM.dateFormatter.string(from: order.dateOfLoading))
                    .font(.title3)
            }
        }
    }
}

#Preview {
    OrderIdView(
        order: Order()
    )
    .environmentObject(OrdersViewModel())
}
