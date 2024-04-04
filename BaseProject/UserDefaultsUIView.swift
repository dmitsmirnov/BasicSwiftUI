//
//  UserDefaultsUIView.swift
//  BaseProject
//
//  Created by dmitsmirnov on 25.03.2024.
//

import SwiftUI

struct UserInfo: Codable {
    var firstName: String
    var lastName: String
}

struct UserDefaultsUIView: View {
    
    @State private var taps = UserDefaults.standard.integer(forKey: "Tap")
    
    @State private var user = UserInfo(firstName: "Dmitry", lastName: "Smirnov")
    
    var body: some View {
        VStack {
            Button(action: {
                self.taps += 1
                UserDefaults.standard.set(self.taps, forKey: "Tap")
            }, label: {
                Text("Taps: \(taps)")
            })
            
            Button("Save user") {
                let encoder = JSONEncoder()
                if let data = try? encoder.encode(self.user) {
                    UserDefaults.standard.set(data, forKey: "userInfo")
                }
            }
            
        }
    }
}

#Preview {
    UserDefaultsUIView()
}
