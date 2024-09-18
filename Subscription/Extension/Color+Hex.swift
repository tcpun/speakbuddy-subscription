//
//  Color+Hex.swift
//  Subscription
//
//  Created by Soong Teck Pun on 17/9/24.
//

import SwiftUI

extension Color {
    
    /// Initializes a `Color` from a hexadecimal string.
    ///
    /// - Parameter hex: A hexadecimal string representing the color.
    init(hex: String) {
        let scanner = Scanner(string: hex)
        
        var rgbValue: UInt64 = 0
        scanner.scanHexInt64(&rgbValue)
        
        let red = (rgbValue & 0xff0000) >> 16
        let green = (rgbValue & 0xff00) >> 8
        let blue = (rgbValue & 0xff)
        let opacity = hex.count == 8 ? rgbValue >> 24 : 255
        
        self.init(
            red: CGFloat(red) / 255.0,
            green: CGFloat(green) / 255.0,
            blue: CGFloat(blue) / 255.0,
            opacity: CGFloat(opacity) / 255.0)
    }
}
