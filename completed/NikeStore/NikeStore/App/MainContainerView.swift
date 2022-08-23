import SwiftUI

struct MainContainerView: View {
    var body: some View {
        NavigationView {
            ZStack {
                HomeView()
            }
            .background(Color.baseBGColor)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Image("nike-logo")
                        .resizable()
                        .frame(width: 104, height: 37)
                }
                
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button(action: {}) {
                        Image(systemName: "magnifyingglass")
                    }
                    
                    Button(action: {}) {
                        Image(systemName: "cart")
                    }
                }
            }
            .foregroundColor(Color.black)
        }
    }
}

struct MainContainerView_Previews: PreviewProvider {
    static var previews: some View {
        MainContainerView()
    }
}
