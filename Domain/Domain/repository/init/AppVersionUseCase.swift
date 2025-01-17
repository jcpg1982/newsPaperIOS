//
//  InitUseCase.swift
//  Domain
//
//  Created by Juan Pasache on 16/01/25.
//

import Foundation
import Model
import ModuleData

public class AppVersionUseCase {
    
    private let initDataRepository = InitDataRepositoryImpl.shared
    
    public static let shared = AppVersionUseCase()
    
    private init() { }
    
    public func execute() async throws -> AppVersionResponse {
        let networkResult = try await initDataRepository.appVersion()
        switch networkResult {
        case .success(let networkResponse):
            return networkResponse
            
        case .failure(let error):
            throw error
        }
    }
    
}

