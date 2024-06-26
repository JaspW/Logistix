import SwiftUI

struct OrderButtonView: View {    
    let title: String
    let titleColor: Color
    let backColor: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            Text(title)
                .font(.title2)
                .foregroundStyle(titleColor)
                .padding()
                .background {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(backColor)
                }
        }
    }
}
