//
//  HeadingNetwork.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation
import ModuleNetwork

public struct Title {
    let family: String
    let weight: String
    
    public init() {
        self.family = ""
        self.weight = ""
    }
    
    public init(from titleNetwork: TitleNetwork?) {
        self.family = titleNetwork?.family ?? ""
        self.weight = titleNetwork?.weight ?? ""
    }
}
