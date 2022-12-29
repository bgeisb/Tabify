//
//  GenericBarStyle.swift
//  
//
//  Created by Benedikt Geisberger on 29.12.22.
//

import SwiftUI

public struct GenericBarStyle: BarStyle {
    private let _erasedBar: (GeometryProxy, @escaping () -> AnyView) -> AnyView
        
    public init<BarStyleType: BarStyle>(barStyle: BarStyleType) {
        self._erasedBar = barStyle.genericBar
    }
    
    public func bar(with geometry: GeometryProxy, itemsContainer: @escaping () -> AnyView) -> some View {
        return self._erasedBar(geometry, itemsContainer)
    }
}
