//
//  AppVersionResponse.swift
//  Model
//
//  Created by Juan Pasache on 17/01/25.
//

import Foundation

public struct AppVersionResponse {
    
    let appForceUpdate: Bool
    let appPlatform: String
    let appVersion: String
    let createdAt: String
    
    public init(
        appForceUpdate: Bool = false,
        appPlatform: String = "",
        appVersion: String = "",
        createdAt: String = ""
    ){
        self.appForceUpdate = appForceUpdate
        self.appPlatform = appPlatform
        self.appVersion = appVersion
        self.createdAt = createdAt
    }
}
