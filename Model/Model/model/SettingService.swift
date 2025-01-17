//
//  SettingServiceNetwork.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation

public struct SettingService {
    let isShare: Bool
    let isDownload: Bool
    let maxDownloadsPerUser: Int
    
    public init() {
        self.isShare = false
        self.isDownload = false
        self.maxDownloadsPerUser = 0
    }
    
    public init(
        isShare: Bool = false,
        isDownload: Bool = false,
        maxDownloadsPerUser: Int = 0
    ) {
        self.isShare = isShare
        self.isDownload = isDownload
        self.maxDownloadsPerUser = maxDownloadsPerUser
    }
}
