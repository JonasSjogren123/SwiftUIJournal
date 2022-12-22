//
//  Journal.swift
//  SwiftUIJournal
//
//  Created by Jonas Sjögren on 2022-12-22.
//

import Foundation


class Journal : ObservableObject {
    
    @Published var entries = [JournalEntry]()
    
    init() {
        addMockData()
    }
    
    func addMockData() {
        entries.append(JournalEntry(content: "Åt mat"))
        entries.append(JournalEntry(content: "Sov"))
        entries.append(JournalEntry(content: "Programerade"))
        entries.append(JournalEntry(content: "Badade"))
    }
    
    func update(entry: JournalEntry, content: String) {
        if let index = entries.firstIndex(of: entry) {
        entries[index].content = content
        }
    }
}
