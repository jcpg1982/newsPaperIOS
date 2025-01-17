//
//  ServicesNetwork.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation

public struct ServicesNetwork : Decodable {
    public let service: String?
    public let provider: String?
    public let isActive: Bool?
    public let settingService: SettingServiceNetwork?
    
    enum CodingKeys: String, CodingKey {
        case service = "service"
        case provider = "provider"
        case isActive = "is_active"
        case settingService = "setting_service"
    }
}
