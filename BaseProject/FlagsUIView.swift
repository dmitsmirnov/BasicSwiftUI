//
//  FlagsUIView.swift
//  BaseProject
//
//  Created by dmitsmirnov on 21.03.2024.
//

import SwiftUI

struct FlagsUIView: View {
    
    @State private var countrys = ["Russia", "China", "Brazil", "Turkey", "Ukraine", "UK", "USA", "Cuba", "Portugal", "Germany", "Canada"].shuffled()
    
    @State private var correctAnswer = Int.random(in: 0...2)
    @State private var result = 0
    @State private var showAlert = false
    @State private var scoreTitle = ""
    
    var body: some View {
        ZStack {
            
            LinearGradient(colors: [.red, .white], startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Choose flag")
                    .font(.title3)
                    .padding()
                Text(countrys[correctAnswer])
                    .font(.largeTitle)
                
                ForEach(0..<3) { number in
                    Button(action: {
                        self.showAlert = true
                        self.flagTapped(number)
                    }, label: {
                        Image(countrys[number])
                            .resizable()
                            .renderingMode(.original)
                            .frame(width: 150, height: 150)
                            .clipShape(Capsule()) // круг
                            .overlay(Capsule().stroke(Color.black, lineWidth: 2)) // обводка
                            .shadow(color: .black, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/) // тень
                    })
                }
                
                Text("Your result is \(result)")
                    .font(.largeTitle)
                
                Spacer()
                
            }.alert(isPresented: $showAlert) {
             
                //self.showAlert = true
                Alert(title: Text(scoreTitle),
                      message: Text("Total result is \(result)"),
                      dismissButton: .default(Text("Continue")) {
                    self.askQestion()
                })
                
            }
            
            
            
        }
        
    }
    func askQestion() {
        countrys.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    
    func flagTapped(_ number: Int) {
     
        if correctAnswer == number {
            result += 1
            scoreTitle = "Correct answer"
        } else {
            result -= 1
            scoreTitle = "Incorrect answer"
        }
        
    }
}

#Preview {
    FlagsUIView()
}
