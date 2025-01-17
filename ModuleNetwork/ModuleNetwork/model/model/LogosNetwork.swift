//
//  LogosNetwork.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation

public struct LogosNetwork : Decodable {
    public let logo: String?
    public let logoMenu: String?
    public let logoLoader: String?
    public let logoLoaderBg: String?
    
    enum CodingKeys: String, CodingKey {
        case logo = "logo"
        case logoMenu = "logo_menu"
        case logoLoader = "logo_loader"
        case logoLoaderBg = "logo_loaderbg"
    }
}
