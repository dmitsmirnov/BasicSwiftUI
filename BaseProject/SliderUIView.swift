//
//  SliderUIView.swift
//  BaseProject
//
//  Created by dmitsmirnov on 19.03.2024.
//

import SwiftUI

struct SliderUIView: View {
    
    @State private var value: Double = 0
    
    var body: some View {
        VStack {
            Slider(value: $value, in: -100...100, step: 0.1)
            Text("\(value) celsius is \(value * 9/5 + 32) fahrenheit")
        }.padding()
        
    }
}

#Preview {
    SliderUIView()
}
