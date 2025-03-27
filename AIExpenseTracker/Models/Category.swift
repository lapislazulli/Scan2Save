//
//  Category.swift
//  
//
//  Created by Asmae ‎ on 19/03/2025.
//

import SwiftUI

enum Category: String, Identifiable, CaseIterable {

    var id: Self { self }
    
    case clothes = "Clothes"
    case flowers = "Flowers"
    case jewellery = "Jewellery"
    case furniture = "Furniture"
    case decoration = "Decoration"
    case bags = "Bags"
    case entertainment = "Entertainment"
    case food = "Food"
    case gifts = "Gifts"
    case health = "Health"
    case desks = "Desks"
    case storage = "Storage"
    case textiles = "Textiles"
    case walldecor = "Wall Decor"
    case accents = "Accents"
    case membershipFees = "Membership Fees"
    case officeSupplies = "Office Supplies"
    case payroll = "Payroll"
    case repairs = "Repairs"
    case rent = "Rent"
    case rentOrMortgagePayments = "Rent or Mortgage Payments"
    case software = "Software"
    case tax = "Tax"
    case travel = "Travel"
    case utilities = "Utilities"
    
    var systemNameIcon: String {
        switch self {
        case .clothes: return "tshirt"
        case .flowers: return "leaf"
        case .jewellery: return "sparkles"
        case .furniture: return "sofa.fill" // Use a similar symbol; adjust as needed.
        case .decoration: return "paintpalette.fill"
        case .bags: return "bag.fill"
        case .entertainment: return "film"
        case .food: return "fork.knife"
        case .gifts: return "gift.fill"
        case .health: return "heart.fill"
        case .desks: return "square.grid.3x2.fill" // Example symbol; change if desired.
        case .storage: return "archivebox.fill"
        case .textiles: return "scissors"
        case .walldecor: return "photo.fill"
        case .accents: return "star.fill"
        case .membershipFees: return "person.2.fill"
        case .officeSupplies: return "folder.fill"
        case .payroll: return "dollarsign.circle.fill"
        case .repairs: return "wrench.fill"
        case .rent: return "house"
        case .rentOrMortgagePayments: return "house.fill"
        case .software: return "app.fill"
        case .tax: return "percent"
        case .travel: return "airplane"
        case .utilities: return "drop.fill"
        }
    }
    
    var color: Color {
        switch self {
        case .clothes: return Color.purple
        case .flowers: return Color.green
        case .jewellery: return Color.yellow
        case .furniture: return Color(red: 0.55, green: 0.27, blue: 0.07) // A brown tone
        case .decoration: return Color.orange
        case .bags: return Color.orange
        case .entertainment: return Color.red
        case .food: return Color.green
        case .gifts: return Color.red
        case .health: return Color.red
        case .desks: return Color.blue
        case .storage: return Color.blue
        case .textiles: return Color.pink
        case .walldecor: return Color.gray
        case .accents: return Color.yellow
        case .membershipFees: return Color.blue
        case .officeSupplies: return Color.orange
        case .payroll: return Color.green
        case .repairs: return Color.gray
        case .rent: return Color.blue
        case .rentOrMortgagePayments: return Color.blue
        case .software: return Color.purple
        case .tax: return Color.red
        case .travel: return Color.blue
        case .utilities: return Color.green
        }
    }
}
