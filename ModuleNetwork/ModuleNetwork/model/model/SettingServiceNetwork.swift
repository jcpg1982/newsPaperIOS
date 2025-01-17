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
    
    enum CodingKeys: String, CodingKey {
        case isShare = "is_share"
        case isDownload = "is_download"
        case maxDownloadsPerUser = "max_downloads_per_user"
    }
}
