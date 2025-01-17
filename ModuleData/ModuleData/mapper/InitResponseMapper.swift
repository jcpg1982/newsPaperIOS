//
//  InitResponseMapper.swift
//  ModuleData
//
//  Created by Juan Pasache on 17/01/25.
//

import Foundation
import Model
import ModuleNetwork

extension InitResponse {
    
    public init(from networkResponse: InitResponseNetwork?) {
        self.init(
            appConfig  : networkResponse?.appConfig.map { AppConfig(from: $0) } ?? AppConfig(),
            appMenu : networkResponse?.appMenu?.map { AppMenu(from: $0) } ?? [],
            pages : networkResponse?.pages.map { Pages(from: $0) } ?? Pages(),
            services : networkResponse?.services?.map { Services(from: $0) } ?? []
        )
    }
}
