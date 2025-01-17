//
//  TitleMapper.swift
//  ModuleData
//
//  Created by Juan Pasache on 17/01/25.
//

import Foundation
import Model
import ModuleNetwork


public extension Title {
    
    init(from titleNetwork: TitleNetwork?) {
        self.init(
            family : titleNetwork?.family ?? "",
            weight : titleNetwork?.weight ?? ""
        )
    }
}
