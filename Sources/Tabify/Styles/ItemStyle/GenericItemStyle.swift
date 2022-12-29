//
//  GenericItemStyle.swift
//  
//
//  Created by Benedikt Geisberger on 29.12.22.
//

import SwiftUI

public struct GenericItemStyle: ItemStyle {
    private let _erasedItem: (String, String, Bool) -> AnyView
    
    public init<ItemStyleType: ItemStyle>(itemStyle: ItemStyleType) {
        self._erasedItem = itemStyle.genericItem(icon:title:isSelected:)
    }
    
    public func item(icon: String, title: String, isSelected: Bool) -> some View {
        return self._erasedItem(icon, title, isSelected)
    }
}
