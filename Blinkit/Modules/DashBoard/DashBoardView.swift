//
//  DashBoardView.swift
//  Blinkit
//
//  Created by Kuldeep on 10/08/24.
//

import SwiftUI

struct DashBoardView: View {
    
    // MARK: - Properties
    @State private var viewModel = DashBoardViewModel()
    
    // MARK: - Body
    var body: some View {
        NavigationView {
            contentView
                .navigationTitle(String.saucesAndSoups)
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarBackButtonHidden(true)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        toolBarLeadingView
                    }
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        toolBarTrailingView
                    }
                }
        }
    }
}


extension DashBoardView {
    
    @ViewBuilder
    private var contentView: some View {
        GeometryReader { geometry in
            HStack(spacing: 16) {
                VerticalProductCategoryList(selectedCategory: $viewModel.selectedCategory, viewState: $viewModel.viewState)
                    .frame(width: geometry.size.width * 0.15)
                VStack(spacing: 8) {
                    FilterStack()
                        .frame(height: 40)
                    ProductList(selectedCategory: $viewModel.selectedCategory, viewState: $viewModel.viewState)
                }
            }
            .padding(.horizontal, 10)
        }
    }
    
    @ViewBuilder
    private var toolBarLeadingView: some View {
        Button {
            // back button action
        } label: {
            Image(systemName: "arrow.backward")
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
                .foregroundStyle(Color.black)
        }
    }
    
    @ViewBuilder
    private var toolBarTrailingView: some View {
        Button {
            // search button action
        } label: {
            Image(systemName: "magnifyingglass")
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
                .foregroundStyle(Color.black)
        }
    }
}

#Preview {
    DashBoardView()
}
