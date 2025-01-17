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
    
    public init(from logosNetwork: LogosNetwork?) {
        self.logo = logosNetwork?.logo ?? ""
        self.logoMenu = logosNetwork?.logoMenu ?? ""
        self.logoLoader = logosNetwork?.logoLoader ?? ""
        self.logoLoaderBg = logosNetwork?.logoLoaderBg ?? ""
    }
}
