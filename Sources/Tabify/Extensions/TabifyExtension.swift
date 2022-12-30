//
//  Tabify.swift
//  
//
//  Created by Benedikt Geisberger on 29.12.22.
//

import SwiftUI

extension Tabify {
    public func itemStyle<ItemStyleType: ItemStyle>(style: ItemStyleType) -> Self {
        var _self = self
        _self.itemStyle = .init(itemStyle: style)
        return _self
    }
    
    public func barStyle<BarStyleType: BarStyle>(style: BarStyleType) -> Self {
        var _self = self
        _self.barStyle = .init(barStyle: style)
        return _self
    }
}
