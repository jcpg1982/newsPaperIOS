//
//  StylesNetwork.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation
import Network

public struct Styles {
    let css: String
    
    public init() {
        self.css = ""
    }
    
    public init(from stylesNetwork: StylesNetwork?) {
        self.css = stylesNetwork?.css ?? ""
    }
}
