//
//  SheetUIView.swift
//  BaseProject
//
//  Created by dmitsmirnov on 25.03.2024.
//

import SwiftUI

struct DetailView: View {
    
    @Environment(\.dismiss) var presentationMode
    
    var body: some View {
        VStack {
            Text("Detail view")
            Button(action: {
                self.presentationMode.callAsFunction()
            }, label: {
                Text("Back")
            })
        }
    }
}

struct SheetUIView: View {
    
    @State private var showSheet = false
    
    var body: some View {
        Button(action: {
            self.showSheet.toggle()
        }, label: {
            Text("Show sheet")
        }).sheet(isPresented: $showSheet, content: {
            DetailView()
        })
    }
}

#Preview {
    SheetUIView()
}
