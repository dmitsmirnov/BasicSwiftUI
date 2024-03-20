//
//  ListsUIView.swift
//  BaseProject
//
//  Created by dmitsmirnov on 19.03.2024.
//

import SwiftUI

struct TaskRow: View {
    var body: some View {
        Text("Some text")
    }
}

struct ListsUIView: View {
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                List {
                    Section(header: Text("header")) {
                        TaskRow()
                        TaskRow()
                        TaskRow()
                    }
                    Section(header: Text("Also header")) {
                        TaskRow()
                        TaskRow()
                        TaskRow()
                    }
                    .listRowBackground(Color.orange)
                }.listStyle(.automatic)
                
                Text("SwiftUI")
                    .padding()
                    .navigationTitle("Welcome")
                    .navigationBarItems(trailing: Button("Help") {
                        print("help tapped")
                    })
            }
        }
    }
}

#Preview {
    ListsUIView()
}
