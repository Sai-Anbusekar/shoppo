//
//  Untitled.swift
//  shoppo
//
//  Created by Anbu Sekar M on 21/05/25.
//
// AppCoordinator.swift

import SwiftUI
import Combine

// AppRoute.swift
enum AppRoute {
    case register
    case home
    case profile
    // Add more screens here
}




final class AppCoordinator: ObservableObject {
    @Published var currentRoute: AppRoute = .home

    @ViewBuilder
    func viewForCurrentRoute() -> some View {
        switch currentRoute {
        case .home:
            HomeRouter.createModule(coordinator: self)
        case .register:
            RegisterRouter.createModule(coordinator: self)
        case .profile:
            Text("Profile Screen") // Placeholder
        }
    }

    func navigate(to route: AppRoute) {
        currentRoute = route
    }
}
