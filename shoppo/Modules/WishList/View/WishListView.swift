//
//  WishListView.swift
//  shoppo
//
//  Created by Anbu Sekar M on 23/05/25.
//

import SwiftUI

struct WishListView: View {
    var body: some View {
        recentView()
            .padding(.bottom, 20)

        ScrollView(.vertical) {
            VStack {

                Text("Wish List")
                    .font(.headline)
                    .frame(maxWidth: .infinity, alignment: .leading)
                HStack
                {
                    wishList()
                    
                    wishList()
                }
                HStack
                {
                    wishList()
                    
                    wishList()
                }
                HStack
                {
                    wishList()
                    
                    wishList()
                }
                HStack
                {
                    wishList()
                    
                    wishList()
                }
                HStack
                {
                    wishList()
                    
                    wishList()
                }
            }
            .padding(20)
        }
    }
}

struct wishList: View {
    
   var body: some View {
       
       VStack{
           ZStack{
               Rectangle()
                   .fill(.white)
                   .frame(width: 165, height: 181)
                   .cornerRadius(20)
                   .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 10)
               Image(.recent1)
                   .resizable()
                   .frame(width: 155, height: 171)
                   .cornerRadius(20)
               
           }
           
           VStack {
             
               Text("Lorem Ipsum")
                   .font(.callout)
                   .foregroundColor(.black)
                   
               Text("$120")
                   .font(.caption)
                   .foregroundColor(.black)
                   
               
           }
           .padding()
       }.padding(.trailing, 10)
       
    }
    
}

#Preview {
    WishListView()
}
