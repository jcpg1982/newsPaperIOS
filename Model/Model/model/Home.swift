//
//  HomeNetwork.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation

public struct Home {
    let components: [ComponentInitHome]
    
    public init() {
        self.components = []
    }
    
    public init(
        components: [ComponentInitHome] = []
    ) {
        self.components = components
    }
}
