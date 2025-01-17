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
    
    public init(from legalDocumentsNetwork: LegalDocumentsNetwork?) {
        self.identifier = legalDocumentsNetwork?.identifier ?? ""
        self.isActive = legalDocumentsNetwork?.isActive ?? false
    }
}
