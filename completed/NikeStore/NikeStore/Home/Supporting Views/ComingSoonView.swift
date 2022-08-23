import SwiftUI

struct ComingSoonView: View {

    let monthYear: String
    let shortDate: String

    var body: some View {
        VStack {
            ContentHeaderView(title: "Coming Soon", isSeeAllVisible: false)
            ZStack {
                Text(shortDate)
                    .custom(font: .heavy, size: 34)
                    .foregroundColor(.baseTextColor)
                    .offset(x: -110, y: -62)

                HStack(spacing: 0) {
                    ScrollerHeaderView()
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            ForEach(0..<4) { _ in
                                ZStack {
                                    Rectangle()
                                        .fill(Color.baseComingSoonProductBGColor)
                                        .frame(width: 229, height: 122)
                                        .cornerRadius(24)

                                    Image("kobes")
                                        .offset(x: 8, y: -35)

                                    VStack {
                                        Spacer()
                                        HStack {
                                            Image("nike-logo")
                                            Spacer()
                                            HStack {
                                                Text("4 JULY")
                                                    .custom(font: .ultralight, size: 15)
                                                    .foregroundColor(.white)
                                            }
                                            .frame(width: 57, height: 24)
                                            .background(Color.baseComingSoonProductBGColor)
                                            .cornerRadius(5)
                                        }
                                        .padding(.horizontal, 12)
                                        .padding(.bottom, 10)
                                    }
                                    .frame(width: 229, height: 122)
                                }
                                .frame(width: 229, height: 180)
                                .offset(y: 14)
                            }
                        }
                        .offset(y: 2)
                        .padding(.leading, 25)
                        .padding(.trailing, 25)
                    }
                }
            }
        }
    }
}

struct ComingSoonView_Previews: PreviewProvider {
    static var previews: some View {
        ComingSoonView(monthYear: "JULY 20'", shortDate: "06/20")
    }
}
