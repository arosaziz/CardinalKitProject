//
//  StudyTableItem.swift
//
//  Created for the CardinalKit Framework.
//  Copyright © 2019 Stanford University. All rights reserved.
//

import Foundation
import UIKit
import ResearchKit

enum StudyTableItem: Int {
    
    static var allValues: [StudyTableItem] {
        var index = 0
        return Array (
            AnyIterator {
                let returnedElement = self.init(rawValue: index)
                index = index + 1
                return returnedElement
            }
        )
    }

    // table items
    case beforePicture, afterPicture

    var task: ORKOrderedTask {
        switch self {
        case .beforePicture:
            return StudyTasks.beforePictureTask
        case .afterPicture:
            return StudyTasks.afterPictureTask
        }
    }

    var title: String {
        switch self {
        case .beforePicture:
            return "Before Picture"
        case .afterPicture:
            return "After Picture"
        }
    }

    var subtitle: String {
        switch self {
        case .beforePicture:
            return "Take a before picture."
        case .afterPicture:
            return "Take an after picture."
        }
    }

    var image: UIImage? {
        switch self {
        case .beforePicture:
            return UIImage(named: "camera.png")
        default:
            return UIImage(named: "camera.png")
        }
    }
    
//    case coffee
//
//    var task: ORKOrderedTask {
//        switch self {
//        case .coffee:
//            return StudyTasks.coffeeTask
//        }
//    }
//
//    var title: String {
//        switch self {
//        case .coffee:
//            return "Coffee Task"
//        }
//    }
//
//    var subtitle: String {
//        switch self {
//        case .coffee:
//            return "Record your coffee intake for the day."
//        }
//    }
//
//    var image: UIImage? {
//        switch self {
//        case .coffee:
//            return UIImage(named: "CoffeeIcon")
//        }
//    }
}
