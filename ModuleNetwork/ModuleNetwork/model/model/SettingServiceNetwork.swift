//
//  SettingServiceNetwork.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation

public struct SettingServiceNetwork : Decodable {
    public let isShare: Bool?
    public let isDownload: Bool?
    public let maxDownloadsPerUser: Int?
}
