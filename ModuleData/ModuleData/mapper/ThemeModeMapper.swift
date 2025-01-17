//
//  ThemeModeMapper.swift
//  ModuleData
//
//  Created by Juan Pasache on 17/01/25.
//

import Foundation
import Model
import ModuleNetwork

public extension ThemeMode {
    
    init(from themeModeNetwork: ThemeModeNetwork?) {
        self.init(
            colors : themeModeNetwork?.colors.map { Colors(from: $0) } ?? Colors(),
            fonts : themeModeNetwork?.fonts.map { Fonts(from: $0) } ?? Fonts(),
            logos : themeModeNetwork?.logos.map { Logos(from: $0) } ?? Logos(),
            mode : themeModeNetwork?.mode ?? "",
            styles : themeModeNetwork?.styles.map { Styles(from: $0) } ?? Styles()
        )
    }
}
