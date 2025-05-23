//
//  RegisterViewModel.swift
//  shoppo
//
//  Created by Anbu Sekar M on 21/05/25.
//

import SwiftUI

final class RegisterViewModel: ObservableObject, RegisterViewProtocol {
    
    // MARK: - Properties bound to View
    @Published var isLoading: Bool = false
    @Published var message: String = ""
    @Published var alertTitle: String = ""
    
    // Add registration fields if needed
    @Published var name: String = ""
    @Published var email: String = ""
    @Published var password: String = ""
    
    @Published var showAlert: Bool = false
    
    // Reference to presenter
    var presenter: RegisterPresenterProtocol?
    var coordinator: AppCoordinator?
    
    // MARK: - View Protocol Functions (called from Presenter)
    func showLoading() {
        DispatchQueue.main.async {
            self.isLoading = true
        }
    }
    
    func hideLoading() {
        self.isLoading = false
    }
    
    func showSuccess(message: String) {
        DispatchQueue.main.async {
            self.message = message
            self.alertTitle = "Success!"
            self.showAlert = true
        }
       
        
    }
    
    func showError(error: String) {
        DispatchQueue.main.async {
            
            self.message = error
            self.alertTitle = "Error!"
            self.showAlert = true
        }
        
    }
}
