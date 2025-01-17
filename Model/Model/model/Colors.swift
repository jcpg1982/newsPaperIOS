//
//  ColorsNetwork.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation

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
    
    public init(
        bgColorApp: String = "",
        bgColorHeader: String = "",
        primaryColor: String = "",
        colorAuthorOpinion: String = "",
        text: String = ""
    ) {
        self.bgColorApp = bgColorApp
        self.bgColorHeader = bgColorHeader
        self.primaryColor = primaryColor
        self.colorAuthorOpinion = colorAuthorOpinion
        self.text = text
    }
}
