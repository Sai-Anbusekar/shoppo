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
            if viewModel.isLoading {
                  Color.black.opacity(0.3).ignoresSafeArea()
                  ProgressView("Loading...")
                      .padding()
                      .background(Color.white)
                      .cornerRadius(10)
                
              }
        }
    }
}


