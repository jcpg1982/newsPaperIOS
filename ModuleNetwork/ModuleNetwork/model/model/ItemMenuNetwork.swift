//
//  ItemMenuNetwork.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation

public struct ItemMenuNetwork : Decodable {
    public let itemName: String?
    public let itemUrl: String?
    public let type: String?
    
    enum CodingKeys: String, CodingKey {
        case itemName = "item_name"
        case itemUrl = "item_url"
        case type = "type"
    }
}
