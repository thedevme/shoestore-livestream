import SwiftUI

struct BrowseByAthleteView: View {
    var body: some View {
        VStack(alignment: .leading) {
            ContentHeaderView(title: "BROWSE BY ATHLETE", isSeeAllVisible: false)
            VStack(spacing: 12) {
                ForEach(0..<8) { _ in
                    Text("KOBE BRYANT")
                        .custom(font: .regular, size: 18)
                        .foregroundColor(Color.baseTextColor)
                }
            }
            .padding(.leading, 10)
            .padding(.top, 10)
        }
    }
}

struct BrowseByAthleteView_Previews: PreviewProvider {
    static var previews: some View {
        BrowseByAthleteView()
    }
}
