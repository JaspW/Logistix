import SwiftUI

struct MainView: View {
    @EnvironmentObject private var mainVM: MainViewModel
    
    var body: some View {
        ZStack {
            // Background color
            Color.main
                .ignoresSafeArea()
            
            // Side Menu
            ScrollView(
                getRect().height < 750 ? .vertical : .init(),
                showsIndicators: false
            ) {
                SideMenu(selectedTab: $mainVM.selectedTab)
            }
            
            BackgroundCardsView()
        }
        .onAppear {
            mainVM.selectedTab = "Заказы"
        }
    }
}

#Preview {
    MainView()
        .environmentObject(MainViewModel())
}
