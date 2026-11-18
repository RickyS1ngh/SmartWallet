//
//  HomeHeaderView.swift
//  SmartWallet
//
//  Created by Ricky Singh on 11/18/26.
//

import SwiftUI

struct HomeHeaderView: View {
    @State private var searchItem: String = ""
    var body: some View {
        VStack {

            Text(" SmartWallet")
                .font(.custom("Lighton", size: 25))
                .foregroundStyle(Color.white)
                .frame(maxWidth: .infinity, alignment: .leading)
            Spacer().frame(height: 20)
            HStack {
                Spacer().frame(width: 10)
                Image(systemName: "magnifyingglass")
                TextField("Search for Products", text: $searchItem, )
                    .textFieldStyle(.plain)
                    .foregroundStyle(Color.black)
                    .frame(height: 55)
            }

            .frame(maxWidth: 350, maxHeight: 10)
            .padding()
            .background(Color.white)
            .clipShape(Capsule())

        }.frame(maxWidth: .infinity, maxHeight: 200)

            .background(
                LinearGradient(
                    colors: [Color.blue, Color.indigo],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
            )

    }
}

#Preview {
    HomeHeaderView()
}
