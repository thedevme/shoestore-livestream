import SwiftUI

struct SizeView: View {
    var size: Float
    
    @Binding var selectedSize: Float
    
    var body: some View {
        Button(action: { selectedSize = size  }) {
            ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top)) {
                ZStack {
                    RoundedRectangle(cornerRadius: 6)
                        .fill(Color.baseSizeBGColor)
                        .frame(width: 70, height: 45)
                    Text("\(size.formatted(.number.precision(.fractionLength(1))))").custom(font: .heavy, size: 26)
                }
                
                ZStack {
                    Circle()
                        .fill(Color.white)
                        .frame(width: 15, height: 15)
                    Image("check")
                }
                .opacity(size == selectedSize ? 1 : 0)
                .offset(x: 3, y: -3)
            }
        }
        .buttonStyle(.plain)
    }
}

struct SizeView_Previews: PreviewProvider {
    static var previews: some View {
        SizeView(size: 9.5, selectedSize: .constant(9.5))
    }
}
