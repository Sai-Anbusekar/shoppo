//
//  LoginProtocol.swift
//  shoppo
//
//  Created by Anbu Sekar M on 22/05/25.
//


import Foundation

public protocol LoginProtocol {
    func login(email: String, password: String)
}

protocol LoginViewProtocol {
    func showLoading()
    func hideLoading()
    func showSuccess(message: String)
    func showError(error: String)
}

protocol LoginPresenterProtocol: AnyObject {
    func loginUser(username: String, password: String)
}

protocol LoginInteractorProtocol: AnyObject {
    func login(user: LoginRequest)
}

protocol LoginInteractorOutputProtocol: AnyObject {
    func didLoginSuccess(response: LoginResponse?)
    func didLoginFailure(error: String)
}
