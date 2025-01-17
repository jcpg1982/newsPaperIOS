//
//  FontsNetwork.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation
import ModuleNetwork

public struct Fonts{
    let body: Body
    let `default`: Default
    let heading: Heading
    let title: Title
    
    public init() {
        self.body = Body()
        self.default = Default()
        self.heading = Heading()
        self.title = Title()
    }
    
    public init(from fontsNetwork: FontsNetwork?) {
        self.body = fontsNetwork?.body.map { Body(from: $0) } ?? Body()
        self.default = fontsNetwork?.`default`.map { Default(from: $0) } ?? Default()
        self.heading = fontsNetwork?.heading.map { Heading(from: $0) } ?? Heading()
        self.title = fontsNetwork?.title.map { Title(from: $0) } ?? Title()
    }
}
