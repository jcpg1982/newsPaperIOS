//
//  AppVersionResponseMapper.swift
//  ModuleData
//
//  Created by Juan Pasache on 17/01/25.
//

import Foundation
import Model
import ModuleNetwork

public extension AppVersionResponse {
    
    init(from appVersionResponseNetwork: AppVersionResponseNetwork?) {
        self.init(
            appForceUpdate: appVersionResponseNetwork?.appForceUpdate ?? false,
            appPlatform: appVersionResponseNetwork?.appPlatform ?? "",
            appVersion: appVersionResponseNetwork?.appVersion ?? "",
            createdAt: appVersionResponseNetwork?.createdAt ?? ""
        )
    }
}

