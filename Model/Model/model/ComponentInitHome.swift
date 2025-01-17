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
    
    public init(
        componentType: String = "",
        identifier: String = "",
        componentDesign: String = ""
    ) {
        self.componentType = componentType
        self.identifier = identifier
        self.componentDesign = componentDesign
    }
}
