//
//  ServicesNetwork.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation

public struct Services {
    let service: String
    let provider: String
    let isActive: Bool
    let settingService: SettingService
    
    public init() {
        self.service = ""
        self.provider = ""
        self.isActive = false
        self.settingService = SettingService()
    }
    
    public init(
        service: String = "",
        provider: String = "",
        isActive: Bool = false,
        settingService: SettingService = SettingService()
    ) {
        self.service = service
        self.provider = provider
        self.isActive = isActive
        self.settingService = settingService
    }
}
