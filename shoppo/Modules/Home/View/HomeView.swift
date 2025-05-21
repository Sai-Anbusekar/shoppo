//
//  HomeView.swift
//  shoppo
//
//  Created by Anbu Sekar M on 20/05/25.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var viewModel: HomeViewModel
    
    var body: some View {
        VStack(spacing: 30) {
            Spacer()
            HomeLogoView()
            Text("Shoppe")
                .font(.custom("Raleway-ExtraBold", size: 36)) // <- Make sure font is added
                .foregroundColor(.black)
                .shadow(color: .gray.opacity(0.4), radius: 2, x: 1, y: 2)
            // Subtitle
            Text("Beautiful eCommerce UI Kit \n for your online store")
                .font(.system(size: 16))
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
            
            Spacer()
            // "Let's get started" Button
            Button(action: {
                viewModel.goToRegister()

            }) {
                Text("Let's get started")
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(12)
            } .padding(.horizontal, 30)
            
            // Bottom Text with Arrow
            HStack {
                Text("already have an account")
                    .font(.system(size: 14))
                    .foregroundColor(.black)
                    
                
                
                Button(action: {
                    // Navigate to login
                }) {
                    Image(systemName: "arrow.right")
                        .foregroundColor(.white)
                        .padding(10)
                        .background(Color.blue)
                        .clipShape(Circle())
                }
            }
            .padding(.horizontal, 40)
            .padding(.bottom, 30)
            
        }
        .edgesIgnoringSafeArea(.all)
        
    }
}
struct HomeLogoView: View {
    var body: some View {
        
        let screenHeight = ScreenSizeManager.shared.height
        let screenWidth = ScreenSizeManager.shared.width
        
        VStack {
            ZStack {
                // Circle with shadow
                Circle()
                    .fill(Color.white)
                    .frame(width: screenWidth * 0.36, height: screenHeight * 0.17)
                    .shadow(color: .gray.opacity(0.6), radius: 10, x: 0, y: 5)
                
                Image("logoHome")
                    .resizable()
                    .scaledToFit()
                    .frame(width: screenWidth * 0.22, height: screenHeight * 0.11)
            }
            
        }
        
        
    }
}

