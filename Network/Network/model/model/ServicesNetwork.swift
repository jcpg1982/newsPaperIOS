//
//  ServicesNetwork.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation

struct ServicesNetwork : Decodable {
    let service: String?
    let provider: String?
    let isActive: Bool?
    let settingService: SettingServiceNetwork?
}
