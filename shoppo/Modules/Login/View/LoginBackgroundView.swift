import SwiftUI

struct LoginBackgroundView: View {
    var body: some View {
        ZStack {

            Image("background2")
                .frame(maxWidth: .infinity, alignment: .leading)
                .frame(maxHeight: .infinity, alignment: .top)
            
            Image("background1")
                .frame(maxWidth: .infinity, alignment: .leading)
                .frame(maxHeight: .infinity, alignment: .top)
            
            Image("background3")
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.bottom, 200)
            
        }
        .edgesIgnoringSafeArea(.all)
    }
}


#Preview {
    LoginBackgroundView()
}
