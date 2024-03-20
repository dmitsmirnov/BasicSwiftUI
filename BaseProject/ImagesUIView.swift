//
//  ImagesUIView.swift
//  BaseProject
//
//  Created by dmitsmirnov on 18.03.2024.
//

import SwiftUI

struct ImagesUIView: View {
    var body: some View {
        
        VStack {
            
            Image("logo_ru_black")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .padding(.bottom, 50)
            
            Text("Hello apple!")
                .foregroundColor(.red)
                .background(
                    Image(systemName: "house")
                        .resizable()
                        .frame(width: 100, height: 100)
                )
                .padding(.bottom, 100)
            
            Text("Hello apple!")
                .foregroundColor(.red)
                .background(
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 100, height: 100)
                        
                )
                .padding(.bottom, 50)
        }
    }
}

#Preview {
    ImagesUIView()
}
