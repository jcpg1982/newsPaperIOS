//
//  AppMenuNetwork.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation

public struct AppMenuNetwork :Decodable {
    public let icon: String?
    public let isActive: Bool?
    public let itemMenuList: [ItemMenuNetwork]?
    public let menuId: String?
    public let name: String?
    
    enum CodingKeys: String, CodingKey {
        case icon = "icon"
        case isActive = "is_active"
        case itemMenuList = "item_menu_list"
        case menuId = "menu_id"
        case name = "name"
    }
}
