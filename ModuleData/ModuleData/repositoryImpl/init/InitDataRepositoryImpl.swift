//
//  InitDataRepositoryImpl.swift
//  Data
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation
import Model
import ModuleNetwork

public class InitDataRepositoryImpl : InitDataRepository {
    
    let initNetworkRepository = InitNetworkRepositoryImpl.shared
    
    public static let shared = InitDataRepositoryImpl()
    
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
    
    public func appVersion() async throws -> Result<AppVersionResponse, any Error> {
        do {
            let networkResponse = try await initNetworkRepository.appVersion()
            switch networkResponse {
            case .success(let networkResponse):
                let initResponse = AppVersionResponse(from: networkResponse)
                return .success(initResponse)
                
            case .failure(let error):
                return .failure(error)
            }
        } catch {
            return .failure(error)
        }
    }
    
}
