//
//  LoginRouter.swift
//  shoppo
//
//  Created by Anbu Sekar M on 20/05/25.
//



import Foundation
import SwiftUI

struct LoginRouter {
    static func createModule(coordinator: AppCoordinator) -> some View {
        let viewModel = LoginViewModel() 
        let presenter = LoginPresenter()
        let interactor = LoginInteractor()
        let view = LoginView(viewModel: viewModel)

        presenter.view = viewModel
        interactor.output = presenter
        presenter.interactor = interactor
        viewModel.presenter = presenter
        viewModel.coordinator = coordinator

        return view
    }
}
