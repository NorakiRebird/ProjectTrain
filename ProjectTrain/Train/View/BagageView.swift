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
        VStack {
           
            Image(systemName: "bag.fill")
                .font(.system(size: 90))
            
            Text( " Vous avez : \(userBagage.nombreBagage.description) bagages")
    
        }
    }
}

#Preview {
    BagageView(traininfo: trainInfos[0])
        .environmentObject(UserBagage())
}
