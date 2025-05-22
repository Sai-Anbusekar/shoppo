//
//  recentView.swift
//  shoppo
//
//  Created by Anbu Sekar M on 22/05/25.
//


import SwiftUI

struct recentView: View {
    var body: some View {
        VStack {
            Text("Recently Viewed")
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .leading)
            HStack{
                circlePreview(image: Image(.recent))
                Spacer()
                circlePreview(image: Image(.recent1))
                Spacer()
                circlePreview(image: Image(.recent2))
                Spacer()
                circlePreview(image: Image(.recent3))
                Spacer()
                circlePreview(image: Image(.recent4))
            }
            
        }
        
    }
}


#Preview {
    recentView()
}

struct circlePreview: View {
    
    let image: Image
    
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.white)
                .frame(width: 60, height: 60)
                .shadow(color: .gray.opacity(0.6), radius: 10, x: 0, y: 5)
            
                image
                .clipShape(.circle)
                
            
        }
        
    }
}
