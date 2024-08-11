//
//  FilterStack.swift
//  Blinkit
//
//  Created by Kuldeep on 10/08/24.
//

import SwiftUI

struct FilterStack: View {
    
    // MARK: - Body
    var body: some View {
        contentView
    }
}

extension FilterStack {
    
    @ViewBuilder
    private var contentView: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 8) {
                ForEach(Filter.getData(), id: \.id) { item in
                    filterPill(item)
                }
            }
        }
    }
    
    @ViewBuilder
    private func filterPill(_ item: Filter) -> some View {
        HStack {
            if let image = item.leadingImg {
                Image(systemName: image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 12, height: 12)
                    .foregroundStyle(.black)
            }
            Text(item.name)
                .textStyle(font: .subheadline)
            if let image = item.trailingImg {
                Image(systemName: image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 12, height: 12)
                    .foregroundStyle(.black)
            }
        }
        .padding(.all, 10)
        .background {
            BackgroundView(color: .clear, cornerRadius: 10, lineWidth: 0.2)
                .frame(height: 35)
        }
    }
}

#Preview {
    FilterStack()
}
