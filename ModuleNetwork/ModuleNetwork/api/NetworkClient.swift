//
//  SesionNetyWork.swift
//  ModuleNetwork
//
//  Created by Juan Pasache on 17/01/25.
//

import Foundation

class NetworkClient : NetworkClientProtocol{
    
    public static let shared = NetworkClient()
    
    private init(){}
    
    func performRequest<T>(endpoint: String) async throws -> T where T : Decodable {
        
        let fullUrl = Constants.baseUrl + endpoint
        print("performRequest URL: \(fullUrl)")
        
        // Verifica que la URL sea válida
        guard let url = URL(string: fullUrl) else {
            throw URLError(.badURL)
        }
        print("performRequest url: \(url)")
        
        do {
            // Realiza la solicitud
            let (data, response) = try await URLSession.shared.data(from: url)
            
            // Verifica que la respuesta sea válida
            guard let httpResponse = response as? HTTPURLResponse,
                  (200...299).contains(httpResponse.statusCode) else {
                print("performRequest error: Bad server response")
                throw URLError(.badServerResponse)
            }
            
            // Decodifica los datos en el tipo especificado
            do {
                let decodedResponse = try JSONDecoder().decode(T.self, from: data)
                print("performRequest decodedResponse: \(decodedResponse)")
                return decodedResponse
            } catch {
                print("performRequest error: Cannot parse response")
                throw URLError(.cannotParseResponse)
            }
        } catch let error as URLError {
            print("performRequest error: \(error)")
            throw error
        } catch {
            print("performRequest error: Unknown error")
            throw URLError(.unknown)
        }
    }
    
    
}
