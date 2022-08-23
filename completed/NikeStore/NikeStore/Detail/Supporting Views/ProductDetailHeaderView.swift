import SwiftUI

struct ProductDetailHeaderView: View {
    let title: String
    var isSizeSelectionShown: Bool = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack(alignment: .bottom) {
                Text(title.uppercased())
                    .custom(font: .bold, size: 28)
                Spacer()
                HStack {
                    Text("UK")
                        .custom(font: .bold, size: 18)
                    Rectangle().fill().frame(width: 1, height: 12)
                    Text("US")
                        .custom(font: .bold, size: 18)
                }
                .padding(.bottom, 3)
                .opacity(isSizeSelectionShown ? 1 : 0)
            }
            .foregroundColor(.baseTextColor)
            Divider()
        }
        .padding(.top, 10)
    }
}

struct ProductDetailHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailHeaderView(title: "Colors")
    }
}
