//
//  ProductList.swift
//  Blinkit
//
//  Created by Kuldeep on 10/08/24.
//

import SwiftUI

enum pullingDirection {
    case pullingDown
    case pullingUp
    case none
}

struct ProductList: View {
    
    // MARK: - Properties
    private let scrollingProxy = ScrollingProxy()
    @State private var scrollViewContentOffset = CGFloat(0)
    @State private var scrollViewContentMaxOffset = CGFloat(0)
    @Binding var selectedCategory: Categore
    let columns = [GridItem(.flexible(), alignment: .top), GridItem(.flexible(), alignment: .top)]
    @Binding var viewState:ViewState
    @State private var pullDirection:pullingDirection = .none
    
    // MARK: - Body
    var body: some View {
        ZStack {
            TrackableScrollView(
                .vertical,
                showIndicators: false,
                contentOffset: $scrollViewContentOffset,
                contentMaxOffset: $scrollViewContentMaxOffset,
                offsetChanged: { offset in
//                    print("offsetChanged: \(offset)")
                    // User pulled up from the bottom
                    if scrollViewContentOffset > scrollViewContentMaxOffset + 50 && pullDirection != .pullingUp {
                        pullDirection = .pullingUp
                        updateSelectedCategory(forward: true)
                    }
                    
                    // User pulled down from the top
                    if scrollViewContentOffset < -50 {
                        pullDirection = .pullingDown
                        updateSelectedCategory(forward: false)
                    }
                },
                content: {
                    LazyVGrid(columns: columns, spacing: 10) {
                        ForEach(selectedCategory.products, id: \.id) { item in
                            ProductListItem(product: item)
                        }
                    }
                    .background(
                        ScrollingHelper(proxy: self.scrollingProxy)
                    )
                }
            )
            .redacted(if: viewState == .fetching)
            VStack {
                if viewState == .fetching,  pullDirection == .pullingDown {
                    pullingDownView
                }
               Spacer()
                if viewState == .fetching, pullDirection == .pullingUp {
                    pullingUpView
                }
            }
        }
    }
}

extension ProductList {
    
    @ViewBuilder
    private var pullingDownView: some View {
        ZStack {
            LinearGradient(colors: [Color.green.opacity(0.8), Color.white], startPoint: .top, endPoint: .bottom)
            VStack(spacing: 10){
                Text(getNextCategoryTitle ?? "")
                    .textStyle(font: .caption2, weight: .medium)
                    .lineLimit(2)
                Circle()
                    .fill(Color.gray.opacity(0.1))
                    .frame(width: 60, height: 60)
                    .overlay {
                        Image("tomato_ketchup_image")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                    }
                Image(systemName: "chevron.right.2")
                    .rotationEffect(.degrees(90))
                    .foregroundColor(.green)
               
            }
        }
        .frame(maxWidth: .infinity)
        .frame(height: 120)
    }
    
    @ViewBuilder
    private var pullingUpView: some View {
        ZStack {
            LinearGradient(colors: [Color.white, Color.green.opacity(0.8)], startPoint: .top, endPoint: .bottom)
            VStack(spacing: 5){
                Image(systemName: "chevron.right.2")
                    .rotationEffect(.degrees(-90))
                    .foregroundColor(.green)
                Circle()
                    .fill(Color.gray.opacity(0.1))
                    .frame(width: 60, height: 60)
                    .overlay {
                        Image("tomato_ketchup_image")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                    }
                Text(getNextCategoryTitle ?? "")
                    .textStyle(font: .caption2, weight: .medium)
                    .lineLimit(2)
            }
        }
        .frame(maxWidth: .infinity)
        .frame(height: 120)
    }
}

// MARK: - Helpers
extension ProductList {
    
    private func updateSelectedCategory(forward: Bool) {
        viewState = .fetching
        guard let currentIndex = Categore.allCases.firstIndex(of: selectedCategory) else {
            viewState = .finished
            pullDirection = .none
            return
        }
        viewState = .fetching
        let nextIndex = forward ? currentIndex + 1 : currentIndex - 1
        if nextIndex >= 0 && nextIndex < Categore.allCases.count {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
                selectedCategory = Categore.allCases[nextIndex]
                viewState = .finished
                pullDirection = .none
            }
        } else {
            viewState = .finished
            pullDirection = .none
        }
    }
    
    private var getNextCategoryTitle: String? {
        guard let currentIndex = Categore.allCases.firstIndex(of: selectedCategory) else {
            return nil
        }
        
        let nextIndex = pullDirection == .pullingUp ? currentIndex + 1 : currentIndex - 1
        if nextIndex >= 0 && nextIndex < Categore.allCases.count {
            return Categore.allCases[nextIndex].title
        } else {
            return nil
        }
    }
}
