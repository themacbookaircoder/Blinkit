//
//  Categore.swift
//  Blinkit
//
//  Created by Kuldeep on 10/08/24.
//

import Foundation

enum Categore: Identifiable, CaseIterable {
    case tomatoKetchup
    case asianSauces
    case jamAndSpreads
    case mayonnaise
    case peanutButter
    case chyawanprashAndHoney
    case chutneyAndPickle
    case saladDressings
    case dips
    
    var id: UUID {
        UUID()
    }
    
    var title: String {
        switch self {
        case .tomatoKetchup:
            return String.tomatoKetchup
        case .asianSauces:
            return String.asianSauces
        case .jamAndSpreads:
            return String.jamAndSpreads
        case .mayonnaise:
            return String.mayonnaise
        case .peanutButter:
            return String.peanutButter
        case .chyawanprashAndHoney:
            return String.chyawanprashAndHoney
        case .chutneyAndPickle:
            return String.chutneyAndPickle
        case .saladDressings:
            return String.saladDressings
        case .dips:
            return String.dips
        }
    }
    
    var image: String {
        switch self {
        case .tomatoKetchup:
            return "tomato_ketchup_image"
        case .asianSauces:
            return "asian_sauces_image"
        case .jamAndSpreads:
            return "jam_and_spreads_image"
        case .mayonnaise:
            return "mayonnaise_image"
        case .peanutButter:
            return "peanut_butter_image"
        case .chyawanprashAndHoney:
            return "chyawanprash_and_honey_image"
        case .chutneyAndPickle:
            return "chutney_and_pickle_image"
        case .saladDressings:
            return "salad_dressings_image"
        case .dips:
            return "dips_image"
        }
    }
    
    var products: [ProductModel] {
        switch self {
        case .tomatoKetchup:
            return ProductModel.tomatoKetchup
        case .asianSauces:
            return ProductModel.asianSauces
        case .jamAndSpreads:
            return ProductModel.jamAndSpreads
        case .mayonnaise:
            return ProductModel.mayonnaise
        case .peanutButter:
            return ProductModel.peanutButter
        case .chyawanprashAndHoney:
            return ProductModel.chyawanprashAndHoney
        case .chutneyAndPickle:
            return ProductModel.chutneyAndPickle
        case .saladDressings:
            return ProductModel.saladDressings
        case .dips:
            return ProductModel.dips
        }
    }
}
