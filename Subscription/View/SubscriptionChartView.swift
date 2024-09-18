//
//  SubscriptionChartView.swift
//  Subscription
//
//  Created by Soong Teck Pun on 18/9/24.
//

import SwiftUI
import Charts


/// A custom chart view displaying bar marks representing data with animated transitions.
struct SubscriptionChartView: View {
    
    /// Array of bar mark items to display in the chart.
    @State private var barMarkItems: [SubscriptionBarMarkItem]
    
    init(barMarkItems: [SubscriptionBarMarkItem]) {
        self.barMarkItems = barMarkItems
    }
    
    var body: some View {
        Chart {
            ForEach(barMarkItems) { item in
                BarMark(
                    x: .value(Constants.BarMark.xLabel, item.time),
                    y: .value(Constants.BarMark.yLabel, item.animate ? item.value : 0),
                    width: MarkDimension(integerLiteral: Constants.BarMark.width)
                )
                .foregroundStyle(ContentStyle.BarMark.gradient)
                .cornerRadius(Constants.cornerRadius)
            }
        }
        .chartXAxis {
            AxisMarks {
                AxisValueLabel()
                    .font(.custom(Constants.Font.name, baseSize: Constants.Font.size))
                    .foregroundStyle(ContentStyle.Text.foreground)
            }
        }
        .chartYAxis(.hidden)
        .chartYScale(domain: 0...Self.maxScale(items: barMarkItems))
        .frame(maxWidth: Self.maxWidth(
            width: Constants.BarMark.width,
            spacing: Constants.BarMark.spacing,
            itemCount: barMarkItems.count)
        )
        .onAppear {
            for (index, _) in barMarkItems.enumerated() {
                DispatchQueue.main.asyncAfter(deadline: .now() + Double(index) * 0.25) {
                    withAnimation(.easeInOut(duration: 0.3).delay(Double(index) * 0.02)) {
                        barMarkItems[index].animate = true
                    }
                }
            }
        }
    }
}

private extension SubscriptionChartView {
    
    static func maxScale(items: [SubscriptionBarMarkItem]) -> Int {
        items.max { item1, item2 in
            item2.value > item1.value
        }?.value ?? 0
    }
    
    static func maxWidth(width: Int, spacing: Int, itemCount: Int) -> CGFloat {
        let itemWidth = width * itemCount
        let spacingWidth = spacing * (itemCount - 1)
        return CGFloat(itemWidth + spacingWidth)
    }
}

private extension SubscriptionChartView {
    
    /// Constants used in the `SubscriptionChartView`.
    enum Constants {
        
        enum BarMark {
            
            static let spacing: Int = UIDevice.current.isPad ? 26 * 2 : 26
            static let width: Int = UIDevice.current.isPad ? 48 * 2 : 48
            static let xLabel = "Time"
            static let yLabel = "Value"
        }
        
        enum Font {
            
            static let name = "HiraginoSans-W7"
            static let size: CGFloat = 12
        }
        
        static let cornerRadius: CGFloat = 2.73
    }
}

#Preview {
    SubscriptionChartView(barMarkItems: SubscriptionBarMarkItem.sampleData)
}
