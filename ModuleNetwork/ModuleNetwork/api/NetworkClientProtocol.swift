//
//  NetworkClient.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation

public protocol NetworkClientProtocol {
    
    func performRequest<T: Decodable>(endpoint: String) async throws -> T
}
