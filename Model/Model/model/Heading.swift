//
//  HeadingNetwork.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation

public struct Heading {
    let family: String
    let weight: String
    
    public init() {
        self.family = ""
        self.weight = ""
    }
    
    public init(from headingNetwork: HeadingNetwork?) {
        self.family = headingNetwork?.family ?? ""
        self.weight = headingNetwork?.weight ?? ""
    }
}
