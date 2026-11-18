//
//  TabsView.swift
//  SmartWallet
//
//  Created by Ricky Singh on 11/18/26.
//

import SwiftUI

struct TabsView: View {
    enum Tabs { case home, scan, stores }
    @State private var selectedTab: Tabs = .home
    var body: some View {
        TabView(selection: $selectedTab) {
            Tab("Home", systemImage: "house", value: .home) {
                HomeView()
            }
            Tab("Scan", systemImage: "barcode.viewfinder", value: .scan) {
                Text("Scan")
            }
            Tab("Stores", systemImage: "storefront", value: .stores) {
                Text("Stores")
            }

        }
    }
}

#Preview {
    TabsView()
}
