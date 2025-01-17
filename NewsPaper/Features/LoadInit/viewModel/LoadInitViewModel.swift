//
//  LoadInitViewModel.swift
//  NewsPaper
//
//  Created by Juan Pasache on 15/01/25.
//

import Foundation
import Model
import Domain

class LoadInitViewModel: ObservableObject {
    
    @Published var initResponse: InitResponse?
    @Published var appVersionResponse: AppVersionResponse?
    @Published var isLoading: Bool = false
    @Published var error: Error?
    
    private let initUseCase = InitUseCase.shared
    private let appVersionUseCase = AppVersionUseCase.shared
    
    init() {
        fetchInitData()
    }
    
    func fetchInitData() {
        isLoading = true
        Task {@MainActor in
            updateState(isLoading: true, error: nil)
            defer { updateState(isLoading: false) }
            do {
                let response = try await initUseCase.execute()
                self.initResponse = response
                fetchAppVersion()
            } catch {
                updateState(error: error)
                print("Error fetching init data: \(error)")
            }
        }
        
        func fetchAppVersion() {
            Task { @MainActor in
                updateState(isLoading: true, error: nil)
                defer { updateState(isLoading: false) }
                do {
                    let response = try await self.appVersionUseCase.execute()
                    self.appVersionResponse = response
                } catch {
                    updateState(error: error)
                    print("Error fetching app version: \(error)")
                }
            }
        }
    }
    
    private func updateState(isLoading: Bool? = nil, error: Error? = nil) {
        if let isLoading = isLoading {
            self.isLoading = isLoading
        }
        if let error = error {
            self.error = error
        }
    }
}
