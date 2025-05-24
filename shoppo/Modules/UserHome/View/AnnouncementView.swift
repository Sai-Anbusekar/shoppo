//
//  AnnouncementView.swift
//  shoppo
//
//  Created by Anbu Sekar M on 22/05/25.
//

import SwiftUI

struct AnnouncementView: View {
    var body: some View {
        HStack
        {
            VStack {
                Text("Announcement!")
                    .font(.headline)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("Prime members save an additional 10% on cloths and get exclusive discounts and recommendations. Sign up today!")
                    .font(.footnote)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                
            }
            
            Image(.rightArrow)
            
            
        }
        
        .padding()
        .background(Color.gray.opacity(0.1))
        .frame(maxWidth: .infinity, alignment: .leading)
        .cornerRadius(25)
        .padding(.horizontal, 20)
        
    }
    
}


#Preview {
    AnnouncementView()
}
