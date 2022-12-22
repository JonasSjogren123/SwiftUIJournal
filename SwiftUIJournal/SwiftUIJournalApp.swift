//
//  SwiftUIJournalApp.swift
//  SwiftUIJournal
//
//  Created by Jonas Sjögren on 2022-12-22.
//

import SwiftUI

@main
struct SwiftUIJournalApp: App {
    
    @StateObject var journal = Journal()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(journal)
        }
    }
}
