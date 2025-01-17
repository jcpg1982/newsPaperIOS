//
//  DefaultNetwork.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation
import Network

public struct Default{
    let family: String
    let weight: String
    
    public init() {
        self.family = ""
        self.weight = ""
    }
    
    public init(from defaultNetwork: DefaultNetwork?) {
        self.family = defaultNetwork?.family ?? ""
        self.weight = defaultNetwork?.weight ?? ""
    }
}
