//
//  AppMenuNetwork.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation
import Network

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
    
    public init(from appMenuNetwork: AppMenuNetwork?) {
        self.icon = appMenuNetwork?.icon ?? ""
        self.isActive = appMenuNetwork?.isActive ?? false
        self.itemMenuList = appMenuNetwork?.itemMenuList?.map { ItemMenu(from: $0) } ?? []
        self.menuId = appMenuNetwork?.menuId ?? ""
        self.name = appMenuNetwork?.name ?? ""
    }
}
