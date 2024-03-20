//
//  AlertUIView.swift
//  BaseProject
//
//  Created by dmitsmirnov on 20.03.2024.
//

import SwiftUI

struct AlertUIView: View {
    
    @State private var showAlert  = false
    @State private var showAlert2 = false
    @State private var showAlert3 = false
    
    var body: some View {
        
        VStack {
            
            Button("show alert 1") {
                self.showAlert = true
            }
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Swift UI"),
                      message: Text("Hello"),
                      dismissButton: .default(Text("Got it")))
            }.padding()
            
            Button("show alert 2") {
                self.showAlert2 = true
            }
            .alert(isPresented: $showAlert2) {
                Alert(title: Text("UIKit"),
                      message: Text("Hello alert 2"),
                      dismissButton: .cancel())
            }
            .padding()
            
            Button("Delete") {
                self.showAlert3 = true
            }
            .alert(isPresented: $showAlert3) {
                Alert(title: Text("Warning"),
                      message: Text("Are you sure?"), 
                      primaryButton: .destructive(Text("Delete")) {
                    
                    print("Deleting...")
                    
                }, secondaryButton: .cancel())
            }
            
        }
        
    }
}

#Preview {
    AlertUIView()
}
