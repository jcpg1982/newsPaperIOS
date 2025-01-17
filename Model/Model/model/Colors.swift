//
//  ColorsNetwork.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation
import ModuleNetwork

public struct Colors:Decodable{
    let bgColorApp: String
    let bgColorHeader: String
    let primaryColor: String
    let colorAuthorOpinion: String
    let text: String
    
    public init() {
        self.bgColorApp = ""
        self.bgColorHeader = ""
        self.primaryColor = ""
        self.colorAuthorOpinion = ""
        self.text = ""
    }
    
    public init(from colorsNetwork: ColorsNetwork?) {
        self.bgColorApp = colorsNetwork?.bgColorApp ?? ""
        self.bgColorHeader = colorsNetwork?.bgColorHeader ?? ""
        self.primaryColor = colorsNetwork?.primaryColor ?? ""
        self.colorAuthorOpinion = colorsNetwork?.colorAuthorOpinion ?? ""
        self.text = colorsNetwork?.text ?? ""
    }
}
