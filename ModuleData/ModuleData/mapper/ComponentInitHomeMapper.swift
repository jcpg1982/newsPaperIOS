//
//  ComponentInitHomeMapper.swift
//  ModuleData
//
//  Created by Juan Pasache on 17/01/25.
//

import Foundation
import Model
import ModuleNetwork

public extension ComponentInitHome {
    
    init(from componentNetwork: ComponentInitHomeNetwork?) {
        self.init(
            componentType : componentNetwork?.componentType ?? "",
            identifier : componentNetwork?.identifier ?? "",
            componentDesign : componentNetwork?.componentDesign ?? ""
        )
    }
}
