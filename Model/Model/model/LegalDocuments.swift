//
//  LegalDocumentsNetwork.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation

public struct LegalDocuments : Decodable {
    let identifier: String
    let isActive: Bool
    
    public init() {
        self.identifier = ""
        self.isActive = false
    }
    
    public init(
        identifier: String = "",
        isActive: Bool = false
    ) {
        self.identifier = identifier
        self.isActive = isActive
    }
}
