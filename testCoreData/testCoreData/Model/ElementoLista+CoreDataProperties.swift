//
//  ElementoLista+CoreDataProperties.swift
//  testCoreData
//
//  Created by Joaquin Villarreal on 22/03/2024.
//
//

import Foundation
import CoreData


extension ElementoLista {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ElementoLista> {
        return NSFetchRequest<ElementoLista>(entityName: "ElementoLista")
    }

    @NSManaged public var nombre: String?

}

extension ElementoLista : Identifiable {

}
