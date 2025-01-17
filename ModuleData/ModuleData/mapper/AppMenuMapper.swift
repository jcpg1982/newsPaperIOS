//
//  AppMenuMapper.swift
//  ModuleData
//
//  Created by Juan Pasache on 17/01/25.
//

import Foundation
import Model
import ModuleNetwork

extension AppMenu {
    
    public init(from appMenuNetwork: AppMenuNetwork?) {
        self.init(
            icon : appMenuNetwork?.icon ?? "",
            isActive : appMenuNetwork?.isActive ?? false,
            itemMenuList : appMenuNetwork?.itemMenuList?.map { ItemMenu(from: $0) } ?? [],
            menuId : appMenuNetwork?.menuId ?? "",
            name : appMenuNetwork?.name ?? ""
        )
    }
    
}
