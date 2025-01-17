//
//  ServicesMapper.swift
//  ModuleData
//
//  Created by Juan Pasache on 17/01/25.
//

import Foundation
import Model
import ModuleNetwork

public extension Services {
    
    init(from servicesNetwork: ServicesNetwork?) {
        self.init(
            service : servicesNetwork?.service ?? "",
            provider : servicesNetwork?.provider ?? "",
            isActive : servicesNetwork?.isActive ?? false,
            settingService : servicesNetwork?.settingService.map { SettingService(from: $0) } ?? SettingService()
        )
    }
}
