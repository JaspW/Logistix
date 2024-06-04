import SwiftUI

struct RouteNewOrderView: View {
    @EnvironmentObject private var newOrderVM: NewOrderViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Маршрут")
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(Color(hex: 0x363746, alpha: 1))
                .padding(.leading)
            
            VStack {
                InputView(
                    text: $newOrderVM.sourceAddress,
                    title: "Откуда:",
                    placeholder: "Адрес отправки"
                )
                
                InputView(
                    text: $newOrderVM.destinationAddress,
                    title: "Куда:",
                    placeholder: "Адрес доставки"
                )
            }
            .hAlign(.center)
        }
        .padding(.bottom, 50)
    }
}

#Preview {
    RouteNewOrderView()
        .environmentObject(NewOrderViewModel(selectedWeight: .belowOneHundred))
}
