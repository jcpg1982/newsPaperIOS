//
//  DefaultNetwork.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation

public struct Default{
    let family: String
    let weight: String
    
    public init() {
        self.family = ""
        self.weight = ""
    }
    
    public init(
        family: String = "",
        weight: String = ""
    ) {
        self.family = family
        self.weight = weight
    }
}
