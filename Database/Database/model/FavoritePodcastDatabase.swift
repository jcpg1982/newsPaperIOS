//  FavoriteNoteDatabase.swift
//  Database
//
//  Created by Juan Pasache on 17/01/25.
//

import Foundation
import SwiftData

@Model
public class FavoritePodcastDatabase {
    @Attribute(.unique)
    var idServer: String
    var name: String
    var section: String
    var uriImg: String
    var uriMedia: String
    var timeStr: String
    var shared: String
    
    init(
        idServer: String = "",
        name: String = "",
        section: String = "",
        uriImg: String = "",
        uriMedia: String = "",
        timeStr: String = "",
        shared: String = ""
    ) {
        self.idServer = idServer
        self.name = name
        self.section = section
        self.uriImg = uriImg
        self.uriMedia = uriMedia
        self.timeStr = timeStr
        self.shared = shared
    }
}
