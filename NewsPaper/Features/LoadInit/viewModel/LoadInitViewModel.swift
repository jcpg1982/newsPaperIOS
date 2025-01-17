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
        Task {
            do {
                let response = try await initUseCase.execute()
                self.initResponse = response
                fetchAppVerssion()
            } catch {
                self.isLoading = false
                self.error = error
            }
        }
    }
    
    func fetchAppVerssion() {
        isLoading = true
        Task {
            do {
                let response = try await appVersionUseCase.execute()
                self.appVersionResponse = response
                self.isLoading = false
            } catch {
                self.isLoading = false
                self.error = error
            }
        }
    }
    
}
