//
//  InitUseCase.swift
//  Domain
//
//  Created by Juan Pasache on 16/01/25.
//

import Foundation
import Model
import ModuleData

public class InitUseCase {
    
    private let initDataRepository = InitDataRepository.shared
    
    public static let shared = InitUseCase()
    
    private init() { }
    
    public func execute() async throws -> InitResponse {
        let networkResult = try await initDataRepository.getInit()
        switch networkResult {
        case .success(let networkResponse):
            return networkResponse
            
        case .failure(let error):
            throw error
        }
    }
    
}

