//
//  Untitled.swift
//  shoppo
//
//  Created by Anbu Sekar M on 22/05/25.
//


import SwiftUI


struct userHomeViewModel: View {
    
    var body: some View {
        VStack{
            HeaderView()
                .padding(.bottom, 20)
            Text("Hello, Anbu!")
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.headline)
            AnnouncementView()
                .padding(.bottom, 25)
            recentView()
            BottomView()
        }
        .padding(.horizontal, 20)
    }
}


#Preview {
    userHomeViewModel()
}
