//
//  SubscriptionBarMarkItem.swift
//  Subscription
//
//  Created by Soong Teck Pun on 18/9/24.
//

import Foundation

/// Represents an individual item in `SubscriptionChartView`, identified by its time and value.
/// Each item is uniquely identified and supports animation.
struct SubscriptionBarMarkItem: Identifiable {
    
    /// The time represented as a string (e.g., "現在", "3ヶ月").
    let time: String
    
    /// The value associated with the given time.
    let value: Int
    
    /// A unique identifier for each `SubscriptionBarMarkItem`.
    let id = UUID().uuidString
    
    /// Boolean flag to control animation.
    var animate: Bool = false
}

extension SubscriptionBarMarkItem {
    
    /// Sample data for preview or testing purposes.
    static var sampleData: [SubscriptionBarMarkItem] = [
        SubscriptionBarMarkItem(time: "現在", value: 66),
        SubscriptionBarMarkItem(time: "3ヶ月", value: 100),
        SubscriptionBarMarkItem(time: "1年", value: 220),
        SubscriptionBarMarkItem(time: "2年", value: 300),
    ]
}
