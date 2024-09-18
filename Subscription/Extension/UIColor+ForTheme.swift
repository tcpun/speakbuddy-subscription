//
//  UIColor+ForTheme.swift
//  Subscription
//
//  Created by Soong Teck Pun on 17/9/24.
//

import UIKit

extension UIColor {
    
    /// Returns a color adapted to the current color scheme (light or dark mode).
    ///
    /// - Parameters:
    ///   - light: The color to use in light mode.
    ///   - dark: The color to use in dark mode.
    /// - Returns: A `UIColor` instance adapted to the current user interface style.
    static func forTheme(light: UIColor, dark: UIColor) -> UIColor {
        UIColor { $0.userInterfaceStyle == .light ? light : dark }
    }
}
