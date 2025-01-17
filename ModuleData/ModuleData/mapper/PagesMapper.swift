//
//  PagesMapper.swift
//  ModuleData
//
//  Created by Juan Pasache on 17/01/25.
//

import Foundation
import Model
import ModuleNetwork

public extension Pages {
    
    init(from pagesNetwork: PagesNetwork?) {
        self.init(
            home : pagesNetwork?.home.map { Home(from: $0) } ?? Home()
        )
    }
}
