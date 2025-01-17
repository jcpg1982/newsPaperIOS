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
    
    public init(from itemMenuNetwork: ItemMenuNetwork?) {
        self.itemName = itemMenuNetwork?.itemName ?? ""
        self.itemUrl = itemMenuNetwork?.itemUrl ?? ""
        self.type = itemMenuNetwork?.type ?? ""
    }
}
