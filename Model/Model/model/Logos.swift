//
//  LogosNetwork.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation

public struct Logos {
    let logo: String
    let logoMenu: String
    let logoLoader: String
    let logoLoaderBg: String
    
    public init() {
        self.logo = ""
        self.logoMenu = ""
        self.logoLoader = ""
        self.logoLoaderBg = ""
    }
    
    public init(
        logo: String = "",
        logoMenu: String = "",
        logoLoader: String = "",
        logoLoaderBg: String = ""
    ) {
        self.logo = logo
        self.logoMenu = logoMenu
        self.logoLoader = logoLoader
        self.logoLoaderBg = logoLoaderBg
    }
}
