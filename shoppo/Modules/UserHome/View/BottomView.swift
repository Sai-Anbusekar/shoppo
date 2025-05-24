//
//  BottomView.swift
//  shoppo
//
//  Created by Anbu Sekar M on 22/05/25.
//

import SwiftUI

struct BottomView: View {
    
    var body: some View {
        HStack {
            Image("home")
            Spacer()
            Image("categories")
            Spacer()
            Image("wishList")
            Spacer()
            Image("cart")
            Spacer()
            Image("user")
        }
        
        .padding(.vertical, 30)
        .padding(.horizontal, 30)
        .background(Color.white)
        .clipShape(TopRoundedShape(radius: 30))
        .shadow(color: .gray, radius: 15)
        .frame(maxHeight: .infinity, alignment: .bottom)
        .edgesIgnoringSafeArea(.bottom)
        
    }
       
}


#Preview {
    BottomView()
}
