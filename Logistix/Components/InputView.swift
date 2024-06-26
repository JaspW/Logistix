import SwiftUI

struct InputView: View {
    @Binding var text: String
    let title: String
    let placeholder: String
    var isSecureField = false
    var isNumPad = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(title)
                .foregroundStyle(Color(hex: 0x363746, alpha: 1))
                .font(.title3)
            
            if isSecureField {
                SecureField(placeholder, text: $text)
                    .modifier(InputViewModifier())
            } else {
                TextField(placeholder, text: $text)
                    .keyboardType(isNumPad ? .numberPad : .default)
                    .modifier(InputViewModifier())
            }
        }
    }
}

struct InputViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundStyle(.black)
            .frame(
                width: UIScreen.main.bounds.width - 80,
                height: 50
            )
            .padding(.leading, 16)
            .background {
                RoundedRectangle(cornerRadius: 20)
                    .shadow(radius: 3, x: 0, y: -1)
                    .foregroundStyle(
                        Color(
                            hex: 0xF9F9F9,
                            alpha: 1
                        )
                    )
                    .background {
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(
                                Color(
                                    hex: 0xDDDDDD,
                                    alpha: 1
                                ),
                                lineWidth: 3
                            )
                    }
            }
    }
}
