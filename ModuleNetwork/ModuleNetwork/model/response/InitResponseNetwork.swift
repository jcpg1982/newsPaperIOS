//
//  InitResponseNetwork.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation

public struct InitResponseNetwork: Decodable {
    public let appConfig: AppConfigNetwork?
    public let appMenu: [AppMenuNetwork]?
    public let pages: PagesNetwork?
    public let services: [ServicesNetwork]?
}
