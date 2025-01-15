//
//  InitNetworkRepository.swift
//  Network
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation

protocol InitNetworkRepository{
    
    func getInit(completion:@escaping(Result<InitResponseNetwork, Error>)->Void)
    //func appVersionAndroid(): Flow<Resource<AppVersionAndroidResponse>>
}
