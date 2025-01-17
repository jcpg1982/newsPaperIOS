//
//  HomeMapper.swift
//  ModuleData
//
//  Created by Juan Pasache on 17/01/25.
//

import Foundation
import Model
import ModuleNetwork

public extension Home {
    
    init(from homeNetwork: HomeNetwork?) {
        self.init(
            components : homeNetwork?.components?.map { ComponentInitHome(from: $0) } ?? []
        )
    }
    
}
