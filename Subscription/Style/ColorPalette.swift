//
//  ColorPalette.swift
//  Subscription
//
//  Created by Soong Teck Pun on 18/9/24.
//

import SwiftUI


/// Defines the color palette used throughout the Subscription app.
/// This enum categorizes the app's colors for light and dark themes, including gradients, button styles, and text colors.
enum ColorPalette {
    
    enum LightTheme {
        
        enum Background {
            
            /// The top gradient color for the light theme background.
            static let gradientTop = Color(hex: "D5D2FF")
            
            /// The bottom gradient color for the light theme background.
            static let gradientBottom = Color(hex: "FFFFFF")
        }
        
        enum BarMark {
            
            /// The top gradient color for the light theme bar marks.
            static let gradientTop = Color(hex: "1F8FFF")
            
            /// The bottom gradient color for the light theme bar marks.
            static let gradientBottom = Color(hex: "58C0FF")
        }
        
        enum CircularButton {
            
            /// The background color for the light theme circular button.
            static let background = Color(hex: "FFFFFF")
            
            /// The shadow color for the light theme circular button.
            static let shadow = Color(hex: "00000026")
        }
        
        enum PrimaryButton {
            
            /// The background color for the light theme primary button.
            static let background = Color(hex: "3BA7FF")
            
            /// The shadow color for the light theme primary button.
            static let shadow = Color(hex: "000000BD")
            
            /// The title color for the light theme primary button.
            static let title = Color(hex: "FFFFFF")
        }
        
        enum Text {
            
            /// The foreground color for the light theme text.
            static let foreground = Color(hex: "323537")
            
            /// The top gradient color for the light theme text.
            static let gradientTop = Color(hex: "6FD4FF")
            
            /// The bottom gradient color for the light theme text.
            static let gradientBottom = Color(hex: "0075FF")
        }
    }
    
    enum DarkTheme {
        
        enum Background {
            
            /// The top gradient color for the dark theme background.
            static let gradientTop = Color(hex: "03002E")
            
            /// The bottom gradient color for the dark theme background.
            static let gradientBottom = Color(hex: "000000")
        }
        
        enum BarMark {
            
            /// The top gradient color for the dark theme bar marks.
            static let gradientTop = Color(hex: "0070E0")
            
            /// The bottom gradient color for the dark theme bar marks.
            static let gradientBottom = Color(hex: "0068A8")
        }
        
        enum CircularButton {
            
            /// The background color for the dark theme circular button.
            static let background = Color(hex: "000000")
            
            /// The shadow color for the dark theme circular button.
            static let shadow = Color(hex: "FFFFFF26")
        }
        
        enum PrimaryButton {
            
            /// The background color for the dark theme primary button.
            static let background = Color(hex: "006BC2")
            
            /// The shadow color for the dark theme primary button.
            static let shadow = Color(hex: "FFFFFFFF")
            
            /// The title color for the dark theme primary button.
            static let title = Color(hex: "000000")
        }
        
        enum Text {
            
            /// The foreground color for the dark theme text.
            static let foreground = Color(hex: "C7CACC")
            
            /// The top gradient color for the dark theme text.
            static let gradientTop = Color(hex: "00648F")
            
            /// The bottom gradient color for the dark theme text.
            static let gradientBottom = Color(hex: "0077FF")
        }
    }
}
