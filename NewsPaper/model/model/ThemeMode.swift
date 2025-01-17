//
//  ThemeModeNetwork.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation

public struct ThemeMode{
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
    
    public init(from themeModeNetwork: ThemeModeNetwork?) {
        self.colors = themeModeNetwork?.colors.map { Colors(from: $0) } ?? Colors()
        self.fonts = themeModeNetwork?.fonts.map { Fonts(from: $0) } ?? Fonts()
        self.logos = themeModeNetwork?.logos.map { Logos(from: $0) } ?? Logos()
        self.mode = themeModeNetwork?.mode ?? ""
        self.styles = themeModeNetwork?.styles.map { Styles(from: $0) } ?? Styles()
    }
}
