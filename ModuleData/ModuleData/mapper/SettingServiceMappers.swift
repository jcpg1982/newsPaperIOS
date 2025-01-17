//
//  SettingServiceMappers.swift
//  ModuleData
//
//  Created by Juan Pasache on 17/01/25.
//

import Foundation
import Model
import ModuleNetwork

public extension SettingService {
    
    init(from settingServiceNetwork: SettingServiceNetwork?) {
        self.init(
            isShare : settingServiceNetwork?.isShare ?? false,
            isDownload : settingServiceNetwork?.isDownload ?? false,
            maxDownloadsPerUser : settingServiceNetwork?.maxDownloadsPerUser ?? 0
        )
    }
}
