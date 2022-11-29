//
//  kaususApp.swift
//  kausus
//
//  Created by Ilja Stepanow on 10.09.22.
//

import SwiftUI

@main
struct kaususApp: App {
    
    init() {
        //TODO: add something to db
        let Tür = Noun(context: moc)
        Tür.id = UUID()
        Tür.wurzel = "Tür"
        
        try? moc.save()
    }
    
    @Environment(\.managedObjectContext) var moc
    
    @StateObject private var dataController = DataController()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
