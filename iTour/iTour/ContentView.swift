//
//  ContentView.swift
//  iTour
//
//  Created by Suhas Pathak on 27/10/23.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @Environment(\.modelContext) var modelContext
    @Query var destinations: [Destination]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(destinations) { desination in
                    VStack(alignment: .leading) {
                    Text(desination.name)
                        .font(.headline)
                    
                    Text(desination.date.formatted(date: .long, time: .shortened))
                }
            }
                .onDelete(perform: deleteDestinations)
        }
        .navigationTitle("iTour")
        .toolbar {
            Button("Add Sample", action: addSample)
        }
    }
    }
    
    func addSample() {
        let rome = Destination(name: "Rome")
        
        let florence = Destination(name: "Florence")
        let naples = Destination(name: "Naples")
        modelContext.insert(rome)
        modelContext.insert(florence)
        modelContext.insert(naples)
    }
    
    func deleteDestinations(_ indexSet: IndexSet) {
        
        for index in indexSet {
            let destination = destinations[index]
            modelContext.delete(destination)
        }
    }
}

#Preview {
    ContentView()
}
