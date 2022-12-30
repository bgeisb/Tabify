//
//  View.swift
//  
//
//  Created by Benedikt Geisberger on 29.12.22.
//

import SwiftUI

extension View {
    @ViewBuilder func visibility(_ visibility: Visibility) -> some View {
        switch visibility {
        case .visible:
            self.transition(
                .move(edge: .bottom)
            )
        case .invisible:
            hidden().transition(
                .move(edge: .bottom)
            )
        }
    }
    
    public func tabItem<Item: TabifyItem>(for item: Item) -> some View {
        return self.modifier(ItemViewModifier(item: item))
    }
}
