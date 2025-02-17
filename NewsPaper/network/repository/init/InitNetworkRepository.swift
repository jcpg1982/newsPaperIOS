//
//  InitNetworkRepositoryImpl.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation

public class InitNetworkRepository {
    
    private let networkClient = NetworkClient.shared
    
    public static let shared = InitNetworkRepository()
    
    private init(){}
    
    public func getInit() async throws -> Result<InitResponseNetwork, Error> {
        do{
            let response : InitResponseNetwork = try await networkClient.performRequest(endpoint: Constants.Api.INIT)
            return .success(response)
        }catch{
            return  .failure(error)
        }
    }
    
}
