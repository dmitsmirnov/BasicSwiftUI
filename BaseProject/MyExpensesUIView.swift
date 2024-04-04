//
//  MyExpensesUIView.swift
//  BaseProject
//
//  Created by dmitsmirnov on 25.03.2024.
//

import SwiftUI

struct ExpensesItem: Identifiable, Codable {
    let id = UUID()
    var name: String
    var type: String
    var amout: Int
}

class Expenses: ObservableObject {
    @Published var items = [ExpensesItem]() {
        // save values
        didSet {
            let encoder = JSONEncoder()
            if let data = try? encoder.encode(items) {
                UserDefaults.standard.setValue(data, forKey: "Items")
            }
        }
    }
    
    // load values
    init() {
        if let items = UserDefaults.standard.data(forKey: "Items") {
            let decoder = JSONDecoder()
            if let data = try? decoder.decode([ExpensesItem].self, from: items) {
                self.items = data
                return
            }
        }
        
    }
    
}

struct MyExpensesUIView: View {
    
    @ObservedObject private var expenses = Expenses()
    
    @State private var showAddView = false
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(expenses.items) { item in
                    HStack {
                        VStack(alignment: .leading)
                        {
                            Text(item.name)
                                .font(.headline)
                            Text(item.type)
                                .font(.subheadline)
                        }
                        Spacer()
                        Text("$\(item.amout)")
                    }
                    
                }
                .onDelete(perform: { indexSet in
                    expenses.items.remove(atOffsets: indexSet)
                })
            }
            .navigationBarTitle("Expenses")
            .navigationBarItems(trailing: Button(action: {
//                let new = ExpensesItem(name: "123", type: "", amout: 100)
//                expenses.items.append(new)
                self.showAddView.toggle()
            }, label: {
                Image(systemName: "plus")
            })
                .sheet(isPresented: $showAddView, content: {
                    MyExpensesAddUIView(expenses: self.expenses)
                }))
        }
    }
}

#Preview {
    MyExpensesUIView()
}
