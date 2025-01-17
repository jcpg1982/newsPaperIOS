//
//  HeadingMapper.swift
//  ModuleData
//
//  Created by Juan Pasache on 17/01/25.
//

import Foundation
import Model
import ModuleNetwork

public extension Heading {
    
    init(from headingNetwork: HeadingNetwork?) {
        self.init(
            family : headingNetwork?.family ?? "",
            weight : headingNetwork?.weight ?? ""
        )
    }
}
