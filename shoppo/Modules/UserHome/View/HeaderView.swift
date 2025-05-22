//
//  HeaderView.swift
//  shoppo
//
//  Created by Anbu Sekar M on 22/05/25.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            ZStack {
                Circle()
                    .fill(Color.white)
                    .frame(width: 50, height: 50)
                    .shadow(color: .gray.opacity(0.6), radius: 10, x: 0, y: 5)
                
                    Image("sample")
                    .clipShape(.circle)
            }
            Button("My Activity") {
                
            }
            .padding(.all, 10)
            .padding(.horizontal,10)
            .background(Color.blue)
            .foregroundColor(Color.white)
            .cornerRadius(20)
            .padding(.leading,10)
            
            Spacer()
            Button(action: {
                print("Asset image button tapped")
            }) {
                Image("voucher")
                    .frame(width: 40, height: 40)
            }
            .background(Color.gray.opacity(0.1))
            .clipShape(.circle)
            Button(action: {
                print("Asset image button tapped")
            }) {
                Image("menu")
                    .frame(width: 40, height: 40)
            }
            .background(Color.gray.opacity(0.1))
            .clipShape(.circle)
            
            Button(action: {
                print("Asset image button tapped")
            }) {
                Image("settings")
                    .frame(width: 40, height: 40)
            }
            .background(Color.gray.opacity(0.05))
            .clipShape(.circle)
            
            
        }
       
    }
}


#Preview {
    HeaderView()
}
