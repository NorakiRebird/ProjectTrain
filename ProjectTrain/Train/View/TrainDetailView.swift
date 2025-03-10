//
//  TrainDetailView.swift
//  ListesExos
//
//  Created by Rayann chaghla on 04/03/2025.
//

import SwiftUI



struct TrainDetailView: View {
    let trainInfo: trainInfo
    
    @EnvironmentObject var combienDeBagage: UserBagage
    
    var body: some View {
        VStack( alignment: .center){
            Image(trainInfo.imageName)
                .resizable()
                .scaledToFill()
                .frame(height: 200)
                .cornerRadius(15)
            
                    HStack{
                        Text(trainInfo.name)
                            .foregroundColor(.primary)
                            .font(.headline)
                        Spacer()
                        Text(trainInfo.destination)
                            .font(.headline)
                            .foregroundColor(.primary)
                    }
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(13)
                    .padding()
                   
            Spacer()
                
            
            
            VStack {
                
                HStack {
                    Button {
                        combienDeBagage.ajouterBagage()
                    } label: {
                        Image(systemName: "bag.badge.plus")
                            .font(.title)
                        
                    }
                    Text(" Combien de bagages ? \(combienDeBagage.nombreBagage)")
                        .foregroundColor(.primary)
                    
                    
                    Button {
                        combienDeBagage.retirerBagage()
                    } label: {
                        Image(systemName: "bag.badge.minus")
                            .font(.title)
                        
                    }
                    
                 
                }
                Spacer()
                
                Button {
                    combienDeBagage.resetBagage()
                } label: {
                    Image(systemName: "bag")
                        .font(.title)
                    
                }
            }
            .padding(.vertical, 50)
            
           
                        
        }
        .padding(.horizontal)
        
    }
}

#Preview {
    TrainDetailView(trainInfo: trainInfos[0])
        .environmentObject(UserBagage())
}



