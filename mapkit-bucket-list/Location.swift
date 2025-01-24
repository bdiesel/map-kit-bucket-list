//
//  Location.swift
//  mapkit-bucket-list
//
//  Created by Brian Diesel on 1/24/25.
//

import Foundation
import MapKit

struct Location: Codable, Equatable, Identifiable {
    var id: UUID
    var name: String
    var description: String
    var latitude: Double
    var longitude: Double
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
    static func ==(lhs: Location, rhs: Location) -> Bool {
        lhs.id == rhs.id
    }
    
    #if DEBUG
        static let example = Location(id: UUID(), name: "The Old Belfry", description: "On the early morning of April 19, 1775, the Belfry rang its bell, summoning the local militia to assemble on the Common to be prepared for the arrival of British soldiers.", latitude: 42.44822, longitude: 71.23085)
    #endif
}
