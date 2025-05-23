//
//  LoginView.swift
//  shoppo
//
//  Created by Anbu Sekar M on 20/05/25.
//
import SwiftUI

struct LoginView: View {
    @ObservedObject var viewModel: LoginViewModel
    
    var body: some View {
        ZStack {
            LoginBackgroundView()
            LoginFrontView(viewModel: viewModel)
            if viewModel.showAlert {
                CustomAlertView(title: viewModel.alertTitle, message: viewModel.message) {
                    viewModel.showAlert = false
                    
                }
            }
        }
    }
}


