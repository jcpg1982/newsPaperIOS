//
//  FontsNetwork.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation

public struct FontsNetwork : Decodable{
    public let body: BodyNetwork?
    public let `default`: DefaultNetwork?
    public let heading: HeadingNetwork?
    public let title: TitleNetwork?
}
