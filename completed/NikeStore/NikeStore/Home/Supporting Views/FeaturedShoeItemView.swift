import SwiftUI

struct FeaturedShoeItemView: View {
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .center)) {
            ZStack(alignment: Alignment(horizontal: .center, vertical: .top)) {
                VStack(spacing: 0) {
                    Color.baseFeaturedProductBGColor
                        .frame(width: 194, height: 260)
                        .cornerRadius(20, corners: [.topLeft, .topRight])
                    
                    Color.baseFeaturedProductFooterBGColor
                        .frame(width: 194, height: 50)
                        .cornerRadius(20, corners: [.bottomLeft, .bottomRight])
                }
                
                Image("jordan-logo-large").padding(.top, 50)
            }
            
            VStack(alignment: .leading, spacing: 0) {
                HStack(alignment: .top) {
                    VStack {
                        Image(systemName: "plus")
                            .padding(10)
                            .background(Color.baseFeaturedProductPlusBGColor)
                            .cornerRadius(20, corners: .topLeft)
                            .cornerRadius(10, corners: .bottomRight)
                            .clipShape(Rectangle())
                            .foregroundColor(.baseFeaturedProductPlusColor)
                        
                        Spacer()
                    }
                    
                    Image(systemName: "heart")
                        .font(.system(size: 24))
                        .padding(.top, 8)
                        .offset(x: 110)
                }
                .frame(height: 50)
                
                Image("jordan")
                    .rotationEffect(Angle(degrees: -23))
                    .frame(height: 210)
                
                HStack {
                    Text("$999")
                        .custom(font: .bold, size: 32)
                        .foregroundColor(.baseProductTextColor)
                    Spacer()
                    Text("NEW")
                        .custom(font: .heavy, size: 15)
                        .padding(5)
                        .background(Color.black)
                        .cornerRadius(4)
                        .clipShape(Rectangle())
                        .foregroundColor(.white)
                }
                .padding(.horizontal)
                .frame(width: 194, height: 50)
            }
        }
        .frame(height: 312)
    }
}

struct FeaturedShoeItemView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FeaturedShoeItemView()
                .preferredColorScheme(.dark)
        }
        .previewLayout(.sizeThatFits)
        .background(Color.baseBGColor.edgesIgnoringSafeArea(.all))
        
        Group {
            FeaturedShoeItemView()
                .preferredColorScheme(.light)
        }
        .previewLayout(.sizeThatFits)
        .background(Color.baseBGColor.edgesIgnoringSafeArea(.all))
    }
}
