//
//  CustomPreferenceKey.swift
//  
//
//  Created by Benedikt Geisberger on 29.12.22.
//

import SwiftUI

struct CustomPreferenceKey<Item: TabifyItem>: PreferenceKey {
    static var defaultValue: [Item] {
        return .init()
    }
    
    static func reduce(value: inout [Item], nextValue: () -> [Item]) {
        value.append(contentsOf: nextValue())
    }
}
