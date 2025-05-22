//
//  LoginPresenter.swift
//  shoppo
//
//  Created by Anbu Sekar M on 20/05/25.
//

import Foundation

class LoginPresenter: LoginPresenterProtocol, LoginInteractorOutputProtocol {
    
    var view: LoginViewProtocol?
   var interactor: LoginInteractorProtocol?
    
    func loginUser(username: String, password: String) {
        view?.showLoading()
        let loginRequest = LoginRequest(email: username, password: password)
        interactor?.login(user: loginRequest)
        
    }
    
    func didLoginSuccess(response: LoginResponse?) {
        view?.hideLoading()
        if let response = response {
            TokenManager.shared.accessToken = response.accessToken
            TokenManager.shared.refreshToken = response.refreshToken
            view?.showSuccess(message: "Login Success")
        }
    }
    
    func didLoginFailure(error: String) {
        view?.hideLoading()
        view?.showError(error: error)
    }
    
}

