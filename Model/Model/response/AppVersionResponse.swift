//
//  AppVersionResponse.swift
//  Model
//
//  Created by Juan Pasache on 17/01/25.
//

import Foundation
import ModuleNetwork

public struct AppVersionResponse {
    
    let appForceUpdate: Bool?
    let appPlatform: String?
    let appVersion: String?
    let createdAt: String?
    
    public init(from appVersionResponseNetwork: AppVersionResponseNetwork?) {
        self.appForceUpdate = appVersionResponseNetwork?.appForceUpdate  ?? false
        self.appPlatform = appVersionResponseNetwork?.appPlatform ?? ""
        self.appVersion = appVersionResponseNetwork?.appVersion ?? ""
        self.createdAt = appVersionResponseNetwork?.createdAt ?? ""
    }
}
