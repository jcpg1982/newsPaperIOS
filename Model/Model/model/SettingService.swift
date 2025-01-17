//
//  SettingServiceNetwork.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation
import Network

public struct SettingService {
    let isShare: Bool
    let isDownload: Bool
    let maxDownloadsPerUser: Int
    
    public init() {
        self.isShare = false
        self.isDownload = false
        self.maxDownloadsPerUser = 0
    }
    
    public init(from settingServiceNetwork: SettingServiceNetwork?) {
        self.isShare = settingServiceNetwork?.isShare ?? false
        self.isDownload = settingServiceNetwork?.isDownload ?? false
        self.maxDownloadsPerUser = settingServiceNetwork?.maxDownloadsPerUser ?? 0
    }
}
