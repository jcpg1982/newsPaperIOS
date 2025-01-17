//
//  InitNetworkRepositoryImpl.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation

public class InitNetworkRepositoryImpl : InitNetworkRepository {
    
    private let networkClient = NetworkClient.shared
    
    public static let shared = InitNetworkRepositoryImpl()
    
    private init(){}
    
    public func getInit() async throws -> Result<InitResponseNetwork, Error> {
        do{
            let response : InitResponseNetwork = try await networkClient.performRequest(endpoint: Constants.Api.INIT)
            return .success(response)
        }catch{
            return  .failure(error)
        }
    }
    
    public func appVersion() async throws -> Result<AppVersionResponseNetwork, any Error> {
        do{
            let response : AppVersionResponseNetwork = try await networkClient.performRequest(endpoint: Constants.Api.LAST_VERSION)
            return .success(response)
        }catch{
            return  .failure(error)
        }
    }
    
}
