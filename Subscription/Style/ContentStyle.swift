//
//  ContentStyle.swift
//  Subscription
//
//  Created by Soong Teck Pun on 18/9/24.
//

import SwiftUI

/// Defines reusable content styles for various UI elements in the app, such as backgrounds, buttons, and text.
/// This enum extends view modifiers for custom appearance and behavior.
enum ContentStyle {
    
    enum Background {}
    enum BarMark {}
    enum CircularButton {}
    enum PrimaryButton {}
    enum Text {}
}

extension ContentStyle.Background {
    
    /// A gradient background style that adapts to light and dark themes.
    static var gradient: LinearGradient {
        let gradientTop: Color = .forTheme(light: ColorPalette.LightTheme.Background.gradientTop, dark: ColorPalette.DarkTheme.Background.gradientTop)
        let gradientBottom: Color = .forTheme(light: ColorPalette.LightTheme.Background.gradientBottom, dark: ColorPalette.DarkTheme.Background.gradientBottom)
        
        return LinearGradient(
            gradient: Gradient(colors: [gradientTop, gradientBottom]),
            startPoint: .top,
            endPoint: .bottom)
    }
}

extension ContentStyle.BarMark {
    
    /// A gradient bar mark style that adapts to light and dark themes.
    static var gradient: LinearGradient {
        let gradientTop: Color = .forTheme(light: ColorPalette.LightTheme.BarMark.gradientTop, dark: ColorPalette.DarkTheme.BarMark.gradientTop)
        let gradientBottom: Color = .forTheme(light: ColorPalette.LightTheme.BarMark.gradientBottom, dark: ColorPalette.DarkTheme.BarMark.gradientBottom)
        
        return LinearGradient(
            gradient: Gradient(colors: [gradientTop, gradientBottom]),
            startPoint: .top,
            endPoint: .bottom)
    }
}

extension ContentStyle.CircularButton {
    
    /// A background style that adapts to light and dark themes.
    static var background: Color {
        .forTheme(light: ColorPalette.LightTheme.CircularButton.background, dark: ColorPalette.DarkTheme.CircularButton.background)
    }
    
    /// A shadow style that adapts to light and dark themes.
    static var shadow: Color {
        .forTheme(light: ColorPalette.LightTheme.CircularButton.shadow, dark: ColorPalette.DarkTheme.CircularButton.shadow)
    }
}

extension ContentStyle.PrimaryButton {
    
    /// A background style that adapts to light and dark themes.
    static var background: Color {
        .forTheme(light: ColorPalette.LightTheme.PrimaryButton.background, dark: ColorPalette.DarkTheme.PrimaryButton.background)
    }
    
    /// A border style that adapts to light and dark themes.
    static var border: Color {
        .forTheme(light: .white, dark: .black)
    }
    
    /// A shadow style that adapts to light and dark themes.
    static var shadow: Color {
        .forTheme(light: ColorPalette.LightTheme.PrimaryButton.shadow, dark: ColorPalette.DarkTheme.PrimaryButton.shadow)
    }
    
    /// A title style that adapts to light and dark themes.
    static var title: Color {
        .forTheme(light: ColorPalette.LightTheme.PrimaryButton.title, dark: ColorPalette.DarkTheme.PrimaryButton.title)
    }
}

extension ContentStyle.Text {
    
    /// A foreground style that adapts to light and dark themes.
    static var foreground: Color {
        .forTheme(light: ColorPalette.LightTheme.Text.foreground, dark: ColorPalette.DarkTheme.Text.foreground)
    }
    
    /// A gradient text style that adapts to light and dark themes.
    static var gradient: LinearGradient {
        let gradientTop: Color = .forTheme(light: ColorPalette.LightTheme.Text.gradientTop, dark: ColorPalette.DarkTheme.Text.gradientTop)
        let gradientBottom: Color = .forTheme(light: ColorPalette.LightTheme.Text.gradientBottom, dark: ColorPalette.DarkTheme.Text.gradientBottom)
        
        return LinearGradient(
            gradient: Gradient(colors: [gradientTop, gradientBottom]),
            startPoint: .top,
            endPoint: .bottom)
    }
}
