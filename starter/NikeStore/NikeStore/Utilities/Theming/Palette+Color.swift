import SwiftUI
import Foundation

extension Color {
    static let baseTextColor = Color("baseTextColor")
    static let baseProductTextColor = Color("baseProductTextColor")
    static let baseSizeBGColor = Color("baseSizeBGColor")
    static let baseStarColor = Color("baseStarColor")
    static let baseBGColor = Color("baseBGColor")
    static let baseHorizontalHeaderTextColor = Color("baseHorizontalHeaderTextColor")
    static let baseFeaturedProductPlusColor = Color("baseFeaturedProductPlusColor")
    static let baseProductThumbBGColor = Color("baseProductThumbBGColor")
    static let baseComingSoonProductBGColor = Color("baseComingSoonProductBGColor")
    static let baseFeaturedProductPlusBGColor = Color("baseFeaturedProductPlusBGColor")
    static let baseHorizontalHeaderColor = Color("baseHorizontalHeaderColor")
    static let baseFeaturedProductFooterBGColor = Color("baseFeaturedProductFooterBGColor")
    static let baseFeaturedProductBGColor = Color("baseFeaturedProductBGColor")
}


extension UIColor {
    static let baseTextColor = Color("baseTextColor")
    static let baseProductTextColor = Color("baseProductTextColor")
    static let baseSizeBGColor = Color("baseSizeBGColor")
    static let baseStarColor = Color("baseStarColor")
    static let baseBGColor = Color("baseBGColor")
    static let baseHorizontalHeaderTextColor = Color("baseHorizontalHeaderTextColor")
    static let baseFeaturedProductPlusColor = Color("baseFeaturedProductPlusColor")
    static let baseProductThumbBGColor = Color("baseProductThumbBGColor")
    static let baseComingSoonProductBGColor = Color("baseComingSoonProductBGColor")
    static let baseFeaturedProductPlusBGColor = Color("baseFeaturedProductPlusBGColor")
    static let baseHorizontalHeaderColor = Color("baseHorizontalHeaderColor")
    static let baseFeaturedProductFooterBGColor = Color("baseFeaturedProductFooterBGColor")
    static let baseFeaturedProductBGColor = Color("baseFeaturedProductBGColor")

    private static func Color(_ key: String) -> UIColor {
       if let color = UIColor(named: key, in: .main, compatibleWith: nil) {
           return color
       }

       return .black
    }
}

