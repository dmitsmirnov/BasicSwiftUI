//
//  TabUIView.swift
//  BaseProject
//
//  Created by dmitsmirnov on 19.03.2024.
//

import SwiftUI

struct TabUIView: View {
    
    @State private var selection = 1
    
    var body: some View {
        TabView(selection: $selection) {
            Text("One")
                .tabItem {
                    Text("first")
                    Image(systemName: "figure.wave")
                }
            Text("two")
                .tabItem {
                    Text("Second")
                    Image(systemName: "car.circle.fill")
                }
        }
    }
}

#Preview {
    TabUIView()
}
