//
//  RegisterBackgroundView.swift
//  shoppo
//
//  Created by Anbu Sekar M on 21/05/25.
//

import SwiftUI

struct RegisterBackgroundView: View {
    var body: some View {
        ZStack {
            Image("createAccountRight")
                .frame(maxWidth: .infinity, alignment: .trailing)
                .frame(maxHeight: .infinity, alignment: .top)
            Image("createAccountTop")
                .frame(maxWidth: .infinity, alignment: .leading)
                .frame(maxHeight: .infinity, alignment: .top)
        }        .edgesIgnoringSafeArea(.all)

        
    }
}


#Preview {
    RegisterBackgroundView()
}
