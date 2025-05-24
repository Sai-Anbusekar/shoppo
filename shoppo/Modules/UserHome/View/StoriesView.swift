//
//  StoriesView.swift
//  shoppo
//
//  Created by Anbu Sekar M on 22/05/25.
//

import SwiftUI

struct StoriesView: View {
    var body: some View {
        VStack {
            Text("Stories")
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(1..<5) { i in
                        storyView(imagename: "story \(i)")
                            .cornerRadius(15)
                            .frame(width: 104, height: 180)
                            
                            
                    }
                }
                
            }
        }
        .padding(.horizontal, 20)
        
        
        
    }
}


struct storyView: View {
    let imagename: String
    var body: some View {
        
        ZStack {
            Image(imagename)
                .resizable()
            Image("play")
                .resizable()
                .frame(width: 40, height: 40)
        }
            
        
    }
}

#Preview {
    StoriesView()
}
