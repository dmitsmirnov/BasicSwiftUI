//
//  TabBarUIView.swift
//  BaseProject
//
//  Created by dmitsmirnov on 02.04.2024.
//

import SwiftUI

struct TabBarUIView: View {
    
    @State private var selected = 0
    
    var body: some View {
        VStack {
            
            Spacer()
            
            ZStack {
                
                HStack {
                    
                    Button(action: {
                        self.selected = 0
                    }, label: {
                        Image(systemName: "house.fill")
                            .foregroundColor(self.selected == 0 ? .black : .gray)
                    })
                    
                    Spacer(minLength: 12)
                    
                    Button(action: {
                        self.selected = 1
                    }, label: {
                        Image(systemName: "person.fill")
                            .foregroundColor(self.selected == 1 ? .black : .gray)
                    })
                    
                    Spacer().frame(width: 120)
                    
                    Button(action: {
                        self.selected = 2
                    }, label: {
                        Image(systemName: "airplane")
                            .foregroundColor(self.selected == 2 ? .black : .gray)
                    })
                    
                    Spacer(minLength: 12)
                    
                    Button(action: {
                        self.selected = 3
                    }, label: {
                        Image(systemName: "car")
                            .foregroundColor(self.selected == 3 ? .black : .gray)
                    })
                    
                }
                .padding()
                .padding(.horizontal, 20)
                .background(CurvedShape())
              
                Button(action: {
                    //self.selected = 3
                }, label: {
                    Image(systemName: "heart.fill")
                        .renderingMode(.original)
                        .padding()
                        
                }).background(Color.blue)
                    .clipShape(Circle())
                    .offset(y: -32)
                    .shadow(radius: 5)
                    .foregroundColor(.red)
                
                
            }
            
        }
        .background(Color.green, ignoresSafeAreaEdges: .top)

           
    }
        
}

struct CurvedShape: View {
    var body: some View {
        Path { path in
            
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: UIScreen.main.bounds.width, y: 0))
            path.addLine(to: CGPoint(x: UIScreen.main.bounds.width, y: 55))
            
            path.addArc(center: CGPoint(x: UIScreen.main.bounds.width / 2, y: 55), radius: 32, startAngle: .zero, endAngle: .init(degrees: 180), clockwise: true)
            
            path.addLine(to: CGPoint(x: 0, y: 55))
            
            
            
        }
        .fill(Color.white)
        .rotationEffect(.degrees(180))
    }
}

#Preview {
    TabBarUIView()
}
