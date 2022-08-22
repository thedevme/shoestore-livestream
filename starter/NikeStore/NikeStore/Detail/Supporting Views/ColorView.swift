import SwiftUI

struct ColorView: View {
    let color: Color
    
    @Binding var selectedColor: Color
    
    var body: some View {
        Button(action: { selectedColor = color  }) {
            ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top)) {
                RoundedRectangle(cornerRadius: 6)
                    .fill(color)
                    .frame(width: 40, height: 40)
                
                ZStack {
                    Circle()
                        .fill(Color.white)
                        .frame(width: 15, height: 15)
                    Image("check")
                }
                .opacity(color == selectedColor ? 1 : 0)
                .offset(x: 3, y: -3)
            }
        }
        .buttonStyle(.plain)
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ColorView(color: .black, selectedColor: .constant(Color.blue))
            ColorView(color: .blue, selectedColor: .constant(Color.blue))
        }
    }
}
