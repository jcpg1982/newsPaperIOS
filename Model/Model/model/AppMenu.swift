//
//  AppMenuNetwork.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation

public struct AppMenu {
    let icon: String
    let isActive: Bool
    let itemMenuList: [ItemMenu]
    let menuId: String
    let name: String
    
    public init() {
        self.icon = ""
        self.isActive = false
        self.itemMenuList = []
        self.menuId = ""
        self.name = ""
    }
    
    public init(
        icon: String = "",
        isActive: Bool = false,
        itemMenuList: [ItemMenu] = [],
        menuId: String = "",
        name: String = ""
    ) {
        self.icon = icon
        self.isActive = isActive
        self.itemMenuList = itemMenuList
        self.menuId = menuId
        self.name = menuId
    }
}
