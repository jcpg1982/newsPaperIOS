//
//  InitDataRepositoryImpl.swift
//  Data
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation

public class InitDataRepository {
    
    let initNetworkRepository = InitNetworkRepository.shared
    
    public static let shared = InitDataRepository()
    
    private init(){}
    
    public func getInit() async throws -> Result<InitResponse, any Error> {
        do {
            let networkResponse = try await initNetworkRepository.getInit()
            switch networkResponse {
            case .success(let networkResponse):
                let initResponse = InitResponse(from: networkResponse)
                return .success(initResponse)
                
            case .failure(let error):
                return .failure(error)
            }
        } catch {
            return .failure(error)
        }
    }
    
}
