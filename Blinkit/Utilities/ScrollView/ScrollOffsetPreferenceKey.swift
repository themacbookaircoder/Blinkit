//
//  ScrollOffsetPreferenceKey.swift
//  Blinkit
//
//  Created by Kuldeep on 11/08/24.
//

import Foundation
import SwiftUI

@available(iOS 13.0, *)
struct ScrollOffsetPreferenceKey: PreferenceKey {
    typealias Value = [CGFloat]

    static var defaultValue: [CGFloat] = [0]

    static func reduce(value: inout [CGFloat], nextValue: () -> [CGFloat]) {
        value.append(contentsOf: nextValue())
    }
}
