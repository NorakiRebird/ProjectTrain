//
//  BagageView.swift
//  ListesExos
//
//  Created by Rayann chaghla on 07/03/2025.
//

import SwiftUI
struct BagageView: View {
    let traininfo: trainInfo
  
    @EnvironmentObject var userBagage: UserBagage
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                
                Image(systemName: "bag.fill")
                   
                    .font(.system(size: 90))
                    .foregroundColor(.white.opacity(0.7))
                    .shadow(color: .gray, radius: 10, x: 10, y: 0)
                
                Text( " Vous avez : \(userBagage.nombreBagage.description) bagages")
                    .foregroundColor(.white)
                
            }
        }
    }
}

#Preview {
    BagageView(traininfo: trainInfos[0])
        .environmentObject(UserBagage())
}
