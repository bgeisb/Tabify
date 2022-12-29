//
//  BarStyle.swift
//  
//
//  Created by Benedikt Geisberger on 29.12.22.
//

import SwiftUI

import SwiftUI

public protocol BarStyle {
    associatedtype Content: View

    func bar(with geometry: GeometryProxy, itemsContainer: @escaping () -> AnyView) -> Content
}

extension BarStyle {
    func genericBar(with geometry: GeometryProxy, itemsContainer: @escaping () -> AnyView) -> AnyView {
        return .init(self.bar(with: geometry, itemsContainer: itemsContainer))
    }
}
