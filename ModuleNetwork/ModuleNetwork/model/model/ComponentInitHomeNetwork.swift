//
//  ComponentInitHomeNetwork.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation

public struct ComponentInitHomeNetwork : Decodable {
    public let componentType: String?
    public let identifier: String?
    public let componentDesign: String?
    
    enum CodingKeys: String, CodingKey {
        case componentType = "component_type"
        case identifier = "identifier"
        case componentDesign = "component_design"
    }
}
