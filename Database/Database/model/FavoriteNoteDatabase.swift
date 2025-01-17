//
//  FavoriteNoteDatabase.swift
//  Database
//
//  Created by Juan Pasache on 17/01/25.
//

import Foundation
import SwiftData

@Model
public class FavoriteNoteDatabase {
    @Attribute(.unique)
    var idServer: String
    var name: String
    var section: String
    var uriImg: String
    
    init(
        idServer: String = "",
        name: String = "",
        section: String = "",
        uriImg: String = ""
    ) {
        self.idServer = idServer
        self.name = name
        self.section = section
        self.uriImg = uriImg
    }
}
