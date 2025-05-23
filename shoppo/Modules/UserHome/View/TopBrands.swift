//
//  recentView.swift
//  shoppo
//
//  Created by Anbu Sekar M on 22/05/25.
//


import SwiftUI

struct TopProductView: View {
    var body: some View {
        VStack {
            Text("Top Products")
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .leading)
            HStack{
                circlePreview(image: Image(.recent4))
                Spacer()
                circlePreview(image: Image(.recent1))
                Spacer()
                circlePreview(image: Image(.recent3))
                Spacer()
                circlePreview(image: Image(.recent2))
                Spacer()
                circlePreview(image: Image(.recent1))
            }
            
        }
        .padding(.horizontal, 20)
        
    }
}


#Preview {
    TopProductView()
}
