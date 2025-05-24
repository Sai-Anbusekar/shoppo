//
//  shoppoApp.swift
//  shoppo
//
//  Created by Anbu Sekar M on 20/05/25.
//

import SwiftUI

@main
struct shoppoApp: App {
    
    @StateObject var coordinator = AppCoordinator()

    var body: some Scene {
        WindowGroup {
            coordinator.viewForCurrentRoute()
            
        }
    }
}
