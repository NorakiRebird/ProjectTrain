//
//  ProjectTrainApp.swift
//  ProjectTrain
//
//  Created by Rayann chaghla on 10/03/2025.
//

import SwiftUI

@main
struct ProjectTrainApp: App {
    
 @StateObject private var userBagage = UserBagage()
    
    var body: some Scene {
        WindowGroup {
            LandingScreenView()
                .environmentObject(userBagage)
        }
    }
}
