//
//  CircularButtonStyle.swift
//  Subscription
//
//  Created by Soong Teck Pun on 18/9/24.
//

import SwiftUI

/// A custom button style that renders the button in a circular shape with animation.
struct CircularButtonStyle: PrimitiveButtonStyle {
    
    /// State to track whether the button is pressed.
    @State private var isPressed = false
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.custom(Constants.Font.name, baseSize: Constants.Font.size))
            .padding(.all, CGFloat(baseValue: Constants.padding))
            .foregroundStyle(ContentStyle.Text.foreground)
            .background(
                Circle()
                    .fill(ContentStyle.CircularButton.background)
                    .shadow(
                        color: ContentStyle.CircularButton.shadow,
                        radius: Constants.Shadow.radius,
                        x: Constants.Shadow.x,
                        y: Constants.Shadow.y))
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

private extension CircularButtonStyle {
    
    /// Constants used in the `CircularButtonStyle`.
    enum Constants {
        
        enum Font {
            
            static let name = "HiraginoSans-W7"
            static let size: CGFloat = 20
        }
        
        enum Shadow {
            
            static let radius: CGFloat = 10
            static let x: CGFloat = 0
            static let y: CGFloat = 2
        }
        
        static let padding: Float = 12
    }
}

extension PrimitiveButtonStyle where Self == CircularButtonStyle {
    
    /// A static property that returns an instance of `CircularButtonStyle`.
    static var circular: CircularButtonStyle { .init() }
}

#Preview {
    
    VStack {
        Button("×") {}
            .buttonStyle(.circular)
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(Color.brown)
}
