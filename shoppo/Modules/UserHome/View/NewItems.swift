//
//  NewItems.swift
//  shoppo
//
//  Created by Anbu Sekar M on 23/05/25.
//


import SwiftUI

struct NewItemsView: View {
    
    let newItems: [String] = ["western", "Office wears", "Casual wear", "Sun glass"]
    let price: [String] = ["$17", "$12", "$19", "$25"]
    var body: some View {
        VStack {
            HStack
            {
                Text("New Items")
                    .font(.headline)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Spacer()
                HStack {
                    Text("See All")
                        .font(.callout)
                        .padding(.horizontal, 5)
                    Image(.rightArrow)
                }
                
            }
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 40) {
                    ForEach(1..<5) { i in
                        NewItems(image: "new \(i)", title: newItems[i-1], price: price[i-1])
                            .cornerRadius(15)
                            .frame(width: 104, height: 180)
                            
                            
                    }
                }
                
            }

            
            
        }
        .padding(.horizontal, 20)
        
        
        
    }
    
}


struct NewItems: View {
    
    let image: String
    let title: String
    let price: String
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .fill(Color.white)
                    .cornerRadius(20)
                    .frame(width: 130, height: 130)
                    .shadow(color: .gray.opacity(0.2), radius: 3, x: 5, y: 5)
                Image(image)
                    .resizable()
                    .frame(width: 125, height: 125)
                    .cornerRadius(20)
                
            }
            Text(title)
                .font(.headline)
                .foregroundColor(.gray)
            Text(price)
                .font(.title3)
                .fontWeight(.bold)
                
        }
    }
}


#Preview {
    NewItemsView()
}
