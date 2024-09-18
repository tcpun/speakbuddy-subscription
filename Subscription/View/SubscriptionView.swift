//
//  SubscriptionView.swift
//  Subscription
//
//  Created by Soong Teck Pun on 16/9/24.
//

import Charts
import SwiftUI

struct SubscriptionView: View {
    
    private let viewModel: SubscriptionViewModel
    
    init(viewModel: SubscriptionViewModel = SubscriptionViewModel()) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                
                Button(viewModel.closeButtonTitle) {
                    viewModel.closeButtonHandler()
                }
                .buttonStyle(.circular)
            }
            .padding(.top, 8)
            .padding(.trailing, 20)
            
            HStack {
                Text(viewModel.subscriptionTitle)
                    .foregroundStyle(ContentStyle.Text.foreground)
                    .font(.system(baseSize: Constants.Font.Title.size, weight: .bold))
                    .multilineTextAlignment(.center)
            }
            .padding(.top, 10)
            
            ZStack {
                GeometryReader { geometry in
                    SubscriptionChartView(barMarkItems: viewModel.subscriptionBarMarkItems)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding(.top, CGFloat(baseValue: 52, scale: 2))
                        .padding(.horizontal, 60)
                    
                    HStack {
                        AnimatedProttyView()
                            .frame(maxWidth: ((geometry.size.width - 120) * 0.7), alignment: .center)
                            .frame(maxHeight: geometry.size.height / 2)
                            .padding(.trailing, ((geometry.size.width - 120) * 0.6))
                    }
                    .frame(maxWidth: .infinity)
                }
            }
            .padding(.top, 32)
            
            VStack {
                Text(viewModel.subscriptionBody1)
                    .foregroundStyle(ContentStyle.Text.foreground)
                    .font(.custom(Constants.Font.Body1.name, baseSize: Constants.Font.Body1.size))
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                
                Text(viewModel.subscriptionBody2)
                    .foregroundStyle(ContentStyle.Text.gradient)
                    .font(.custom(Constants.Font.Body2.name, baseSize: Constants.Font.Body2.size))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
            }
            .padding(.top, 30)
            
            HStack {
                Button(viewModel.primaryButtonTitle) {
                    viewModel.primaryButtonHandler()
                }
                .buttonStyle(.primary)
            }
            .padding(.horizontal, 20)
            .padding(.top, 25)
            .padding(.bottom, 56)
        }
        .background(ContentStyle.Background.gradient)
    }
}

private extension SubscriptionView {
    
    /// Constants used in the `SubscriptionView`.
    enum Constants {
        
        enum Font {
            
            enum Body1 {
                
                static let name = "HiraginoSans-W6"
                static let size: CGFloat = 20
            }
            
            enum Body2 {
                
                static let name = "HiraginoSans-W7"
                static let size: CGFloat = 30
            }
            
            enum Title {
                
                static let size: CGFloat = 36
            }
        }
    }
}

#Preview {
    SubscriptionView()
}
