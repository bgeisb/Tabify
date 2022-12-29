//
//  DefaultBarStyle.swift
//  
//
//  Created by Benedikt Geisberger on 29.12.22.
//

import SwiftUI

public struct DefaultBarStyle: BarStyle {
    
    public func bar(with geometry: GeometryProxy, itemsContainer: @escaping () -> AnyView) -> some View {
            VStack(spacing: 0.0) {
                Divider()
                
                VStack {
                    itemsContainer()
                        .frame(height: 50.0)
                        .padding(.bottom, geometry.safeAreaInsets.bottom)
                }
                .background(
                    Color(
                        red:   249 / 255,
                        green: 249 / 255,
                        blue:  249 / 255,
                        opacity: 0.94
                    )
                )
                .frame(height: 50.0 + geometry.safeAreaInsets.bottom)
            }
        }
    
}
