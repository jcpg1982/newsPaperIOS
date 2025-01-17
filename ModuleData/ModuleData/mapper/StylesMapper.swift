//
//  StylesMapper.swift
//  ModuleData
//
//  Created by Juan Pasache on 17/01/25.
//

import Foundation
import Model
import ModuleNetwork

public extension Styles {
    
    init(from stylesNetwork: StylesNetwork?) {
        self.init(
            css : stylesNetwork?.css ?? ""
        )
    }
}
