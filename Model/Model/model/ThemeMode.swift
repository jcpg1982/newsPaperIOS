//
//  ThemeModeNetwork.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation

public struct ThemeMode {
    let colors: Colors
    let fonts: Fonts
    let logos: Logos
    let mode: String
    let styles: Styles
    
    public init() {
        self.colors = Colors()
        self.fonts = Fonts()
        self.logos = Logos()
        self.mode = ""
        self.styles = Styles()
    }
    
    public init(
        colors: Colors = Colors(),
        fonts: Fonts = Fonts(),
        logos: Logos = Logos(),
        mode: String = "",
        styles: Styles = Styles()
    ) {
        self.colors = colors
        self.fonts = fonts
        self.logos = logos
        self.mode = ""
        self.styles = styles
    }
}
