//
//  HomeRouter.swift
//  shoppo
//
//  Created by Anbu Sekar M on 20/05/25.
//

import Foundation
import SwiftUI

struct HomeRouter {
    static func createModule(coordinator: AppCoordinator) -> some View {
        let viewModel = HomeViewModel()
   
        
        viewModel.coordinator = coordinator  // Inject coordinator

        return HomeView(viewModel: viewModel)
    }
}

final class HomeViewModel: ObservableObject {
    var coordinator: AppCoordinator?

    func goToRegister() {
        coordinator?.navigate(to: .register)
    }
}


