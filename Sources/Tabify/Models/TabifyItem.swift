//
//  TabifyItem.swift
//  
//
//  Created by Benedikt Geisberger on 29.12.22.
//

import Foundation

public protocol TabifyItem: Hashable {
    var title: String { get }
    var icon: String { get }
}
