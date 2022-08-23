import SwiftUI

struct ProductDetailView: View {
    let colors = [Color.black, Color.blue, Color.red]
    let sizes = [6.0, 7.0, 7.5, 8.0, 8.5, 9.0, 9.5, 10.0, 10.5, 11.0, 12.0]
    let contentPadding: CGFloat = 20
    
    @State private var selectedSize: Float = 0.0
    @State private var selectedColor = Color.black
    
    let columns = [
        GridItem(.fixed(75), spacing: 5),
        GridItem(.fixed(75), spacing: 5),
        GridItem(.fixed(75), spacing: 5),
        GridItem(.fixed(75), spacing: 5),
        GridItem(.fixed(75), spacing: 5)
    ]
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading)  {
                ZStack(alignment: Alignment(horizontal: .center, vertical: .center)) {
                    Image("jordan-logo-large")
                        .resizable()
                        .frame(width: 234, height: 218)
                    Image("jordan")
                        .resizable()
                        .frame(width: 250, height: 134)
                        .rotationEffect(Angle(degrees: -9))
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 25)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(0 ..< 5) { item in
                            shoeThumb
                        }
                    }
                    .padding(.horizontal, contentPadding)
                }
                
                HStack(spacing: 15) {
                    HStack(spacing: 5) {
                        HStack {
                            Image(systemName: "star")
                            Image(systemName: "star")
                            Image(systemName: "star")
                        }
                        .symbolVariant(.fill)
                        
                        Image(systemName: "star.leadinghalf.filled")
                        Image(systemName: "star")
                    }
                    .foregroundColor(.baseStarColor)
                    
                    Text("4.9").custom(font: .black, size: 22)
                    Text("(Reviews)").custom(font: .medium, size: 14)
                }
                .padding(.horizontal, contentPadding)
                .padding(.bottom, 15)
                
                Text("AIR JORDAN 11 RETRO “BRED 2019 RELEASE” AIR JORDAN 11 RETRO “BRED 2019 RELEASE”")
                    .custom(font: .bold, size: 20)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, contentPadding)
                
                HStack(alignment: .top, spacing: 2) {
                    Text("$999")
                        .custom(font: .heavy, size: 35)
                    
                    Text("99")
                        .padding(.top, 3)
                        .custom(font: .heavy, size: 16)
                }
                .padding(.horizontal, contentPadding)
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam viverra leo orci, vel accumsan leo ultricies commodo. Etiam at sem lorem. Nullam hendrerit turpis ut massa vehicula, at imperdiet ante sagittis. Proin pretium vitae velit et scelerisque. Morbi semper tellus non risus lobortis sagittis. ")
                    .custom(font: .regular, size: 22)
                    .padding(.horizontal, contentPadding)
                    .padding(.bottom, 10)
                
                VStack(alignment: .leading, spacing: 14) {
                    ProductDetailHeaderView(title: "Colors")
                        .padding(.horizontal, contentPadding)
                    
                    HStack {
                        ForEach(colors, id: \.self) { item in
                            ColorView(color: item, selectedColor: $selectedColor)
                        }
                    }
                    .padding(.horizontal, contentPadding)
                }
                .padding(.bottom, 20)
                
                VStack(spacing: 14) {
                    ProductDetailHeaderView(title: "Select Size", isSizeSelectionShown: true)
                    
                    LazyVGrid(columns: columns) {
                        ForEach(sizes, id: \.self) { item in
                            SizeView(size: Float(item), selectedSize: $selectedSize)
                        }
                        
                    }
                }
                .padding(.horizontal, contentPadding)
            }
        }
    }
    
    var shoeThumb: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.baseProductThumbBGColor)
                .frame(width: 80, height: 83)
            
            Image("jordan")
                .resizable()
                .frame(width: 63, height: 34)
        }
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
    }
}
