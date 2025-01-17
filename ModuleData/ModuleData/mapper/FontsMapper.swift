//
//  FontsMapper.swift
//  ModuleData
//
//  Created by Juan Pasache on 17/01/25.
//

import Foundation
import Model
import ModuleNetwork

public extension Fonts {
    
    init(from fontsNetwork: FontsNetwork?) {
        self.init(
            body : fontsNetwork?.body.map { Body(from: $0) } ?? Body(),
            default : fontsNetwork?.default.map { Default(from: $0) } ?? Default(),
            heading : fontsNetwork?.heading.map { Heading(from: $0) } ?? Heading(),
            title : fontsNetwork?.title.map { Title(from: $0) } ?? Title()
        )
    }
}
