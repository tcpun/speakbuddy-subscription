//
//  Color+ColorScheme.swift
//  Subscription
//
//  Created by Soong Teck Pun on 17/9/24.
//

import SwiftUI

extension Color {
    
    /// Creates a `Color` that adapts to the current color scheme (light or dark mode).
    ///
    /// - Parameters:
    ///   - light: The color to use in light mode.
    ///   - dark: The color to use in dark mode.
    static func forTheme(light: Color, dark: Color) -> Color {
        Color(uiColor: UIColor.forTheme(light: UIColor(light), dark: UIColor(dark)))
    }
}
