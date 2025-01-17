//
//  InitDataRepositoryImpl.swift
//  Data
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation
import Model

public protocol InitDataRepository {
    
    func getInit() async throws -> Result<InitResponse, any Error>
    func appVersion() async throws -> Result<AppVersionResponse, Error>
}
