//
//  ThemeModeNetwork.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation

public struct ThemeModeNetwork : Decodable{
    public let colors: ColorsNetwork?
    public let fonts: FontsNetwork?
    public let logos: LogosNetwork?
    public let mode: String?
    public let styles: StylesNetwork?
}
