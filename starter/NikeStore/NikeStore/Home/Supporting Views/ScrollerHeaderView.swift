import SwiftUI

struct ScrollerHeaderView: View {
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .top)) {
            VStack {
                Text("JULY 22'")
                    .custom(font: .regular, size: 14)
                    .foregroundColor(Color.baseHorizontalHeaderTextColor)
                    .rotationEffect(.degrees(-90))
                    .padding(.bottom, 20)
                Spacer()
                Rectangle()
                    .fill(Color.baseHorizontalHeaderTextColor)
                    .frame(width: 1)
            }
        }
        .padding(.vertical, 25)
        .background(Color.baseHorizontalHeaderColor)
        .cornerRadius(6, corners: [.topRight, .bottomRight])
        .clipShape(Rectangle())
    }
}

struct ScrollerHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollerHeaderView()
    }
}
