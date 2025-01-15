//
//  AppMenuNetwork.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation

struct AppMenuNetwork :Decodable {
    let icon: String?
    let isActive: Bool?
    let itemMenuList: [ItemMenuNetwork]?
    let menuId: String?
    let name: String?
}
