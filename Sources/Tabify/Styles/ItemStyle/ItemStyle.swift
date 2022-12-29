//
//  ItemStyle.swift
//  
//
//  Created by Benedikt Geisberger on 29.12.22.
//

import SwiftUI

public protocol ItemStyle {
    associatedtype Content : View
    
    func item(icon: String, title: String, isSelected: Bool) -> Content
}

extension ItemStyle {
    func genericItem(icon: String, title: String, isSelected: Bool) -> AnyView {
        return .init(self.item(icon: icon, title: title, isSelected: isSelected))
    }
}
