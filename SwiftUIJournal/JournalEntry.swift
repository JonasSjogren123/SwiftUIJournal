//
//  JournalEntry.swift
//  SwiftUIJournal
//
//  Created by Jonas Sjögren on 2022-12-22.
//

import Foundation


struct JournalEntry : Identifiable, Equatable {
    
    let id = UUID()
    var content : String
    var date : Date  = Date()
    
}
