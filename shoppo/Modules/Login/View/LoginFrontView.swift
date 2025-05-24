//
//  LoginFrontView.swift
//  shoppo
//
//  Created by Anbu Sekar M on 22/05/25.
//


import SwiftUI

struct LoginFrontView: View {
    
    
    @ObservedObject var viewModel: LoginViewModel

    
    var body: some View {
        VStack {
            Spacer()
            Text("Login")
                .font(.titleFont(size: .largeTitle))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 10)
            Text("Good to see you back!")
                .font(.titleFont(size: .normal))
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundStyle(.gray)
                .padding(.bottom, 20)
            
            Group {
                TextField("Email", text: $viewModel.email)
                    .keyboardType(.emailAddress)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(25)
                    .padding(.bottom, 8)
                
                HStack {
                    SecureField("Password", text: $viewModel.password)
                        .padding()
                    Image(systemName: "eye.slash")
                        .padding(.trailing)
                }
                .background(Color(.systemGray6))
                .cornerRadius(25)
                .padding(.bottom, 20)
            }
            
            Button(action: {
                viewModel.showLoading()
                viewModel.presenter?.loginUser(username: viewModel.email, password: viewModel.password)
            }) {
                Text("Login")
                    .font(.title2)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            
        }.padding()
        
        
    }
}


