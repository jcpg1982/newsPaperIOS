//
//  AppConfigNetwork.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation

struct AppConfigNetwork:Decodable {
    let showSalaPlus: Bool?
    let showSubcription: Bool?
    let showMenuPodcast: Bool?
    let hasSubscription: Bool?
    let showMenuEpaper: Bool?
    let urlSuscription: String?
    let premiumIdentifier: String?
    let themeModes: [ThemeModeNetwork]?
    let legalDocuments: [LegalDocumentsNetwork]?
}
