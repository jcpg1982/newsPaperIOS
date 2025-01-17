//
//  DefaultMapper.swift
//  ModuleData
//
//  Created by Juan Pasache on 17/01/25.
//

import Foundation
import Model
import ModuleNetwork

public extension Default {
    
    init(from defaultNetwork: DefaultNetwork?) {
        self.init(
            family : defaultNetwork?.family ?? "",
            weight : defaultNetwork?.weight ?? ""
        )
    }
}
