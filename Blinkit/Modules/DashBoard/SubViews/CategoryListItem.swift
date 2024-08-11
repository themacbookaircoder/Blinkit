//
//  CategoryListItem.swift
//  Blinkit
//
//  Created by Kuldeep on 10/08/24.
//

import SwiftUI

struct CategoryListItem: View {
    
    // MARK: - Properties
    @Binding var selectedCategory: Categore
    @Binding var viewState:ViewState
    let category: Categore
    let namespace: Namespace.ID
    
    // MARK: - Body
    var body: some View {
        HStack {
            contentView
            Spacer()
            if category == selectedCategory {
                Rectangle()
                    .fill(Color.customgreen)
                    .cornerRadius(10, corners: [.bottomLeft, .topLeft])
                    .frame(width: 5)
                    .matchedGeometryEffect(id: "underline",
                                           in: namespace,
                                           properties: .frame)
            } else {
                RoundedRectangle(cornerRadius: 10, style: .continuous)
                    .fill(Color.clear)
                    .frame(width: 5)
            }
        }
        .onTapGesture {
            withAnimation(.spring()) {
                self.selectedCategory = category
                viewState = .fetching
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
                    viewState = .finished
                }
            }
        }
    }
}

extension CategoryListItem {
    
    @ViewBuilder
    private var contentView: some View {
        VStack(spacing: 5) {
            Circle()
                .fill(selectedCategory == category ? Color.green.opacity(0.3) : Color.gray.opacity(0.1))
                .frame(width: 60, height: 60)
                .overlay {
                    Image("tomato_ketchup_image")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                }
            
            Text(category.title)
                .textStyle(font: .caption2, weight: .medium)
                .lineLimit(2)
        }
        .opacity(selectedCategory == category ? 1.0 : 0.5)
    }
}
