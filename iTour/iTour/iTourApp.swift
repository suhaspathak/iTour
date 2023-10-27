//
//  iTourApp.swift
//  iTour
//
//  Created by Suhas Pathak on 27/10/23.
//

import SwiftUI
import SwiftData


@main
struct iTourApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Destination.self)
    }
}
