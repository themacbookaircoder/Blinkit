//
//  ProductListItem.swift
//  Blinkit
//
//  Created by Kuldeep on 10/08/24.
//

import SwiftUI

struct ProductListItem: View {
    
    // MARK: - Properties
    let product: ProductModel
    
    // MARK: - Body
    var body: some View {
        contentView
    }
}

extension ProductListItem {
    
    @ViewBuilder
    private var contentView: some View {
        VStack(alignment: .leading, spacing: 5) {
            productImageView
            productDetailsView
        }
    }
    
    @ViewBuilder
    private var productImageView: some View {
        VStack(spacing: 0) {
            VStack(spacing: 0) {
                if !product.available {
                    Text(verbatim: .ourOfeStock)
                        .textStyle(color: .white, font: .caption2)
                        .padding(.all, 8)
                        .frame(height: 15)
                        .background {
                            Rectangle()
                                .fill(Color.darkblue)
                                .cornerRadius(10, corners: [.bottomLeft, .bottomRight])
                        }
                }
                Image("tomato_ketchup_image")
                    .resizable()
                    .scaledToFit()
                    .padding(.top, 10)
            }
            .opacity(product.available ? 1.0 : 0.5)
            Spacer()
            HStack {
                Spacer()
                Text(product.available ? "ADD" : "NOTIFY")
                    .textStyle(color: .green, font: .caption2)
                    .padding(.all, 10)
                    .frame(height: 25)
                    .background {
                        BackgroundView(color: .clear, borderColor: .green, cornerRadius: 8)
                    }
            }
        }
        .frame(height: 150)
        .background {
            BackgroundView(color: Color.gray.opacity(0.1), cornerRadius: 10, lineWidth: 0)
        }
    }
    
    @ViewBuilder
    private var productDetailsView: some View {
        VStack(alignment: .leading, spacing: 3) {
            HStack(spacing: 2) {
                Text(product.quantity)
                    .font(.system(size: 8))
                    .padding(.all, 2)
                    .background {
                        BackgroundView(color: Color.gray.opacity(0.1), cornerRadius: 5, lineWidth: 0)
                    }
                Text(product.name)
                    .font(.system(size: 8))
                    .padding(.all, 2)
                    .background {
                        BackgroundView(color: Color.gray.opacity(0.1), cornerRadius: 5, lineWidth: 0)
                    }
            }
            .foregroundStyle(Color("darkblue"))
            Text(product.name)
                .textStyle(font: .caption2, weight: .semibold, alignment: .leading)
            Label(
                title: {
                    Text(product.time)
                },
                icon: {
                    Image(systemName: "clock.fill")
                        .foregroundStyle(.green)
                }
            )
            .font(.system(size: 8))
            if let offer = product.offer {
                Text(offer)
                    .font(.system(size: 8))
                    .foregroundStyle(.darkblue)
            }
            Text(product.price)
                .textStyle(font: .caption2, weight: .semibold)
        }
    }
}

#Preview {
    ProductListItem(product:  ProductModel(id: 1, image: "pickle_chili", available: true, quantity: "500g", name: "Chili Pickle", time: "10 MINS", price: "₹280", category: .chutneyAndPickle))
}
