//
//  PagesNetwork.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation

public struct Pages {
    let home: Home
    
    public init() {
        self.home = Home()
    }
    
    public init(
        home: Home = Home()
    ) {
        self.home = home
    }
}
