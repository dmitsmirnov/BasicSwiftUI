//
//  GragientsUIView.swift
//  BaseProject
//
//  Created by dmitsmirnov on 19.03.2024.
//

import SwiftUI

struct GragientsUIView: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .padding(50)
                .background(LinearGradient(colors: [Color.white, Color.blue, Color.red], startPoint: .top, endPoint: .bottom))
                .padding()
            
            let colors = Gradient(colors: [.red, .blue, .orange, .green])
            let gradient = RadialGradient(gradient: colors, center: .center, startRadius: 10, endRadius: 80)
            
            let angularGradient = AngularGradient(gradient: colors, center: .center)
            
            Circle()
                .fill(gradient)
                .frame(width: 150, height: 150)
                .padding()
            
            Circle()
                .strokeBorder(angularGradient, lineWidth: 20)
                .frame(width: 150, height: 150)
                .padding()
        }
        
        
    }
}

#Preview {
    GragientsUIView()
}
