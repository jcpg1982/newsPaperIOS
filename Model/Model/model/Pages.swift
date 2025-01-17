//
//  PagesNetwork.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation
import Network

public struct Pages {
    let home: Home
    
    public init() {
        self.home = Home()
    }
    
    public init(from pagesNetwork: PagesNetwork?) {
        self.home = pagesNetwork?.home.map { Home(from: $0) } ?? Home()
    }
}
