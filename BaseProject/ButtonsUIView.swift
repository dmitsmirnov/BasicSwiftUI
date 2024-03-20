//
//  ButtonsUIView.swift
//  BaseProject
//
//  Created by dmitsmirnov on 19.03.2024.
//

import SwiftUI

struct ButtonsUIView: View {
    
    @State private var show = false
    
    @State private var name = ""
    @State private var pas = ""
    
    var body: some View {
        
        VStack {
            Button("Touch me ...") {
                show.toggle()
            }
            .padding()
            .background(Color.green)
            .clipShape(RoundedRectangle(cornerRadius: 25))
            if show {
                Text("Some text")
                    .padding()
            }
        }.padding()
        
        VStack {
            
            TextField("Enter your name", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            Text("Hello \(name)")
            SecureField("Enter your password", text: $pas)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            Text("your password - \(pas)")
            
            
        }
        
    }
}

#Preview {
    ButtonsUIView()
}
