//
//  HomeNetwork.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation

public struct HomeNetwork : Decodable {
    public let components: [ComponentInitHomeNetwork]?
    
    enum CodingKeys: String, CodingKey {
        case components = "components"
    }
}
