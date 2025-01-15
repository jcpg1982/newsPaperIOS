//
//  FontsNetwork.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation

struct FontsNetwork : Decodable{
    let body: BodyNetwork?
    let `default`: DefaultNetwork?
    let heading: HeadingNetwork?
    let title: TitleNetwork?
}
