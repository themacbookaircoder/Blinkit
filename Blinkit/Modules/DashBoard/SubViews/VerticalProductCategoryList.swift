//
//  VerticalProductCategoryList.swift
//  Blinkit
//
//  Created by Kuldeep on 10/08/24.
//

import SwiftUI

struct VerticalProductCategoryList: View {
    
    // MARK: - Properties
    @Binding var selectedCategory: Categore
    @Binding var viewState: ViewState
    @Namespace var namespace
    
    // MARK: - Body
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            HStack(spacing: 0){
                VStack(spacing: 20) {
                    ForEach(Categore.allCases, id: \.id) { category in
                        CategoryListItem(
                            selectedCategory: $selectedCategory,
                            viewState: $viewState,
                            category: category,
                            namespace: namespace.self
                        )
                    }
                }
                Divider()
            }
        }
    }
}

#Preview {
    VerticalProductCategoryList(selectedCategory: .constant(.tomatoKetchup), viewState: .constant(.none))
}
