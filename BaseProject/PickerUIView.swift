//
//  PickerUIView.swift
//  BaseProject
//
//  Created by dmitsmirnov on 19.03.2024.
//

import SwiftUI

struct PickerUIView: View {
    
    private var colors = ["black", "red", "white", "green"]
    @State private var selectedColor = 0
    var body: some View {
        VStack {
            Picker(selection: $selectedColor, label: Text("Choose color:")) {
                
                ForEach(0..<colors.count) { index in
                    Text(self.colors[index])
                }
            }
            .padding()
            .pickerStyle(.menu)
            Text("your color: \(colors[selectedColor])")
        }
    }
}

#Preview {
    PickerUIView()
}
