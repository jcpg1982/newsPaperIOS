//
//  AppConfigNetwork.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation

public struct AppConfig {
    let showSalaPlus: Bool
    let showSubcription: Bool
    let showMenuPodcast: Bool
    let hasSubscription: Bool
    let showMenuEpaper: Bool
    let urlSuscription: String
    let premiumIdentifier: String
    let themeModes: [ThemeMode]
    let legalDocuments: [LegalDocuments]
    
    public init() {
        self.showSalaPlus = false
        self.showSubcription = false
        self.showMenuPodcast = false
        self.hasSubscription = false
        self.showMenuEpaper = false
        self.urlSuscription = ""
        self.premiumIdentifier = ""
        self.themeModes = []
        self.legalDocuments = []
    }
    
    public init(
        showSalaPlus : Bool = false,
        showSubcription : Bool = false,
        showMenuPodcast : Bool = false,
        hasSubscription : Bool = false,
        showMenuEpaper : Bool = false,
        urlSuscription : String = "",
        premiumIdentifier: String = "",
        themeModes : [ThemeMode] = [],
        legalDocuments : [LegalDocuments] = []
    ) {
        self.showSalaPlus = showSalaPlus
        self.showSubcription = showSubcription
        self.showMenuPodcast = showMenuPodcast
        self.hasSubscription = hasSubscription
        self.showMenuEpaper = showMenuEpaper
        self.urlSuscription = urlSuscription
        self.premiumIdentifier = premiumIdentifier
        self.themeModes = themeModes
        self.legalDocuments = legalDocuments
    }
}
