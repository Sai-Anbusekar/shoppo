//
//  RegisterView.swift
//  shoppo
//
//  Created by Anbu Sekar M on 21/05/25.
//

import SwiftUI

struct CustomAlertView: View {
    let title: String
    let message: String
    let onDismiss: () -> Void
    
    var body: some View {
        VStack(spacing: 20) {
            Text(title)
                .font(.headline)
            
            Text(message)
                .font(.subheadline)
            
            Button("Okay") {
                onDismiss()
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(12)
        .shadow(radius: 25)
        .frame(maxWidth: 300)
    }
}

