//
//  InitResponseNetwork.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation

public struct InitResponse {
    let appConfig: AppConfig
    let appMenu: [AppMenu]
    let pages: Pages
    let services: [Services]
    
    public init(
        appConfig: AppConfig = AppConfig(),
        appMenu: [AppMenu] = [],
        pages: Pages = Pages(),
        services: [Services] = []
    ) {
        self.appConfig = appConfig
        self.appMenu = appMenu
        self.pages = pages
        self.services = services
    }

}
