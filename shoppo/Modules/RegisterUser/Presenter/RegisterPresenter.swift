//
//  RegisterPresenter.swift
//  shoppo
//
//  Created by Anbu Sekar M on 21/05/25.
//

import Foundation


class RegisterPresenter: RegisterPresenterProtocol, RegisterInteractorOutputProtocol {
     var view: RegisterViewProtocol?
    var interactor: RegisterInteractorProtocol?

    func registerUser(name: String, email: String, password: String, dob: String, phone : String) {
        view?.showLoading()
        let request = RegisterRequest(name: name, email: email, password: password, dob: dob, phone: phone)
        interactor?.register(request: request)
    }

    func didRegisterSuccess(response: RegisterResponse?) {
        view?.hideLoading()
        view?.showSuccess(message: response!.message)
    }

    func didRegisterFailure(error: String) {
        view?.hideLoading()
        view?.showError(error: error)
    }
}
