//
//  ContentView.swift
//  BaseProject
//
//  Created by dmitsmirnov on 18.03.2024.
//
 
import SwiftUI

struct StacksView: View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10){
            Text("Hello")
                .padding(.bottom, 10)
            Spacer()
                .frame(height: 10)
            Text("Hello world")
        }
        .padding(.bottom, 50)
        
        
        
        ZStack {
            Image(systemName: "flag.checkered")
            Text("Hello apple!")
                .font(.largeTitle)
                .foregroundStyle(.red)
                .background(Color.blue)
        }
        
    }
}

#Preview {
    StacksView()
}
