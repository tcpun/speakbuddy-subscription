//
//  AnimatedProttyView.swift
//  Subscription
//
//  Created by Soong Teck Pun on 18/9/24.
//

import SwiftUI


/// A view displaying an animated "Protty" image that moves vertically when the animation is running.
struct AnimatedProttyView: View {
    
    /// Tracks whether the animation is running.
    @State private var animationsRunning = false
    
    var body: some View {
        Image(Constants.name)
            .resizable()
            .scaledToFit()
            .offset(y: animationsRunning ? Constants.offset : .zero)
            .animation(
                animationsRunning ? Constants.animation : .default,
                value: animationsRunning)
            .onAppear {
                animationsRunning = true
            }
    }
}

private extension AnimatedProttyView {
    
    /// Constants used in the `AnimatedProttyView`.
    enum Constants {
        
        static let animation: Animation = .easeInOut(duration: 1).repeatForever()
        static let name = "protty"
        static let offset: CGFloat = 30
    }
}

#Preview {
    AnimatedProttyView()
}
