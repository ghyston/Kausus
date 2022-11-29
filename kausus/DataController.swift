//
//  DataController.swift
//  kausus
//
//  Created by Ilja Stepanow on 20.09.22.
//

import Foundation
import CoreData

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "Kausus")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error { // that is a weird syntax
                print ("Error to load data\(error.localizedDescription)")
            }
        }
    }
}
