//
//  InitNetworkRepositoryImpl.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation

class InitNetworkRepositoryImpl: InitNetworkRepository {
    
    private let networkClient: NetworkClient
    
    init(networkClient: NetworkClient) {
        self.networkClient = networkClient
    }
    
    func getInit(completion: @escaping (Result<InitResponseNetwork, any Error>) -> Void) {
        networkClient.performRequest(
            endpoint: Constants.Api.INIT,
            method: "GET",
            parameters: nil,
            headers: nil,
            completion: completion
        )
    }
    
    
}
