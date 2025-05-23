//
//  ContentView.swift
//  shoppo
//
//  Created by Anbu Sekar M on 20/05/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Text("System Font")
                .font(.system(size: 24))
                .foregroundColor(.blue)
                .padding()
                .background(Color.green.opacity(0.2))
                .cornerRadius(8)
            
            // Custom Font
            Text("System Font")
                .font(.custom("Raleway", size: 24)) // ← use your actual font name
                .foregroundColor(.blue)
                .padding()
                .background(Color.green.opacity(0.2))
                .cornerRadius(8)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
