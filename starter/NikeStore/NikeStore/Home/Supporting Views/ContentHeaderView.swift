import SwiftUI

struct ContentHeaderView: View {
    let title: String
    var isSeeAllVisible = true
    
    var body: some View {
        HStack(alignment: .bottom) {
            Text(title.uppercased())
                .custom(font: .bold, size: 28)
                .foregroundColor(Color.baseTextColor)
                .offset(y: 6)
            Spacer()
            HStack(spacing: 4) {
                Text("SEE ALL")
                    .custom(font: .regular, size: 15)
                    .foregroundColor(Color.baseTextColor)
                
                Image(systemName: "arrowtriangle.right.fill")
                    .font(.system(size: 10))
                    .offset(y: -2)
                    .foregroundColor(Color.baseTextColor)
            }.opacity(isSeeAllVisible ? 1 : 0)
        }
        .padding(.horizontal, 10)
    }
}

struct ContentHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ContentHeaderView(title: "FEATURED")
    }
}
