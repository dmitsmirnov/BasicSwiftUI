//
//  StateUIView.swift
//  BaseProject
//
//  Created by dmitsmirnov on 19.03.2024.
//

import SwiftUI

struct StateUIView: View {
    
    @State private var show = true
    
    var body: some View {
        VStack{
            Toggle(isOn: $show, label: {
                Text("Show")
            })
            .padding()
            
            if show {
                Text("Hello, World!")
            }
        }
    }
}

#Preview {
    StateUIView()
}
