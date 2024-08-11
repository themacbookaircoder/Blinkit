//
//  View+Extension.swift
//  Blinkit
//
//  Created by Kuldeep on 10/08/24.
//

import Foundation
import SwiftUI

extension View {
    
    func textStyle(
        color: Color = .primary,
        font: Font = .body,
        weight: Font.Weight = .regular,
        alignment: TextAlignment = .center) -> some View {
            self.modifier(TextStyleModifier(color: color, font: font, weight: weight, alignment: alignment))
        }
    
    func modify<Content>(@ViewBuilder _ transform: (Self) -> Content) -> Content {
        transform(self)
    }
    
    @ViewBuilder
    func modify(@ViewBuilder _ transform: (Self) -> (some View)?) -> some View {
        if let view = transform(self), !(view is EmptyView) {
            view
        } else {
            self
        }
    }
    
    @ViewBuilder
    func redacted(if condition: @autoclosure () -> Bool) -> some View {
        redacted(reason: condition() ? .placeholder : [])
    }
    
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}
