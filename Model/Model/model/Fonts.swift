//
//  FontsNetwork.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation

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
    
    public init(
        body: Body = Body(),
        `default`: Default = Default(),
        heading: Heading = Heading(),
        title: Title = Title()
    ) {
        self.body = body
        self.default = `default`
        self.heading = heading
        self.title = title
    }
}
