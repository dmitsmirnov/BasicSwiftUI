//
//  StepperUIView.swift
//  BaseProject
//
//  Created by dmitsmirnov on 19.03.2024.
//

import SwiftUI

struct StepperUIView: View {
   
    @State private var valueStep = 0
    
    var body: some View {
        
        VStack {
            
            Stepper("selected", onIncrement: {
                self.valueStep += 1
            }, onDecrement: {
                self.valueStep -= 1
            })
            .padding()
            
            Text("value is \(valueStep)")
                .padding()
            
            Stepper("choose", value: $valueStep, in: 0...100, step: 1)
                .padding()
            Text("value is \(valueStep)")
            
        }
        .padding()
    }
}

#Preview {
    StepperUIView()
}
