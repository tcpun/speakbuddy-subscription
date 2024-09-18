//
//  CGFloat+Scale.swift
//  Subscription
//
//  Created by Soong Teck Pun on 18/9/24.
//

import UIKit

extension CGFloat {
    
    /// Initializes a `CGFloat` value based on a given base value and optional scaling factor.
    ///
    /// - Parameters:
    ///   - baseValue: The base value for the `CGFloat`.
    ///   - scale: Optional scaling factor, defaults to `1.5`.
    init(baseValue: Float, scale: Float = 1.5) {
        self.init(UIDevice.current.isPad ? baseValue * scale : baseValue)
    }
}
