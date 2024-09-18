//
//  SubscriptionViewModelTests.swift
//  SubscriptionTests
//
//  Created by Soong Teck Pun on 16/9/24.
//

import XCTest
@testable import Subscription

/// Unit tests for `SubscriptionViewModel`.
final class SubscriptionViewModelTests: XCTestCase {
    
    /// Test that the view model is correctly initialized with the provided data.
    func testSubscriptionViewModel() throws {
        // Arrange
        let closeButtonTitle = "closeButtonTitle"
        let subscriptionTitle: String = "subscriptionTitle"
        let subscriptionBody1: String = "subscriptionBody1"
        let subscriptionBody2: String = "subscriptionBody2"
        let primaryButtonTitle: String = "primaryButtonTitle"
        
        // Act
        let viewModel = makeViewModel(
            closeButtonTitle: closeButtonTitle,
            subscriptionTitle: subscriptionTitle,
            subscriptionBody1: subscriptionBody1,
            subscriptionBody2: subscriptionBody2,
            primaryButtonTitle: primaryButtonTitle)
        
        // Assert
        XCTAssertEqual(viewModel.closeButtonTitle, closeButtonTitle)
        XCTAssertEqual(viewModel.subscriptionTitle, subscriptionTitle)
        XCTAssertEqual(viewModel.subscriptionBody1, subscriptionBody1)
        XCTAssertEqual(viewModel.subscriptionBody2, subscriptionBody2)
        XCTAssertEqual(viewModel.primaryButtonTitle, primaryButtonTitle)
    }
    
    /// Test that the close button handler is called when invoked.
    func testSubscriptionViewModelCloseButtonHandler() throws {
        // Arrange
        let expectation = expectation(description: #function)
        
        let viewModel = makeViewModel(closeButtonHandler: { expectation.fulfill() })
        
        // Act
        viewModel.closeButtonHandler()
        
        // Assert
        waitForExpectations(timeout: 0)
    }
    
    /// Test that the primary button handler is called when invoked.
    func testSubscriptionViewModelPrimaryButtonHandler() throws {
        // Arrange
        let expectation = expectation(description: #function)
        
        let viewModel = makeViewModel(primaryButtonHandler: { expectation.fulfill() })
        
        // Act
        viewModel.primaryButtonHandler()
        
        // Assert
        waitForExpectations(timeout: 0)
    }
}

private extension SubscriptionViewModelTests {
    
    func makeViewModel(
        closeButtonTitle: String = "",
        subscriptionTitle: String = "",
        subscriptionBody1: String = "",
        subscriptionBody2: String = "",
        primaryButtonTitle: String = "",
        closeButtonHandler: @escaping () -> Void = {},
        primaryButtonHandler: @escaping () -> Void = {}) -> SubscriptionViewModel
    {
        SubscriptionViewModel(
            closeButtonTitle: closeButtonTitle,
            subscriptionTitle: subscriptionTitle,
            subscriptionBody1: subscriptionBody1,
            subscriptionBody2: subscriptionBody2,
            primaryButtonTitle: primaryButtonTitle,
            closeButtonHandler: closeButtonHandler,
            primaryButtonHandler: primaryButtonHandler
        )
    }
}
