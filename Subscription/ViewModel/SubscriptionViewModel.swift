//
//  SubscriptionViewModel.swift
//  Subscription
//
//  Created by Soong Teck Pun on 18/9/24.
//

/// ViewModel class to handle `Subscription` related logic and data manipulation.
/// Provides properties for `Subscription` view and button actions.
struct SubscriptionViewModel {
    
    // MARK: - Properties
    
    /// Title of the close button.
    let closeButtonTitle: String
    
    /// Title of the subscription screen.
    let subscriptionTitle: String
    
    /// Body text line 1 for the subscription screen.
    let subscriptionBody1: String
    
    /// Body text line 2 for the subscription screen.
    let subscriptionBody2: String
    
    /// The primary button title.
    let primaryButtonTitle: String
    
    /// Close button tap action handler
    let closeButtonHandler: () -> Void
    
    /// Primary button tap action handler
    let primaryButtonHandler: () -> Void
    
    /// Subscription chart data to be displayed on the chart.
    let subscriptionBarMarkItems: [SubscriptionBarMarkItem] = SubscriptionBarMarkItem.sampleData
    
    // MARK: - Initializer
    
    /// Initializes the ViewModel with default values.
    init(
        closeButtonTitle: String = "×",
        subscriptionTitle: String = "Hello\nSpeakBUDDY",
        subscriptionBody1: String = "スピークバディで",
        subscriptionBody2: String = "レベルアップ",
        primaryButtonTitle: String = "プランに登録する",
        closeButtonHandler: @escaping () -> Void = {},
        primaryButtonHandler: @escaping () -> Void = {})
    {
        self.closeButtonTitle = closeButtonTitle
        self.subscriptionTitle = subscriptionTitle
        self.subscriptionBody1 = subscriptionBody1
        self.subscriptionBody2 = subscriptionBody2
        self.primaryButtonTitle = primaryButtonTitle
        self.closeButtonHandler = closeButtonHandler
        self.primaryButtonHandler = primaryButtonHandler
    }
}
