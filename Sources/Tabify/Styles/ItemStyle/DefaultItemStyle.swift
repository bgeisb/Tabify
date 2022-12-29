//
//  DefaultItemStyle.swift
//  
//
//  Created by Benedikt Geisberger on 29.12.22.
//

import SwiftUI

public struct DefaultItemStyle: ItemStyle {

    @ViewBuilder
    public func item(icon: String, title: String, isSelected: Bool) -> some View {
        let color: Color = isSelected ? .accentColor : .gray
        
        VStack(spacing: 5.0) {
            Image(systemName: icon)
                .renderingMode(.template)
            
            Text(title)
                .font(.system(size: 10.0, weight: .medium))
        }
        .foregroundColor(color)
    }
    
}
