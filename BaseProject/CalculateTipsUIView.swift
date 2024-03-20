//
//  CalculateTipsUIView.swift
//  BaseProject
//
//  Created by dmitsmirnov on 20.03.2024.
//

import SwiftUI

struct CalculateTipsUIView: View {
    
    @State private var checkAmount = ""
    @State private var selectedNumbrePeople = 2
    @State private var selectedPercent = 0
    
    let percents = [0, 5, 10, 15, 20]
    
    var totalTipPerson: Double {
        
        let amount: Double = Double(checkAmount) ?? 0
        let numPer: Double = Double(selectedNumbrePeople + 2)
        let percentTips: Double = Double(percents[selectedPercent])
        
        let tipsOnePercent = (percentTips / 100) * amount / numPer
        let result = (amount / numPer) + tipsOnePercent
        
        return result

    }
    
    var body: some View {
        NavigationStack {
            Form {
                
                Section {
                    TextField("Amount", text: $checkAmount)
                    
                    Picker("Number of people", selection: $selectedNumbrePeople) {
                        ForEach(2..<100) {
                            Text("\($0)")
                        }
                    }.pickerStyle(.navigationLink)
                    
                }
                
                Section("How many tips you can leave?") {
                    Picker("Percent", selection: $selectedPercent) {
                        ForEach(0..<percents.count) {
                            Text("\(self.percents[$0])%")
                        }
                    }
                    .pickerStyle(.segmented)
                }
                
                Section {
                    Text("\(totalTipPerson, specifier: "%.2f") rub")
                }
                
            }
            .navigationBarTitle("Calculate tips", displayMode: .inline)
            
        }
    }
}

#Preview {
    CalculateTipsUIView()
}
