//
//  ItemViewModifier.swift
//  
//
//  Created by Benedikt Geisberger on 29.12.22.
//

import SwiftUI

struct ItemViewModifier<Item: TabifyItem>: ViewModifier {
    @EnvironmentObject private var selectionObject: SelectionManager<Item>
    
    let item: Item
    
    func body(content: Content) -> some View {
        Group {
            if self.item == self.selectionObject.selection {
                content
            } else {
                Color.clear
            }
        }
        .preference(key: CustomPreferenceKey.self, value: [self.item])
    }
}
