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
}
