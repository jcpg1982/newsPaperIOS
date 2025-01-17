//
//  LegalDocumentsMapper.swift
//  ModuleData
//
//  Created by Juan Pasache on 17/01/25.
//

import Foundation
import Model
import ModuleNetwork

public extension LegalDocuments {
    
    init(from legalDocumentsNetwork: LegalDocumentsNetwork?) {
        self.init(
            identifier : legalDocumentsNetwork?.identifier ?? "",
            isActive : legalDocumentsNetwork?.isActive ?? false
        )
    }
}
