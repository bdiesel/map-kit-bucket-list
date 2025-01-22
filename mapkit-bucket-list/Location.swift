//
//  Location.swift
//  mapkit-bucket-list
//
//  Created by Brian Diesel on 1/24/25.
//

import Foundation

struct Location: Codable, Equatable, Identifiable {
    let id: UUID
    var name: String
    var description: String
    var latitude: Double
    var longitude: Double
}
