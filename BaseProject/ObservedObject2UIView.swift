//
//  ObservedObject2UIView.swift
//  BaseProject
//
//  Created by dmitsmirnov on 22.03.2024.
//

import SwiftUI

class UserSettings: ObservableObject {
    @Published var score = 0
}

struct ObservedObject2UIView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    ObservedObject2UIView()
}
