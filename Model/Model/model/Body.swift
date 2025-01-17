//
//  BodyNetwork.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation
import ModuleNetwork

public struct Body{
    let family: String
    let weight: String
    
    public init() {
        self.family = ""
        self.weight = ""
    }
    
    public init(from bodyNetwork: BodyNetwork?) {
        self.family = bodyNetwork?.family ?? ""
        self.weight = bodyNetwork?.weight ?? ""
    }
}
