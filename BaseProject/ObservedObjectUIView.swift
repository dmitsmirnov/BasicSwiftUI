//
//  ObservedObjectUIView.swift
//  BaseProject
//
//  Created by dmitsmirnov on 22.03.2024.
//

import SwiftUI

class User: ObservableObject {
    @Published var firstName = "Dima"
    @Published var lastName = "Smirnov"
}

struct ObservedObjectUIView: View {
    
    @ObservedObject var user = User()
    
    // other view
    @ObservedObject var settings = UserSettings()
    
    var body: some View {
        VStack {
            Text("user is \(user.firstName) \(user.lastName)")
            
            TextField("firts name:", text: $user.firstName)
            TextField("firts name:", text: $user.lastName)
         
            Text("Your score is \(settings.score)")
            
            Button {
                settings.score += 1
            } label: {
                Text("Click")
            }

            
        }
    }
}

#Preview {
    ObservedObjectUIView()
}
