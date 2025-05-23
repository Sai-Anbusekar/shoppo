//
//  HomeVM.swift
//  shoppo
//
//  Created by Anbu Sekar M on 23/05/25.
//

import Foundation
import SwiftUI



    struct HomeScreenRouter {
        static func createModule(coordinator: AppCoordinator) -> some View {
            let view = userHomeViewModel()
            return view
        }
    }
