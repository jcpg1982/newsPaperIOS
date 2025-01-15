//
//  SettingServiceNetwork.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation

struct SettingServiceNetwork : Decodable {
    let isShare: Bool?
    let isDownload: Bool?
    let maxDownloadsPerUser: Int?
}
