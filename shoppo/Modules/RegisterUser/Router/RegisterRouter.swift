//
//  RegisterRouter.swift
//  shoppo
//
//  Created by Anbu Sekar M on 21/05/25.
//
import Foundation
import SwiftUI

struct RegisterRouter {
    static func createModule(coordinator: AppCoordinator) -> some View {
        let viewModel = RegisterViewModel() // if you're using ViewModel
        let presenter = RegisterPresenter()
        let interactor = RegisterInteractor()
        let view = RegisterForegroundView(viewModel: viewModel)

        presenter.view = viewModel
        interactor.output = presenter
        presenter.interactor = interactor
        viewModel.presenter = presenter
        viewModel.coordinator = coordinator

        return view
    }
}
