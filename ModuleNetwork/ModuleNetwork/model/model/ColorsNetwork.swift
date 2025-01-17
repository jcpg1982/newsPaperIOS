//
//  ColorsNetwork.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation

public struct ColorsNetwork:Decodable{
    public let bgColorApp: String?
    public let bgColorHeader: String?
    public let primaryColor: String?
    public let colorAuthorOpinion: String?
    public let text: String?
    
    enum CodingKeys: String, CodingKey {
        case bgColorApp = "bgcolor-app"
        case bgColorHeader = "bgcolor-header"
        case primaryColor = "primary-color"
        case colorAuthorOpinion = "color-author-opinion"
        case text = "text"
    }
}
