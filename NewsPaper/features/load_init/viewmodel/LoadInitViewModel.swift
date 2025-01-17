//
//  LoadInitViewModel.swift
//  NewsPaper
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation

class LoadInitViewModel: ObservableObject {
    
    @Published var initResponse: InitResponse?
    @Published var isLoading: Bool = false
    @Published var error: Error?
    
    private let initUseCase: InitUseCase
    
    init(initUseCase: InitUseCase = InitUseCase.shared) {
        self.initUseCase = initUseCase
        fetchInitData()
    }
    
    func fetchInitData() {
        isLoading = true
        Task {
            do {
                let response = try await initUseCase.execute()
                self.initResponse = response
                self.isLoading = false
            } catch {
                self.isLoading = false
                self.error = error
            }
        }
    }
    
}
