//
//  Visibility.swift
//  
//
//  Created by Benedikt Geisberger on 29.12.22.
//

import Foundation

public enum Visibility: CaseIterable {
    case visible
    case invisible
    
    public mutating func toggle() {
        switch self {
        case .visible:
            self = .invisible
        case .invisible:
            self = .visible
        }
    }
}
