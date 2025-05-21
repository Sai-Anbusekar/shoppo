//
//  Untitled.swift
//  shoppo
//
//  Created by Anbu Sekar M on 21/05/25.
//

protocol RegisterViewProtocol {
    func showLoading()
    func hideLoading()
    func showSuccess(message: String)
    func showError(error: String)
}

protocol RegisterPresenterProtocol: AnyObject {
    func registerUser(name: String, email: String, password: String, dob: String, phone: String)
}

protocol RegisterInteractorProtocol: AnyObject {
    func register(request: RegisterRequest)
}

protocol RegisterInteractorOutputProtocol: AnyObject {
    func didRegisterSuccess(response: RegisterResponse?)
    func didRegisterFailure(error: String)
}
