//
//  CategoriesView.swift
//  shoppo
//
//  Created by Anbu Sekar M on 23/05/25.
//


import SwiftUI


struct CategoriesView: View {
    let cloths: [ImageResource] = [.cloth1, .cloth2, .cloth3, .cloth4]
    let shoes: [ImageResource] = [.shoe1, .shoe2, .shoe3, .shoe4]
    let bages: [ImageResource] = [.bag1, .bag2, .bag3, .bag4]
    let electronics: [ImageResource] = [.cloth1, .cloth2, .cloth3, .cloth4]
    
    var categories: [[ImageResource]] {
        get {
            [cloths, shoes, bages, electronics]
        }
    }
    
    let count: [String] = ["103","450","120","231"]
    let categoriesName: [String] = ["Clothing", "Shoes", "Bags", "Electronics"]
    var body: some View {
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
        .padding(.horizontal, 20)
        .padding(.bottom, -5)
        VStack{
            HStack {
                ForEach(0..<2) { i in
                    
                    Categories(categories: categories[i], title: categoriesName[i], count: count[i])
                }
            }
            
            HStack {
                ForEach(2..<4) { i in
                    
                    Categories(categories: categories[i], title: categoriesName[i], count: count[i])
                }
            }

            
        }.padding(.horizontal, 10)
        
                
    }
}


#Preview {
    CategoriesView()
}

struct Categories: View{
    
    let categories: [ImageResource]
    let title: String
    let count: String
    
    var body: some View{
        
        VStack {
           VStack {
                HStack {
                    Image(categories[0])
                        .resizable()
                        .frame(width: 85, height: 85)
                        .cornerRadius(10)
                    Image(categories[1])
                        .resizable()
                        .frame(width: 85, height: 85)
                        .cornerRadius(10)
                }.padding(.top, 10)
               HStack {
                   Image(categories[2])
                       .resizable()
                       .frame(width: 85, height: 85)
                       .cornerRadius(10)
                   Image(categories[3])
                       .resizable()
                       .frame(width: 85, height: 85)
                       .cornerRadius(10)
              }
            }
            
            HStack {
                Text(title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 5)
                Spacer()
                ZStack {
                    Rectangle()
                        .fill(Color.gray.opacity(0.2))
                        .frame(width: 40, height: 20)
                        .cornerRadius(10)
                        
                    Text(count)
                        .foregroundColor(.black)
                        .font(.caption)
                }.padding(.trailing, 5)
                
                    
                    
            }
            .padding(.bottom, 10)
            
        }
        .padding(.horizontal, 10)
        .frame(width: 190, height: 215)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: Color.gray, radius: 5, x: 0, y: 5)
    }
    
}
