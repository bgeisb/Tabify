//
//  SelectionManager.swift
//  
//
//  Created by Benedikt Geisberger on 29.12.22.
//

import SwiftUI

class SelectionManager<Item: TabifyItem>: ObservableObject {
    @Binding var selection: Item
    
    init(selection: Binding<Item>) {
        self._selection = selection
    }
}
