//
//  ContentView.swift
//  AIExpenseTracker
//
//  Created by Asmae ‎ on 19/03/2025.
//
import SwiftUI
import Charts

struct ContentView: View {
    
    @State var vm = LogListViewModel()
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        #if os(macOS)
        splitView
        #elseif os(visionOS)
        tabView
        #else
        switch horizontalSizeClass {
        case .compact: tabView
        default: splitView
        }
        #endif
    }
    
    var tabView: some View {
        TabView {
            NavigationStack {
                LogListContainerView(vm: $vm)
            }
            .tabItem {
                Label("Expenses", systemImage: "tray")
            }
            .tag(0)
            
            NavigationStack {
                SignInView() // This view creates a new user in Firebase Auth
            }
            .tabItem {
                Label("Sign In", systemImage: "arrow.right.circle.fill")
            }
            .tag(1)
            
            NavigationStack {
                ExpenseReceiptScannerView()
            }
            .tabItem {
                Label("Receipt Scanner", systemImage: "eye")
            }
            .tag(2)
            
            NavigationStack {
                ChartTabView() // New chart view tab
            }
            .tabItem {
                Label("Charts", systemImage: "chart.pie.fill")
            }
            .tag(3)
        }
    }
    
    var splitView: some View {
        NavigationSplitView {
            List {
                NavigationLink(destination: LogListContainerView(vm: $vm)) {
                    Label("Dashboard", systemImage: "tray")
                }
                
                NavigationLink(destination: SignInView()) {
                    Label("Sign In", systemImage: "arrow.right.circle.fill")
                }
                
                NavigationLink(destination: ExpenseReceiptScannerView()) {
                    Label("Receipt Scanner", systemImage: "eye")
                }
                
                NavigationLink(destination: ChartTabView()) {  // Fixed syntax
                    Label("Charts", systemImage: "chart.pie.fill")
                }
            }
        } detail: {
            LogListContainerView(vm: $vm)
        }
        .navigationTitle("Scan2Save")
    }
}

// New view to contain both chart types
struct ChartTabView: View {
    @State private var chartType: ChartType = .bar
    
    // Sample data
    private let options: [Option] = [
        .init(category: .food, amount: 300),
        .init(category: .entertainment, amount: 1000)
    ]
    
    var body: some View {
        VStack {
            Picker("Chart Type", selection: $chartType) {
                Text("Bar").tag(ChartType.bar)
                Text("Pie").tag(ChartType.pie)
            }
            .pickerStyle(.segmented)
            .padding()
            
            switch chartType {
            case .bar:
                BarChartView(options: options)
            case .pie:
                PieChartView(options: options)
            }
            
            Spacer()
        }
        .navigationTitle("Expense Charts")
    }
}

#Preview {
    ContentView()
}
