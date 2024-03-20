//
//  TextsView.swift
//  BaseProject
//
//  Created by dmitsmirnov on 18.03.2024.
//

import SwiftUI

struct TextsView: View {
    var body: some View {
        Text("Spartak chempion! Spartak chempion! Spartak chempion! Spartak chempion! Spartak chempion! ")
            .tracking(3)
            .lineLimit(nil)
            .truncationMode(.middle)
            .font(.largeTitle)
            .multilineTextAlignment(.center)
            .lineSpacing(10)
            .padding()
            .background(Color.red)
            .padding()
            .background(Color.blue)
        
    }
}

#Preview {
    TextsView()
}
