//
//  ComponentInitHomeNetwork.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation

public struct ComponentInitHome {
    let componentType: String
    let identifier: String
    let componentDesign: String
    
    public init() {
        self.componentType = ""
        self.identifier = ""
        self.componentDesign = ""
    }
    
    public init(from componentNetwork: ComponentInitHomeNetwork?) {
        self.componentType = componentNetwork?.componentType ?? ""
        self.identifier = componentNetwork?.identifier ?? ""
        self.componentDesign = componentNetwork?.componentDesign ?? ""
    }
}
