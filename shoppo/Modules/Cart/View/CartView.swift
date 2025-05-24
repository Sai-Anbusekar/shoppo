//
//  CartView.swift
//  shoppo
//
//  Created by Anbu Sekar M on 24/05/25.
//

import SwiftUI

struct CartView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                Text("Cart")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                addressView()
                cartItems()
                cartItems()
                cartItems()
                cartItems()
                cartItems()
            }
        }
       
        .padding(.horizontal, 20)
        
    }
}


struct addressView: View {
    
    var body: some View {
        VStack{
            Text("Address")
                .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            HStack {
                Text("27 Anna nagar second street, rayanur, karur")
                    .font(.title3)
                    .lineLimit(nil)
                    .multilineTextAlignment(.leading)
                    .fixedSize(horizontal: false, vertical: true)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Spacer()
                Image(.rightArrow)
            }
            
        }
        .padding(20)
        .background(Color.gray.opacity(0.1))
        
        .cornerRadius(20)
        .padding(.bottom, 30)
    }
    
}


struct cartItems: View {
    var body: some View {
        HStack {
            ZStack {
                Rectangle()
                    .fill(.white)
                    .frame(width: 129, height: 150)
                    .cornerRadius(15)
                    .shadow(color: .gray, radius: 5, x: 0, y: 5)
                
                Image(.cloth3)
                    .resizable()
                    .cornerRadius(15)
                    .frame(width: 120, height: 140)
            }.padding(.trailing, 10)
            VStack {
                Text("Lorem ipsum dolor sit amet consectetur.")
                    .lineLimit(2)
                Text("Pink, Size M")
                HStack {
                    Text("$17,00")
                    Spacer()
                    Image(.rightArrow)
                    Text("1")
                    Image(.rightArrow)
                }
            }
    }
        .padding(.bottom, 20)
}
}


#Preview {
    CartView()
}
