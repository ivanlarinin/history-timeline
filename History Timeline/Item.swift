//
//  Item.swift
//  History Timeline
//
//  Created by Ivan Larinin on 2025-02-19.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
