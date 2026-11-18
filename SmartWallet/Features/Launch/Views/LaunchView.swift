//
//  LaunchView.swift
//  SmartWallet
//
//  Created by Ricky Singh on 11/18/26.
//

import SwiftUI
import Lottie

struct LaunchView: View {
    @State private var isActive = false
    var body: some View {
        if isActive{
            TabsView()
        }
        else{
            VStack{
                LottieView(animation: .named("WalletAnimation")).playing()
                Spacer().frame(height: 200)
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.2){
                    withAnimation{
                        isActive.toggle()
                    }
                }
            }
        }
    }
}

#Preview {
    LaunchView()
}
