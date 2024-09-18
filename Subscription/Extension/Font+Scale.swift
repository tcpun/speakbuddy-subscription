//
//  Font+Scale.swift
//  Subscription
//
//  Created by Soong Teck Pun on 18/9/24.
//

import SwiftUI

extension Font {
    
    /// Returns a custom font, scaled for different devices.
    ///
    /// - Parameters:
    ///   - name: The name of the font.
    ///   - baseSize: The base size of the font.
    ///   - scale: The scaling factor, defaults to `1.5`.
    /// - Returns: A `Font` instance.
    static func custom(_ name: String, baseSize: CGFloat, scale: CGFloat = 1.5) -> Font {
        .custom(name, size: UIDevice.current.isPad ? baseSize * scale : baseSize)
    }
    
    /// Returns a system font with the specified weight, scaled for different devices.
    ///
    /// - Parameters:
    ///   - baseSize: The base size of the font.
    ///   - weight: The font weight.
    ///   - scale: The scaling factor, defaults to `1.5`.
    /// - Returns: A `Font` instance.
    static func system(baseSize: CGFloat, weight: Font.Weight, scale: CGFloat = 1.5) -> Font {
        .system(size: UIDevice.current.isPad ? baseSize * scale : baseSize, weight: weight)
    }
}
