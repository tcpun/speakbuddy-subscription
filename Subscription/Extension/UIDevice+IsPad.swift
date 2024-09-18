//
//  UIDevice+IsPad.swift
//  Subscription
//
//  Created by Soong Teck Pun on 18/9/24.
//

import UIKit

extension UIDevice {
    
    /// A Boolean property that indicates whether the current device is an iPad.
    var isPad: Bool { self.userInterfaceIdiom == .pad }
}
