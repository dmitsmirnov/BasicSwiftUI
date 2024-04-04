//
//  MyExpensesAddUIView.swift
//  BaseProject
//
//  Created by dmitsmirnov on 26.03.2024.
//

import SwiftUI

struct MyExpensesAddUIView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @ObservedObject var expenses: Expenses
    
    @State private var name: String = ""
    @State private var type: String = "Personal"
    @State private var amount: String = ""
    
    static let types = ["Personal", "Bussiness"]
    
    
    
    var body: some View {
        NavigationStack {
            Form {
                TextField("Enter expenses", text: $name)
                Picker("Enter type", selection: $type) {
                    ForEach(Self.types, id: \.self) {
                        Text($0)
                    }
                }
                TextField("Enter amount", text: $amount)
                    .keyboardType(.numberPad)
            }
            .navigationBarTitle("Add")
            .navigationBarItems(trailing: Button(action: {
                if let amountCount = Int(self.amount) {
                    let item = ExpensesItem(name: self.name, type: self.type, amout: amountCount)
                    expenses.items.append(item)
                    self.dismiss.callAsFunction()
                }
            }, label: {
                Text("Save")
            }))
        }
        
    }
}

#Preview {
    MyExpensesAddUIView(expenses: Expenses())
}
