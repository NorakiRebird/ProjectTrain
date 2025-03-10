//
//  TravelView.swift
//  ListesExos
//
//  Created by Rayann chaghla on 04/03/2025.
//

import SwiftUI
import MapKit

let locationManager = CLLocationManager()

struct TravelView: View {
    
    // Appellé mon tableau
    let traininfo: trainInfo
    @State private var searchText = ""
    
    var searchResults: [trainInfo] {
           if searchText.isEmpty {
               return trainInfos
           } else {
               return trainInfos.filter { $0.destination.lowercased().contains(searchText.lowercased()) }
           }
       }
       


    
    var body: some View {
        // Mettre map {}
        ZStack {
            Map {
                // Annotation qui indique un text une coordonée "Gare du nord et un fixement du text en bas
                Annotation("Gare Du Nord", coordinate: .GDN, anchor: .bottom) {
                    Image(systemName: "tram.fill")
                        .padding(4)
                        .foregroundStyle(.white)
                        .background(Color.indigo)
                        .cornerRadius(4)
                }
                // Annotation qui indique un text une coordonée "Gare de Toulouse et un fixement du text en bas
                Annotation("Gare De Lyon", coordinate: .GDL, anchor: .bottom) {
                    Image(systemName: "tram.fill")
                        .padding(4)
                        .foregroundStyle(.white)
                        .background(Color.indigo)
                        .cornerRadius(4)
                }
                // Relié deux itineraire de deux Station ( Par exemple la c'est un tableau qui relie "Gare du nord, "Gare De toulouse
                MapPolyline(coordinates: [.GDN, .GDL])
                    .stroke(.blue, lineWidth: 5)
            }
            // Le style de map ( Strandard pour mon app)
            .mapStyle(.standard)
            .onAppear{
                locationManager.requestWhenInUseAuthorization()
            }
            .mapControls {
                MapUserLocationButton()
                MapCompass()
                MapPitchToggle()
                MapScaleView()
            }
            VStack {
                TextField("Rechercher une destination", text: $searchText)
                    .padding(12)
                    .background(Color.white)
                    .cornerRadius(15)
                    .padding(.horizontal, 20)
                    .padding(.top, 10)
                    .shadow(radius: 5)
                
                Spacer()
                
                if !searchText.isEmpty {
                    List {
                        ForEach(searchResults) { train in
                            VStack {
                                HStack {
                                    Image(train.imageName)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 200, height: 150)
                                        .cornerRadius(13)
                                    VStack {
                                        Text(train.destination)
                                            .font(.headline)
                                            .padding()
                                        Text(train.departure)
                                            .font(.subheadline)
                                        Text(train.name)
                                            .font(.subheadline)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
       
        }
      }
    

#Preview {
    TravelView(traininfo: trainInfos[0])
}





