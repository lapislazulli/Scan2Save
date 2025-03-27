//
//  Receipt+ExpenseLogs.swift
//  AIExpenseTracker
//
//  Created by Asmae ‎ on 19/03/2025.
//

import AIReceiptScanner
import Foundation


extension Receipt {
    
    var expenseLogs: [ExpenseLog] {
        (items ?? []).map {
            .init(id: $0.id.uuidString,
                  name: "\($0.quantity > 1 ? "\(Int($0.quantity)) x " : "")\($0.name)",
                  category: $0.category,
                  amount: $0.price,
                  currency: currency ?? "USD",
                  date: date ?? .now)
            
        }
    }
    
}

