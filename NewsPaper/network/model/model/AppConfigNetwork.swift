//
//  AppConfigNetwork.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation

public struct AppConfigNetwork:Decodable {
    public let showSalaPlus: Bool?
    public let showSubcription: Bool?
    public let showMenuPodcast: Bool?
    public let hasSubscription: Bool?
    public let showMenuEpaper: Bool?
    public let urlSuscription: String?
    public let premiumIdentifier: String?
    public let themeModes: [ThemeModeNetwork]?
    public let legalDocuments: [LegalDocumentsNetwork]?
}
