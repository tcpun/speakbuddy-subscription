//
//  PrimaryButtonStyle.swift
//  Subscription
//
//  Created by Soong Teck Pun on 18/9/24.
//

import SwiftUI


/// A custom button style for primary buttons in the Subscription app, applying specific colors, shadows, and animations.
struct PrimaryButtonStyle: PrimitiveButtonStyle {
    
    /// State to track whether the button is pressed.
    @State private var isPressed = false
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity)
            .font(.custom(Constants.Font.name, baseSize: Constants.Font.size))
            .padding(.all, CGFloat(baseValue: Constants.padding))
            .foregroundStyle(ContentStyle.PrimaryButton.title)
            .background(
                RoundedRectangle(cornerRadius: Constants.cornerRadius)
                    .fill(ContentStyle.PrimaryButton.background)
                    .shadow(
                        color: ContentStyle.CircularButton.shadow,
                        radius: 10,
                        y: 2))
            .overlay(
                RoundedRectangle(cornerRadius: Constants.cornerRadius)
                    .stroke(ContentStyle.PrimaryButton.border, lineWidth: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/))
            .opacity(isPressed ? 0.2 : 1)
            .animation(.default, value: isPressed)
            .gesture(DragGesture(minimumDistance: 0)
                .onChanged { _ in
                    isPressed = true
                }
                .onEnded { _ in
                    isPressed = false
                    configuration.trigger()
                })
    }
}

private extension PrimaryButtonStyle {
    
    /// Constants used in the `PrimaryButtonStyle`.
    enum Constants {
        
        enum Font {
            
            static let name = "HiraginoSans-W6"
            static let size: CGFloat = 16
        }
        
        static let cornerRadius: CGFloat = 28.66
        static let padding: Float = 16
    }
}


extension PrimitiveButtonStyle where Self == PrimaryButtonStyle {
    
    /// A static property that returns an instance of `PrimaryButtonStyle`.
    static var primary: PrimaryButtonStyle { .init() }
}

#Preview {
    
    VStack {
        Button("Sample") {}
            .buttonStyle(.primary)
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(Color.brown)
}
