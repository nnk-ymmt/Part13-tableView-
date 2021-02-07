//
//  Fruit+CoreDataProperties.swift
//  Part13-tableView-
//
//  Created by 山本ののか on 2021/02/07.
//
//

import Foundation
import CoreData


extension Fruit {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Fruit> {
        return NSFetchRequest<Fruit>(entityName: "Fruit")
    }

    @NSManaged public var name: String?
    @NSManaged public var isChecked: Bool
}

extension Fruit : Identifiable {

}
