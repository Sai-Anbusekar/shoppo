//
//  LoginViewModel.swift
//  shoppo
//
//  Created by Anbu Sekar M on 22/05/25.
//

import SwiftUI

final class LoginViewModel: ObservableObject, LoginViewProtocol {
    
    // MARK: - Properties bound to View
    @Published var isLoading: Bool = false
    @Published var message: String = ""
    @Published var alertTitle: String = ""
    
    
    @Published var showAlert: Bool = false
    
    @Published var email: String = ""
    @Published var password: String = ""
    
    // Reference to presenter
    var presenter: LoginPresenterProtocol?
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
