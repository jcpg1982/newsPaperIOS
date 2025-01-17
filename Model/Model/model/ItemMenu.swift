//
//  ItemMenuNetwork.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation

public struct ItemMenu {
    let itemName: String
    let itemUrl: String
    let type: String
    
    public init() {
        self.itemName = ""
        self.itemUrl = ""
        self.type = ""
    }
    
    public init(
        itemName: String = "",
        itemUrl: String = "",
        type: String = ""
    ) {
        self.itemName = itemName
        self.itemUrl = itemUrl
        self.type = type
    }
}
