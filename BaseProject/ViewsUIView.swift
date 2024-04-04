//
//  ViewsUIView.swift
//  BaseProject
//
//  Created by dmitsmirnov on 26.03.2024.
//

import SwiftUI

struct ViewsUIView: View {
    
    @State private var rotation = 0.0
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image("logo_ru_black")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .opacity(0.5)
                    .blur(radius: 2)
                    .colorMultiply(.yellow) // задний фон
                    .saturation(5) // насыщенность
                    .contrast(1) // контраст
                Text("This photo made by:")
                    .padding(4)
                    .background(Color.black)
                    .foregroundColor(.white)
                    .offset(x: -10, y: -70)
            }
            
            Text("Hello swift")
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.red, lineWidth: 5)
                )
                //.border(Color.red, width: 5)
                //.cornerRadius(20)
                .rotation3DEffect(
                    .degrees(rotation),
                        axis: (x: 0.0, y: 1.0, z: 0.0)
                )
                .scaleEffect(2, anchor: .center) // увеличение
            
            Circle()
                //.strokeBorder(Color.green, lineWidth: 5)
                .strokeBorder(Color.blue, style: StrokeStyle(lineWidth: 5, dash: [10, 3]))
                .frame(width: 100, height: 100)
                .padding()
            
            Text("Shadow")
                .padding()
                .border(Color.green, width: 5)
                .shadow(color: Color.blue, radius: 5, x: 10, y: -5)
                .padding()
                .rotationEffect(.degrees(rotation), anchor: .center)
                Slider(value: $rotation, in: 0...360, step: 1)
            
            Button(action: {
                
            }, label: {
                Image(systemName: "cloud.fill")
                    .foregroundColor(.green)
                    .padding()
                    .background(Color.red)
                    .clipShape(Circle())
                    .padding()
                
                
            })
            
            
        }
    }
}

#Preview {
    ViewsUIView()
}
