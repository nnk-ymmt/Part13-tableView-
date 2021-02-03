//
//  Fruit.swift
//  Part13-tableView-
//
//  Created by akio0911 on 2021/01/12.
//

import Foundation
import CoreData

//enum Fruit {
//    case apple
//    case orange
//    case banana
//    case pineapple
//
//    var name: String {
//        switch self {
//        case .apple: return "りんご"
//        case .orange: return "みかん"
//        case .banana: return "バナナ"
//        case .pineapple: return "パイナップル"
//        }
//    }
//
//    var isChecked: Bool {
//        switch self {
//        case .apple: return false
//        case .orange: return true
//        case .banana: return false
//        case .pineapple: return true
//        }
//    }
//}

//struct Fruit: Codable {
//    var name: String
//    var isChecked: Bool
//}

class Fruit: NSManagedObject {
    @NSManaged var name: String
    @NSManaged var isChecked: Bool
}
