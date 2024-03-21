//
//  ModifiersUIView.swift
//  BaseProject
//
//  Created by dmitsmirnov on 21.03.2024.
//

import SwiftUI

struct CustomText: View {
    
    var name: String
    
    var body: some View {
        Text(name)
            .padding()
            .font(.largeTitle)
            .foregroundStyle(.red)
            .background(Color.blue)
            .cornerRadius(20)
    }
}

struct customModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .font(.largeTitle)
            .foregroundStyle(.red)
            .background(Color.blue)
            .cornerRadius(20)
    }
}

struct ModifiersUIView: View {
    
    @State private var useGreenText = false
    
    var body: some View {
        VStack {
            Button {
                self.useGreenText.toggle()
            } label: {
                Text("Hello world")
                    .font(.largeTitle)
                    .foregroundStyle(useGreenText ? .red : .blue)
                
            }
            .padding()
            
            CustomText(name: "First")
            CustomText(name: "Second")
            
            Text("customModifier")
                .modifier(customModifier())
            
            Text("customM")
                .customM()
            
        }
    }
    
}

extension View {
    func customM() -> some View {
        self.modifier(customModifier())
    }
}



#Preview {
    ModifiersUIView()
}
