//
//  EditDestinationView.swift
//  iTour
//
//  Created by Suhas Pathak on 27/10/23.
//

import SwiftUI
import SwiftData

struct EditDestinationView: View {
    
    var destination: Destination
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    do {
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        let container = try ModelContainer(for: Destination.self, configurations: config)
        let example = Destination(name: "Example Destination", details: "Example details go here will automatically expand vertically as they are edited.")
        return  EditDestinationView(destination: example).modelContainer(container)
    } catch {
        fatalError("Failed to create model container.")
    }
   
}
