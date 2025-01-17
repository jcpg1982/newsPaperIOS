//
//  AppConfigMapper.swift
//  ModuleData
//
//  Created by Juan Pasache on 17/01/25.
//

import Foundation
import Model
import ModuleNetwork

public extension AppConfig {
    
    init(from appConfigNetwork: AppConfigNetwork?) {
        self.init(
            showSalaPlus : appConfigNetwork?.showSalaPlus ?? false,
            showSubcription : appConfigNetwork?.showSubcription ?? false,
            showMenuPodcast : appConfigNetwork?.showMenuPodcast ?? false,
            hasSubscription : appConfigNetwork?.hasSubscription ?? false,
            showMenuEpaper : appConfigNetwork?.showMenuEpaper ?? false,
            urlSuscription : appConfigNetwork?.urlSuscription ?? "",
            premiumIdentifier : appConfigNetwork?.premiumIdentifier ?? "",
            themeModes : appConfigNetwork?.themeModes?.map { ThemeMode(from: $0) } ?? [],
            legalDocuments : appConfigNetwork?.legalDocuments?.map { LegalDocuments(from: $0) } ?? []
        )
    }
}
