import SwiftUI

struct ComingSoonScroller: View {
    var body: some View {
        VStack(spacing: 20) {
            ContentHeaderView(title: "COMING SOON")
            VStack(spacing: 0) {
                ComingSoonView(monthYear: "JUNE 22'", shortDate: "06/22")
                ComingSoonView(monthYear: "JULY 22'", shortDate: "07/22")
            }
        }
        .padding(.top, 10)
    }
}

struct ComingSoonScroller_Previews: PreviewProvider {
    static var previews: some View {
        ComingSoonScroller()
    }
}
