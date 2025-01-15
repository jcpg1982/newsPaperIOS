//
//  NetworkClient.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation

protocol NetworkClient {
    func performRequest<T: Decodable>(
        endpoint: String,
        method: String,
        parameters: [String: Any]?,
        headers: [String: String]?,
        completion: @escaping (Result<T, Error>) -> Void
    )
}
