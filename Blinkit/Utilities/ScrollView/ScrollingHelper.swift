//
//  ScrollingHelper.swift
//  Blinkit
//
//  Created by Kuldeep on 11/08/24.
//

import Foundation
import SwiftUI

struct ScrollingHelper: UIViewRepresentable {
    let proxy: ScrollingProxy

    func makeUIView(context: Context) -> UIView {
        UIView()
    }

    func updateUIView(_ uiView: UIView, context: Context) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            proxy.catchScrollView(for: uiView)
        }
    }
}
