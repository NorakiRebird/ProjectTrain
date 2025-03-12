//
//  Background.swift
//  ProjectTrain
//
//  Created by Rayann chaghla on 10/03/2025.
//
import SwiftUI

struct BackgroundReutilisable: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
           
            ScrollView {
                ForEach(0..<20) {_ in
                    HStack {
                        VStack {
                            Rectangle()
                                .foregroundStyle(.gray.opacity(0.4))
                                .frame(width: 5, height: 200)
                            
                        }
                        Rectangle()
                            .foregroundStyle(.gray.opacity(0.4))
                            .frame(width: 5, height: 200)
                        VStack {
                            Rectangle()
                                .foregroundStyle(.gray.opacity(0.4))
                                .frame(width: 5, height: 200)
                            
                        }
                       
                        
                    }
                    VStack {
                        Rectangle()
                            .foregroundStyle(.gray.opacity(0.4))
                            .frame(width: 5, height: 200)
                        
                    }
                    Rectangle()
                        .foregroundStyle(.gray.opacity(0.4))
                        .frame(width: 5, height: 200)
                    VStack {
                        Rectangle()
                            .foregroundStyle(.gray.opacity(0.4))
                            .frame(width: 5, height: 200)
                        
                    }
                   
              
                    
                }
            }
        }
    }
}

#Preview {
    BackgroundReutilisable()
}
