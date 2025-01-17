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
    
    enum CodingKeys: String, CodingKey {
        case showSalaPlus = "show_sala_plus"
        case showSubcription = "show_subcription"
        case showMenuPodcast = "show_menu_podcast"
        case hasSubscription = "has_subscription"
        case showMenuEpaper = "show_menu_epaper"
        case urlSuscription = "url_suscription"
        case premiumIdentifier = "premium_identifier"
        case themeModes = "theme_modes"
        case legalDocuments = "legal_documents"
    }
}
