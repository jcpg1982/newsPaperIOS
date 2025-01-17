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
    
    public init(from networkResponse: InitResponseNetwork?) {
        self.appConfig = networkResponse?.appConfig.map { AppConfig(from: $0) } ?? AppConfig()
        self.appMenu = networkResponse?.appMenu?.map { AppMenu(from: $0) } ?? []
        self.pages = networkResponse?.pages.map { Pages(from: $0) } ?? Pages()
        self.services = networkResponse?.services?.map { Services(from: $0) } ?? []
    }
}
