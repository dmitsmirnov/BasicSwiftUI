//
//  AnimationUIView.swift
//  BaseProject
//
//  Created by dmitsmirnov on 01.04.2024.
//

import SwiftUI

struct AnimationUIView: View {
    
    @State private var scale: CGFloat = 1
    @State private var angle: Double = 0
    @State private var border: CGFloat = 1
    @State private var showLabel = false
    @State private var opacy: Double = 1
    @State private var rotation: Double = 0
    @State private var scale2: CGFloat = 1
    
    var body: some View {
        VStack {
            Button {
                self.scale += 1
            } label: {
                Text("Tap me")
                    .scaleEffect(scale)
                    .animation(.linear(duration: 3))
                //.animation(.linear(duration: 3), value: 0)
            }
            .padding()
            
            Button {
                self.border += 1
                self.angle += 45
            } label: {
                Text("Tap me also")
                    .padding()
                    .border(Color.green, width: border)
                    .rotationEffect(.degrees(angle))
                    .animation(/*@START_MENU_TOKEN@*/.easeIn/*@END_MENU_TOKEN@*/)
                //.animation(.linear(duration: 3), value: 0)
            }
            
            Button {
                self.angle += 45
            } label: {
                Text("Tap me also")
                    .padding()
                    .rotationEffect(.degrees(angle))
                    .animation(.interpolatingSpring(mass: 1, stiffness: 1, damping: 0.5, initialVelocity: 5))
                //.animation(.linear(duration: 3), value: 0)
            }
            
            Toggle(isOn: $showLabel.animation(.spring()), label: {
                Text("Show")
            })
            if showLabel {
                Text("Hello")
            }
            
            Button {
                withAnimation(.linear(duration: 3)) {
                    self.opacy -= 0.5
                }
            } label: {
                Text("Tap me also")
                    .padding()
                    .rotationEffect(.degrees(angle))
                    .opacity(opacy)
                //.animation(.linear(duration: 3), value: 0)
            }
            
            Rectangle()
                .fill(Color.red)
                .frame(width: 200, height: 200)
                .rotationEffect(.degrees(rotation))
                .animation(Animation.easeInOut(duration: 3).delay(1))
                .onTapGesture {
                    self.rotation += 360
                }
                .padding()
            
            Rectangle()
                .fill(Color.orange)
                .frame(width: 100, height: 100)
                .rotationEffect(.degrees(rotation))
                .scaleEffect(scale2)
                .onAppear {
                    let baseAnimation = Animation.easeInOut(duration: 1)
                    let repeaded = baseAnimation.repeatForever(autoreverses: true)
                    return withAnimation(repeaded) {
                        self.scale2 = 0.5
                    }
                }
            
            
        }
    }
}

#Preview {
    AnimationUIView()
}
