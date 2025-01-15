//
//  ThemeModeNetwork.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation

struct ThemeModeNetwork : Decodable{
    let colors: ColorsNetwork?
    let fonts: FontsNetwork?
    let logos: LogosNetwork?
    let mode: String?
    let styles: StylesNetwork?
}
