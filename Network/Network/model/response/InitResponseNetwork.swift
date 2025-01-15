//
//  InitResponseNetwork.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation

struct InitResponseNetwork: Decodable {
    let appConfig: AppConfigNetwork?
    let appMenu: [AppMenuNetwork]?
    let pages: PagesNetwork?
    let services: [ServicesNetwork]?
}
