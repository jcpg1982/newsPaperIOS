//
//  AppMenuNetwork.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation

public struct AppMenuNetwork :Decodable {
    public let icon: String?
    public let isActive: Bool?
    public let itemMenuList: [ItemMenuNetwork]?
    public let menuId: String?
    public let name: String?
}
