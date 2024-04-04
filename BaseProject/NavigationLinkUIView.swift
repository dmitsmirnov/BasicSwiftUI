//
//  NavigationLinkUIView.swift
//  BaseProject
//
//  Created by dmitsmirnov on 22.03.2024.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        Text("This is second view")
    }
}

struct NavigationLinkUIView: View {
    var body: some View {
        
        NavigationView {
            
            VStack {
                NavigationLink(destination: SecondView()) {
                    Text("go to second view")
                }
                .navigationBarTitle("Navigation view")
            }
            
        }
    }
}

#Preview {
    NavigationLinkUIView()
}
