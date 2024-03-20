//
//  GestureUIView.swift
//  BaseProject
//
//  Created by dmitsmirnov on 19.03.2024.
//

import SwiftUI

struct GestureUIView: View {
    var body: some View {
        
        VStack {
            
            Text("Tap me")
                .onTapGesture {
                    print("Tappted!")
                }
            
            Spacer()
            
            Image("logo_ru_black")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .onTapGesture(count: 2) {
                    print("Double tappted!")
                }
        }
        .contentShape(Rectangle()) // онтап будет работать по всей области
        .onTapGesture {
            print("hello")
        }.padding()
        
        VStack {
            Image(systemName: "key")
                .gesture(
                    LongPressGesture(minimumDuration: 2) // долгое нажатие
                        .onEnded{ _ in
                            print("long")
                        }
                )
                .gesture(
                    DragGesture(minimumDistance: 50) // перетаскивание
                        .onEnded{ _ in
                            print("Dragg")
                        }
                )
        }
        
        
    }
}

#Preview {
    GestureUIView()
}
