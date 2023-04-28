//
//  Local.swift
//  Challenge5
//
//  Created by Lucas on 13/04/23.
//

import Foundation
import MapKit

struct Local: Identifiable {
    let id = UUID()
    var name: String
    var logo: String
    var latitude: Double
    var longitude: Double
    var descricao: String
    
    var cordenada: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude:  longitude)
    }
}
