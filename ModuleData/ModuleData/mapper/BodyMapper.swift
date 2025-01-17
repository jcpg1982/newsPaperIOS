//
//  BodyMapper.swift
//  ModuleData
//
//  Created by Juan Pasache on 17/01/25.
//

import Foundation
import Model
import ModuleNetwork

extension Body {
    
    public init(from bodyNetwork: BodyNetwork?) {
        self.init(
            family : bodyNetwork?.family ?? "",
            weight : bodyNetwork?.weight ?? ""
        )
    }
}
