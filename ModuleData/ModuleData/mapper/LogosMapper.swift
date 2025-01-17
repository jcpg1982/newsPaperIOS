//
//  LogosMapper.swift
//  ModuleData
//
//  Created by Juan Pasache on 17/01/25.
//

import Foundation
import Model
import ModuleNetwork

public extension Logos {
    
    init(from logosNetwork: LogosNetwork?) {
        self.init(
            logo : logosNetwork?.logo ?? "",
            logoMenu : logosNetwork?.logoMenu ?? "",
            logoLoader : logosNetwork?.logoLoader ?? "",
            logoLoaderBg : logosNetwork?.logoLoaderBg ?? ""
        )
    }
}
