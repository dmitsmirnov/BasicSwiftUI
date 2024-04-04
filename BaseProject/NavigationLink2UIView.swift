//
//  NavigationLink2UIView.swift
//  BaseProject
//
//  Created by dmitsmirnov on 22.03.2024.
//

import SwiftUI

struct Dog: Identifiable {
    var id = UUID()
    var name: String
    var image: String
}

struct DogView: View {
    
    var dog: Dog
    
    var body: some View {
        
        if dog.name == "Haski" {
            VStack {
                Text("This is \(dog.name)")
                Text("\(dog.image)")
            }
        } else {
            HStack {
                Text("This is \(dog.name)")
                Text("\(dog.image)")
            }
        }
    
    }
}

struct DogRow: View {
    
    var dog: Dog
    
    var body: some View {
        HStack {
            Text("\(dog.name)")
                .foregroundStyle(.red)
            Spacer()
            Text("\(dog.image)")
                .font(.subheadline)
        }
    }
}


struct NavigationLink2UIView: View {
    
    var body: some View {
        
        let first = Dog(name: "Ovcharka", image: "🦇")
        let dogs: [Dog] = [first, Dog(name: "Haski", image: "🐔")]
        
        NavigationView {
            List(dogs) { dog in
                NavigationLink(destination: DogView(dog: dog)) {
                    //Text("\(dog.name)")
                    DogRow(dog: dog)
                }
                
            }
        }
        
    }
}

#Preview {
    NavigationLink2UIView()
}
