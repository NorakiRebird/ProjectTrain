//
//  TrainView.swift
//  ListesExos
//
//  Created by Rayann chaghla on 04/03/2025.
//
import SwiftUI

struct TrainView: View {
    let trainInfo: trainInfo
    
    var body: some View {
        NavigationStack {
            ZStack {
                BackgroundReutilisable()
                ScrollView {
                    ForEach(trainInfos) { train in
                        NavigationLink(destination: TrainDetailView(trainInfo: trainInfos[0])) {

                            VStack(alignment: .leading, spacing: 10) {
                                VStack {
                                    Text(train.name)
                                        .foregroundColor(.white)
                                        .font(.title)
                                        .bold()
                                        .padding()
                                }
                                
                                TrainCardView(imageTrainInfo: train)
                                
                                VStack {
                                    HStack {
                                        Text("Departure: \(train.departure)")
                                            .font(.headline)
                                            .fontWeight(.light)
                                            .foregroundColor(.white)
                                        Text(train.timeday)
                                            .foregroundColor(.white)
                                            .fontWeight(.light)
                                            .bold()
                                    }
                                }
                                .padding(.vertical, -4)
                                
                                Text("Destination: \(train.destination)")
                                    .foregroundColor(.white)
                                    .fontWeight(.light)
                                    .font(.headline)
                                
                                Divider()
                                    .background(Color.gray)
                                    .frame(maxHeight: 20)
                            }
                        }
                        .padding()
                        .frame(width: 400, height: 350)
                        .padding(.vertical, -30)
                    }
                    .padding()
                    .background(Color.white.opacity(0.1))
                    .navigationTitle("Les Trains et horaires")
                    .navigationBarTitleDisplayMode(.inline)
                }
            }
        }
    }
}

#Preview {
    TrainView(trainInfo: trainInfos[0])
}
