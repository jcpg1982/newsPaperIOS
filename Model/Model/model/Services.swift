//
//  ServicesNetwork.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation
import Network

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
    
    public init(from servicesNetwork: ServicesNetwork?) {
        self.service = servicesNetwork?.service ?? ""
        self.provider = servicesNetwork?.provider ?? ""
        self.isActive = servicesNetwork?.isActive ?? false
        self.settingService = servicesNetwork?.settingService.map { SettingService(from: $0) } ?? SettingService()
    }
}
