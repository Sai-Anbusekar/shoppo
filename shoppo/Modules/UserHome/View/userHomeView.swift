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
            ScrollView(.vertical, showsIndicators: false) {
                HeaderView()
                    .padding(.bottom, 20)
                Text("Hello, Anbu!")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.headline)
                    .padding(.horizontal, 20)
                AnnouncementView()
                    .padding(.bottom, 25)
                recentView()
                    .padding(.bottom, 25)
                StoriesView()
                    .padding(.bottom, 25)
                NewItemsView()
                    .padding(.bottom, 25)
            }
          
            BottomView()
                .frame(height: 20)
                .background(Color.gray.opacity(0.1))
                
        }
        
    }
}


#Preview {
    userHomeViewModel()
}
