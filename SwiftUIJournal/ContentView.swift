//
//  ContentView.swift
//  SwiftUIJournal
//
//  Created by Jonas Sjögren on 2022-12-22.
//

import SwiftUI

// Gör en att göra app eller en shopinglist app

struct ContentView: View {
    //@StateObject var journal = Journal()
    @EnvironmentObject var journal : Journal

    
    
    var body: some View {
            NavigationView{
                
            List() {
                ForEach (journal.entries) {entry in
                    NavigationLink(destination: JournalEntryView(journal: journal, entry: entry) ) {
                        RowView(entry: entry)
                    }
                }
                .onDelete() { indexSet in
                    delete(indexSet: indexSet)
                }
                .navigationBarTitle("Journal")
                .navigationBarItems(trailing: NavigationLink(destination: JournalEntryView(journal: journal)) {
                    Image(systemName: "plus.circle")
                })
            }
        }
    }
    
    func delete(indexSet: IndexSet) {
        journal.entries.remove(atOffsets: indexSet)
        
    }
    
}

struct RowView : View {
    var entry : JournalEntry
    
    var date : String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        
        return dateFormatter.string(from: entry.date)
    }
    
    var body: some View {
        HStack {
            Text("\(date)")
            Spacer()
            Text(entry.content.prefix(7) + "...")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
