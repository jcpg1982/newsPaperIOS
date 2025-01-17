//
//  ItemMenuMapper.swift
//  ModuleData
//
//  Created by Juan Pasache on 17/01/25.
//

import Foundation
import Model
import ModuleNetwork

public extension ItemMenu {
    
    init(from itemMenuNetwork: ItemMenuNetwork?) {
        self.init(
            itemName : itemMenuNetwork?.itemName ?? "",
            itemUrl : itemMenuNetwork?.itemUrl ?? "",
            type : itemMenuNetwork?.type ?? ""
        )
    }
}
