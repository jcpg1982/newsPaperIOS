//
//  AppConfigNetwork.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation
import Network

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
    
    public init(from appConfigNetwork: AppConfigNetwork?) {
        self.showSalaPlus = appConfigNetwork?.showSalaPlus ?? false
        self.showSubcription = appConfigNetwork?.showSubcription ?? false
        self.showMenuPodcast = appConfigNetwork?.showMenuPodcast ?? false
        self.hasSubscription = appConfigNetwork?.hasSubscription ?? false
        self.showMenuEpaper = appConfigNetwork?.showMenuEpaper ?? false
        self.urlSuscription = appConfigNetwork?.urlSuscription ?? ""
        self.premiumIdentifier = appConfigNetwork?.premiumIdentifier ?? ""
        self.themeModes = appConfigNetwork?.themeModes?.map { ThemeMode(from: $0) } ?? []
        self.legalDocuments = appConfigNetwork?.legalDocuments?.map { LegalDocuments(from: $0) } ?? []
    }
}
