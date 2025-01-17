//
//  AppVersionResponseNetwork.swift
//  ModuleNetwork
//
//  Created by Juan Pasache on 17/01/25.
//

import Foundation

public struct AppVersionResponseNetwork: Decodable {
    
    public let appForceUpdate: Bool?
    public let appPlatform: String?
    public let appVersion: String?
    public let createdAt: String?
    
    enum CodingKeys: String, CodingKey {
        case appForceUpdate = "app_force_update"
        case appPlatform = "app_platform"
        case appVersion = "app_version"
        case createdAt = "created_at"
    }
}
