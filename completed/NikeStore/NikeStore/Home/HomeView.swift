import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 35) {
                FeaturedScrollerView()
                ComingSoonView(monthYear: "JULY 22", shortDate: "07/22")
                ComingSoonView(monthYear: "AUG 22", shortDate: "07/22")
                BrowseByAthleteView()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView().background(Color.baseBGColor)
    }
}
