//
//  HeadingNetwork.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation

public struct HeadingNetwork : Decodable {
    public let family: String?
    public let weight: String?
    
    enum CodingKeys: String, CodingKey {
        case family = "family"
        case weight = "weight"
    }
}
