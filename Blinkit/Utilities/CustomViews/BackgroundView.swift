//
//  BackgroundView.swift
//  Blinkit
//
//  Created by Kuldeep on 10/08/24.
//

import SwiftUI

struct BackgroundView: View {
    
    // MARK: - Properties
    var color: Color = Color.white
    var borderColor: Color = Color.gray
    var cornerRadius: CGFloat = 20
    var lineWidth: CGFloat = 1
  
    // MARK: - Body
    var body: some View {
        RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
            .fill(color)
            .strokeBorder(lineWidth: lineWidth)
            .foregroundStyle(borderColor)
    }
}
