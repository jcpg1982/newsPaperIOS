//
//  LegalDocumentsNetwork.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation

public struct LegalDocumentsNetwork : Decodable {
    public let identifier: String?
    public let isActive: Bool?
    
    enum CodingKeys: String, CodingKey {
        case identifier = "identifier"
        case isActive = "is_active"
    }
}
