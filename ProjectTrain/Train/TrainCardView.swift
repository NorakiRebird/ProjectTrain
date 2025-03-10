//
//  TrainCardView.swift
//  ListesExos
//
//  Created by Rayann chaghla on 05/03/2025.
//


// Une simple view pour les photos mettre une constante avec mon tableau avec un nom par exemple "imageTrainInfo" puis mes petis reglage photo

import SwiftUI

struct TrainCardView: View {
    let imageTrainInfo: trainInfo
    var body: some View {
        
            Image(imageTrainInfo.imageName)
                .resizable()
                .frame(height: 150)
                .cornerRadius(15)
        
    }
}

#Preview {
    TrainCardView(imageTrainInfo: trainInfos[0])
}

