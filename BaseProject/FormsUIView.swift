//
//  FormsUIView.swift
//  BaseProject
//
//  Created by dmitsmirnov on 20.03.2024.
//

import SwiftUI

struct FormsUIView: View {
    
    @State private var colors = ["Red", "Blue", "Black"]
    @State private var selectedColor = 0
    @State private var settings = false
    
    var body: some View {
        
        NavigationStack {
            
            Form {
               
                Section("Main settings") {
                    
                    Picker(selection: $selectedColor, label: Text("Select a color")) {
                        ForEach(0..<colors.count) { index in
                            Text(self.colors[index])
                        }
                    }
                    .pickerStyle(.palette)
                }
                
                Section("Other settings") {
                    
                    Toggle("Action", isOn: $settings)
                    
                    Button("Click") {
                        //
                    }
                    .disabled(!settings)
                }
            }
            .navigationBarTitle("Settings")
        }
        
    }
}

#Preview {
    FormsUIView()
}
