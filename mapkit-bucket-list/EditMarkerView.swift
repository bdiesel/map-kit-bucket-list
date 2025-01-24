//
//  EditMarkerView.swift
//  mapkit-bucket-list
//
//  Created by Brian Diesel on 1/24/25.
//

import SwiftUI

struct EditMarkerView: View {
    @Environment(\.dismiss) var dismiss
    var location: Location
    var onSave: (Location) -> Void

    @State private var name: String
    @State private var description: String
    
    init(location: Location, onSave: @escaping (Location) -> Void) {
        self.location = location
        self.onSave = onSave

        _name = State(initialValue: location.name)
        _description = State(initialValue: location.description)
    }


    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("Place name", text: $name)
                    TextField("Description", text: $description)
                }
            }
            .navigationTitle("Place details")
            .toolbar {
                Button("Save") {
                    var newLocation = location
                    newLocation.id = UUID()
                        newLocation.name = name
                        newLocation.description = description

                        onSave(newLocation)
                        dismiss()
                }
            }
        }
    }
}
#Preview {
    EditMarkerView(location: .example) { _ in }
}
