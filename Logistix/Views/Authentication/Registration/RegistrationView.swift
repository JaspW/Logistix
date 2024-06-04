import SwiftUI

struct RegistrationView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Впервые у нас?\nЗарегистрируйся!")
                .multilineTextAlignment(.center)
                .font(.largeTitle)
                .fontWeight(.bold)
            
            RegistrationFieldsView()
            
            RegistrationButtonView()
        }
    }
}

#Preview {
    RegistrationView()
        .environmentObject(AuthViewModel())
        .environmentObject(RegistrationViewModel())
}
