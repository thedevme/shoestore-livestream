import SwiftUI

struct FeaturedScrollerView: View {
    var body: some View {
        VStack {
            ContentHeaderView(title: "FEATURED")
            ZStack(alignment: Alignment(horizontal: .leading, vertical: .top)) {
                HStack {
                    ScrollerHeaderView()
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 50) {
                            ForEach(0 ..< 5) { item in
                                NavigationLink(destination: ProductDetailView()) {
                                    FeaturedShoeItemView()
                                }
                            }
                        }.padding(.leading)
                    }
                }
                .frame(height: 312)
            }
        }
    }
}

struct FeaturedScrollerView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView {
                ZStack {
                    FeaturedScrollerView()
                        .preferredColorScheme(.dark)
                }
                .background(Color.baseBGColor.edgesIgnoringSafeArea(.all))
            }
            
            NavigationView {
                ZStack {
                    FeaturedScrollerView()
                        .preferredColorScheme(.light)
                }
                .background(Color.baseBGColor)
            }
        }
    }
}
