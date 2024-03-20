//
//  Lists2UIView.swift
//  BaseProject
//
//  Created by dmitsmirnov on 19.03.2024.
//

import SwiftUI

struct Lists2UIView: View {
    
    @State private var users = ["Dima", "Tania", "Alisa", "Max"]
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(users, id: \.self) { user in
                    Text(user)
                }
                //.onDelete(perform: delete)
                .onDelete(perform: { indexSet in
                    users.remove(atOffsets: indexSet)
                })
                .onMove(perform: { indices, newOffset in
                    users.move(fromOffsets: indices, toOffset: newOffset)
                })
            }
            .navigationBarItems(trailing: EditButton())
        }
        
    }
    
    func delete(at offsets: IndexSet) {
        users.remove(atOffsets: offsets)
    }
}

#Preview {
    Lists2UIView()
}
