//
//  ExtensionLocationData.swift
//  Voyage
//
//  Created by Rayann chaghla on 09/03/2025.
//

import Foundation
import MapKit

// Extension de Coordonée GPS en static
extension CLLocationCoordinate2D {
    // Gare du nord
    static let GDN = CLLocationCoordinate2D(latitude: 48.8443, longitude: 1.0665)
    // Gare de Lyon
    static let GDL = CLLocationCoordinate2D(latitude:  45.749493, longitude: 4.825881)
    // Gare de Toulouse
    static let GTM = CLLocationCoordinate2D(latitude: 43.6111, longitude: 1.4531)
    // Gare de Marseille
    static let GDM = CLLocationCoordinate2D(latitude: 43.6111, longitude: 1.4531)
    // Gare Lille Flandre
    static let GLF = CLLocationCoordinate2D(latitude: 50.6360, longitude: 3.0701)
}
