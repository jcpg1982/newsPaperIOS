//
//  InitNetworkRepositoryImpl.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation

public protocol InitNetworkRepository {
    
    func getInit() async throws -> Result<InitResponseNetwork, Error>
    func appVersion() async throws -> Result<AppVersionResponseNetwork, Error>
}
