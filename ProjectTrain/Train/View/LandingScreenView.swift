 //
//  LandingScreenView.swift
//  ListesExos
//
//  Created by Rayann chaghla on 04/03/2025.

import SwiftUI

class UserBagage: ObservableObject {
    // Crée  Deux published un Pour nombreDeBagage et une autre pour une description
    @Published var nombreBagage: Int = 0
    @Published var description = ""
    
        //Crée trois fonction
    // 1. un bouton plus
    func ajouterBagage() {
        self.nombreBagage += 1
        self.description = String(nombreBagage)
    }
    
    // 2. un bouton soustraction mais qui bloque à 0 pour pas allez plus loin
    func retirerBagage() {
        if nombreBagage > 0 {
            nombreBagage -= 1
            self.description = String(nombreBagage)
        }
    }
    
    // 3. un bouton qui remet à 0
    func resetBagage() {
        self.nombreBagage = 0
        self.description = String(nombreBagage)
    }
}


struct LandingScreenView: View {
    
    // Ajouter un Objet d'environnement afin de permettre de voir la mise à jour du nombre de bagages qu'on rajoute
    @EnvironmentObject var combienDeBagage: UserBagage

    var body: some View {
        
        // Trois Tabs dans la TabView {}
        TabView {
            // 1. écran d'atterrissage
            Tab("Train", systemImage: "tram") {
                TrainView(trainInfo: trainInfos[0])
            }
            // 2. Maps trajet
            Tab("Vos reservations", systemImage: "calendar.badge.clock") {
                TravelView(traininfo: trainInfos[0])
            }
            // Nombre de Bagages + un Object D'environement pour voir le nombre de bagages
            Tab("Bagages", systemImage: "suitcase") {
                BagageView(traininfo: trainInfos[0])
                    .environmentObject(combienDeBagage)
            }
            // Nombre de bagages
            .badge(combienDeBagage.nombreBagage)
        }
        .onAppear() {
            UITabBar.appearance().tintColor = .darkGray
        }
        .tint(.appBlue)
      
        
    }
}

#Preview {
    LandingScreenView()
        .environmentObject(UserBagage())
}
