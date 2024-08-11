//
//  ProductModel.swift
//  Blinkit
//
//  Created by Kuldeep on 10/08/24.
//

import Foundation

struct ProductModel: Identifiable {
    let id: Int
    let image: String
    let available: Bool
    let quantity: String
    let name: String
    let time: String
    let price: String
    let offer: String?
    let category: Categore
    
    init(id: Int, image: String, available: Bool, quantity: String, name: String, time: String, price: String, offer: String? = nil, category: Categore) {
        self.id = id
        self.image = image
        self.available = available
        self.quantity = quantity
        self.name = name
        self.time = time
        self.price = price
        self.offer = offer
        self.category = category
    }
    
    static var tomatoKetchup: [ProductModel] {
        [
            ProductModel(id: 1, image: "kissan_tomato_ketchup", available: true, quantity: "850g", name: "Kissan Fresh Tomato Ketchup", time: "10 MINS", price: "₹100", offer: "13% OFF", category: .tomatoKetchup),
            ProductModel(id: 2, image: "maggi_tomato_ketchup", available: false, quantity: "1kg", name: "Maggi Rich Tomato Ketchup", time: "10 MINS", price: "₹72", category: .tomatoKetchup),
            ProductModel(id: 3, image: "del_monte_tomato_ketchup", available: true, quantity: "900g", name: "Del Monte Tomato Ketchup", time: "10 MINS", price: "₹160", offer: "13% OFF", category: .tomatoKetchup),
            ProductModel(id: 4, image: "heinz_tomato_ketchup", available: false, quantity: "750g", name: "Heinz Tomato Ketchup", time: "10 MINS", price: "₹140", category: .tomatoKetchup),
            ProductModel(id: 5, image: "tops_tomato_ketchup", available: true, quantity: "950g", name: "Tops Tomato Ketchup", time: "10 MINS", price: "₹130", category: .tomatoKetchup),
            ProductModel(id: 6, image: "safal_tomato_ketchup", available: true, quantity: "800g", name: "Safal Tomato Ketchup", time: "10 MINS", price: "₹120", offer: "13% OFF", category: .tomatoKetchup),
            ProductModel(id: 7, image: "amul_tomato_ketchup", available: true, quantity: "700g", name: "Amul Tomato Ketchup", time: "10 MINS", price: "₹90", category: .tomatoKetchup),
            ProductModel(id: 8, image: "patanjali_tomato_ketchup", available: false, quantity: "850g", name: "Patanjali Tomato Ketchup", time: "10 MINS", price: "₹85", category: .tomatoKetchup),
            ProductModel(id: 9, image: "catch_tomato_ketchup", available: true, quantity: "900g", name: "Catch Tomato Ketchup", time: "10 MINS", price: "₹110", offer: "13% OFF", category: .tomatoKetchup),
            ProductModel(id: 10, image: "mother_dairy_tomato_ketchup", available: true, quantity: "1kg", name: "Mother Dairy Tomato Ketchup", time: "10 MINS", price: "₹115", category: .tomatoKetchup),
            ProductModel(id: 11, image: "brittania_tomato_ketchup", available: false, quantity: "950g", name: "Britannia Tomato Ketchup", time: "10 MINS", price: "₹100", category: .tomatoKetchup),
            ProductModel(id: 12, image: "real_good_tomato_ketchup", available: true, quantity: "850g", name: "Real Good Tomato Ketchup", time: "10 MINS", price: "₹105", offer: "13% OFF", category: .tomatoKetchup),
            ProductModel(id: 13, image: "fortune_tomato_ketchup", available: true, quantity: "800g", name: "Fortune Tomato Ketchup", time: "10 MINS", price: "₹125", category: .tomatoKetchup),
            ProductModel(id: 14, image: "desi_delight_tomato_ketchup", available: true, quantity: "1kg", name: "Desi Delight Tomato Ketchup", time: "10 MINS", price: "₹135", category: .tomatoKetchup),
            ProductModel(id: 15, image: "sunfeast_tomato_ketchup", available: false, quantity: "700g", name: "Sunfeast Tomato Ketchup", time: "10 MINS", price: "₹80", category: .tomatoKetchup),
            ProductModel(id: 16, image: "ashirvaad_tomato_ketchup", available: true, quantity: "850g", name: "Aashirvaad Tomato Ketchup", time: "10 MINS", price: "₹90", offer: "13% OFF", category: .tomatoKetchup),
            ProductModel(id: 17, image: "chings_tomato_ketchup", available: true, quantity: "750g", name: "Ching's Tomato Ketchup", time: "10 MINS", price: "₹110", category: .tomatoKetchup),
            ProductModel(id: 18, image: "everest_tomato_ketchup", available: false, quantity: "900g", name: "Everest Tomato Ketchup", time: "10 MINS", price: "₹125", category: .tomatoKetchup),
            ProductModel(id: 19, image: "weikfield_tomato_ketchup", available: true, quantity: "1kg", name: "Weikfield Tomato Ketchup", time: "10 MINS", price: "₹130", category: .tomatoKetchup),
            ProductModel(id: 20, image: "amul_pro_tomato_ketchup", available: true, quantity: "800g", name: "Amul Pro Tomato Ketchup", time: "10 MINS", price: "₹95", offer: "13% OFF", category: .tomatoKetchup)
        ]
    }
    
    static var asianSauces: [ProductModel] {
        [
            ProductModel(id: 1, image: "soy_sauce", available: true, quantity: "500g", name: "Soy Sauce", time: "10 MINS", price: "₹200", offer: "13% OFF", category: .asianSauces),
            ProductModel(id: 2, image: "chili_sauce", available: false, quantity: "750g", name: "Chili Sauce", time: "10 MINS", price: "₹180", category: .asianSauces),
            ProductModel(id: 3, image: "szechuan_sauce", available: true, quantity: "1kg", name: "Szechuan Sauce", time: "10 MINS", price: "₹220", category: .asianSauces),
            ProductModel(id: 4, image: "hoisin_sauce", available: false, quantity: "800g", name: "Hoisin Sauce", time: "10 MINS", price: "₹210", offer: "10% OFF", category: .asianSauces),
            ProductModel(id: 5, image: "teriyaki_sauce", available: true, quantity: "850g", name: "Teriyaki Sauce", time: "10 MINS", price: "₹230", category: .asianSauces),
            ProductModel(id: 6, image: "oyster_sauce", available: false, quantity: "900g", name: "Oyster Sauce", time: "10 MINS", price: "₹240", category: .asianSauces),
            ProductModel(id: 7, image: "plum_sauce", available: true, quantity: "1kg", name: "Plum Sauce", time: "10 MINS", price: "₹250", offer: "15% OFF", category: .asianSauces),
            ProductModel(id: 8, image: "sweet_chili_sauce", available: false, quantity: "700g", name: "Sweet Chili Sauce", time: "10 MINS", price: "₹160", category: .asianSauces),
            ProductModel(id: 9, image: "fish_sauce", available: true, quantity: "600g", name: "Fish Sauce", time: "10 MINS", price: "₹150", category: .asianSauces),
            ProductModel(id: 10, image: "black_bean_sauce", available: false, quantity: "750g", name: "Black Bean Sauce", time: "10 MINS", price: "₹200", category: .asianSauces),
            ProductModel(id: 11, image: "peking_duck_sauce", available: true, quantity: "900g", name: "Peking Duck Sauce", time: "10 MINS", price: "₹220", category: .asianSauces),
            ProductModel(id: 12, image: "sesame_sauce", available: false, quantity: "950g", name: "Sesame Sauce", time: "10 MINS", price: "₹230", offer: "5% OFF", category: .asianSauces),
            ProductModel(id: 13, image: "peanut_sauce", available: true, quantity: "850g", name: "Peanut Sauce", time: "10 MINS", price: "₹180", category: .asianSauces),
            ProductModel(id: 14, image: "thai_chili_sauce", available: false, quantity: "1kg", name: "Thai Chili Sauce", time: "10 MINS", price: "₹250", category: .asianSauces),
            ProductModel(id: 15, image: "schezwan_sauce", available: true, quantity: "800g", name: "Schezwan Sauce", time: "10 MINS", price: "₹240", category: .asianSauces),
            ProductModel(id: 16, image: "garlic_chili_sauce", available: false, quantity: "700g", name: "Garlic Chili Sauce", time: "10 MINS", price: "₹180", category: .asianSauces),
            ProductModel(id: 17, image: "ginger_soy_sauce", available: true, quantity: "650g", name: "Ginger Soy Sauce", time: "10 MINS", price: "₹220", offer: "20% OFF", category: .asianSauces),
            ProductModel(id: 18, image: "cantonese_sauce", available: false, quantity: "950g", name: "Cantonese Sauce", time: "10 MINS", price: "₹230", category: .asianSauces),
            ProductModel(id: 19, image: "miso_sauce", available: true, quantity: "900g", name: "Miso Sauce", time: "10 MINS", price: "₹210", category: .asianSauces),
            ProductModel(id: 20, image: "japanese_teriyaki_sauce", available: true, quantity: "1kg", name: "Japanese Teriyaki Sauce", time: "10 MINS", price: "₹260", category: .asianSauces)
        ]
    }

    static var jamAndSpreads: [ProductModel] {
        [
            ProductModel(id: 1, image: "strawberry_jam", available: true, quantity: "500g", name: "Strawberry Jam", time: "10 MINS", price: "₹120", offer: "13% OFF", category: .jamAndSpreads),
            ProductModel(id: 2, image: "mixed_fruit_jam", available: false, quantity: "850g", name: "Mixed Fruit Jam", time: "10 MINS", price: "₹150", category: .jamAndSpreads),
            ProductModel(id: 3, image: "peanut_butter_spread", available: true, quantity: "1kg", name: "Peanut Butter Spread", time: "10 MINS", price: "₹180", category: .jamAndSpreads),
            ProductModel(id: 4, image: "blueberry_jam", available: false, quantity: "450g", name: "Blueberry Jam", time: "10 MINS", price: "₹140", offer: "13% OFF", category: .jamAndSpreads),
            ProductModel(id: 5, image: "raspberry_jam", available: true, quantity: "500g", name: "Raspberry Jam", time: "10 MINS", price: "₹130", category: .jamAndSpreads),
            ProductModel(id: 6, image: "apricot_spread", available: false, quantity: "750g", name: "Apricot Spread", time: "10 MINS", price: "₹160", category: .jamAndSpreads),
            ProductModel(id: 7, image: "blackcurrant_jam", available: true, quantity: "600g", name: "Blackcurrant Jam", time: "10 MINS", price: "₹170", category: .jamAndSpreads),
            ProductModel(id: 8, image: "honey_spread", available: false, quantity: "700g", name: "Honey Spread", time: "10 MINS", price: "₹190", category: .jamAndSpreads),
            ProductModel(id: 9, image: "marmalade_spread", available: true, quantity: "900g", name: "Marmalade Spread", time: "10 MINS", price: "₹200", offer: "13% OFF", category: .jamAndSpreads),
            ProductModel(id: 10, image: "chocolate_spread", available: false, quantity: "800g", name: "Chocolate Spread", time: "10 MINS", price: "₹220", category: .jamAndSpreads),
            ProductModel(id: 11, image: "fig_jam", available: true, quantity: "550g", name: "Fig Jam", time: "10 MINS", price: "₹160", category: .jamAndSpreads),
            ProductModel(id: 12, image: "plum_jam", available: false, quantity: "500g", name: "Plum Jam", time: "10 MINS", price: "₹140", category: .jamAndSpreads),
            ProductModel(id: 13, image: "kiwi_spread", available: true, quantity: "600g", name: "Kiwi Spread", time: "10 MINS", price: "₹180", category: .jamAndSpreads),
            ProductModel(id: 14, image: "mango_jam", available: false, quantity: "850g", name: "Mango Jam", time: "10 MINS", price: "₹150", category: .jamAndSpreads),
            ProductModel(id: 15, image: "pineapple_spread", available: true, quantity: "700g", name: "Pineapple Spread", time: "10 MINS", price: "₹170", category: .jamAndSpreads),
            ProductModel(id: 16, image: "almond_butter_spread", available: false, quantity: "650g", name: "Almond Butter Spread", time: "10 MINS", price: "₹240", category: .jamAndSpreads),
            ProductModel(id: 17, image: "hazelnut_spread", available: true, quantity: "500g", name: "Hazelnut Spread", time: "10 MINS", price: "₹230", offer: "13% OFF", category: .jamAndSpreads),
            ProductModel(id: 18, image: "coconut_spread", available: false, quantity: "750g", name: "Coconut Spread", time: "10 MINS", price: "₹210", category: .jamAndSpreads),
            ProductModel(id: 19, image: "date_spread", available: true, quantity: "850g", name: "Date Spread", time: "10 MINS", price: "₹190", category: .jamAndSpreads),
            ProductModel(id: 20, image: "apple_jam", available: false, quantity: "800g", name: "Apple Jam", time: "10 MINS", price: "₹170", category: .jamAndSpreads)
        ]
    }
    
    static var mayonnaise: [ProductModel] {
        [
            ProductModel(id: 1, image: "classic_mayonnaise", available: true, quantity: "500g", name: "Classic Mayonnaise", time: "10 MINS", price: "₹120", offer: "13% OFF", category: .mayonnaise),
            ProductModel(id: 2, image: "eggless_mayonnaise", available: false, quantity: "1kg", name: "Eggless Mayonnaise", time: "10 MINS", price: "₹150", category: .mayonnaise),
            ProductModel(id: 3, image: "spicy_mayonnaise", available: true, quantity: "750g", name: "Spicy Mayonnaise", time: "10 MINS", price: "₹140", category: .mayonnaise),
            ProductModel(id: 4, image: "garlic_mayonnaise", available: true, quantity: "400g", name: "Garlic Mayonnaise", time: "10 MINS", price: "₹130", category: .mayonnaise),
            ProductModel(id: 5, image: "herb_mayonnaise", available: false, quantity: "500g", name: "Herb Mayonnaise", time: "10 MINS", price: "₹160", offer: "10% OFF", category: .mayonnaise),
            ProductModel(id: 6, image: "low_fat_mayonnaise", available: true, quantity: "600g", name: "Low Fat Mayonnaise", time: "10 MINS", price: "₹140", category: .mayonnaise),
            ProductModel(id: 7, image: "olive_oil_mayonnaise", available: false, quantity: "450g", name: "Olive Oil Mayonnaise", time: "10 MINS", price: "₹180", category: .mayonnaise),
            ProductModel(id: 8, image: "vegan_mayonnaise", available: true, quantity: "500g", name: "Vegan Mayonnaise", time: "10 MINS", price: "₹170", category: .mayonnaise),
            ProductModel(id: 9, image: "tandoori_mayonnaise", available: true, quantity: "400g", name: "Tandoori Mayonnaise", time: "10 MINS", price: "₹150", category: .mayonnaise),
            ProductModel(id: 10, image: "chipotle_mayonnaise", available: false, quantity: "700g", name: "Chipotle Mayonnaise", time: "10 MINS", price: "₹190", category: .mayonnaise),
            ProductModel(id: 11, image: "wasabi_mayonnaise", available: true, quantity: "300g", name: "Wasabi Mayonnaise", time: "10 MINS", price: "₹200", category: .mayonnaise),
            ProductModel(id: 12, image: "jalapeno_mayonnaise", available: false, quantity: "600g", name: "Jalapeno Mayonnaise", time: "10 MINS", price: "₹170", offer: "13% OFF", category: .mayonnaise),
            ProductModel(id: 13, image: "peri_peri_mayonnaise", available: true, quantity: "450g", name: "Peri Peri Mayonnaise", time: "10 MINS", price: "₹160", category: .mayonnaise),
            ProductModel(id: 14, image: "mustard_mayonnaise", available: true, quantity: "550g", name: "Mustard Mayonnaise", time: "10 MINS", price: "₹130", category: .mayonnaise),
            ProductModel(id: 15, image: "truffle_mayonnaise", available: false, quantity: "400g", name: "Truffle Mayonnaise", time: "10 MINS", price: "₹250", category: .mayonnaise),
            ProductModel(id: 16, image: "sriracha_mayonnaise", available: true, quantity: "500g", name: "Sriracha Mayonnaise", time: "10 MINS", price: "₹180", offer: "5% OFF", category: .mayonnaise),
            ProductModel(id: 17, image: "sun_dried_tomato_mayonnaise", available: true, quantity: "450g", name: "Sun-Dried Tomato Mayonnaise", time: "10 MINS", price: "₹190", category: .mayonnaise),
            ProductModel(id: 18, image: "curry_mayonnaise", available: false, quantity: "500g", name: "Curry Mayonnaise", time: "10 MINS", price: "₹160", category: .mayonnaise),
            ProductModel(id: 19, image: "ranch_mayonnaise", available: true, quantity: "600g", name: "Ranch Mayonnaise", time: "10 MINS", price: "₹140", offer: "15% OFF", category: .mayonnaise),
            ProductModel(id: 20, image: "avocado_mayonnaise", available: false, quantity: "400g", name: "Avocado Mayonnaise", time: "10 MINS", price: "₹210", category: .mayonnaise),
        ]
    }

    static var peanutButter: [ProductModel] {
        [
            ProductModel(id: 1, image: "creamy_peanut_butter", available: true, quantity: "500g", name: "Creamy Peanut Butter", time: "10 MINS", price: "₹180", offer: "10% OFF", category: .peanutButter),
            ProductModel(id: 2, image: "crunchy_peanut_butter", available: false, quantity: "750g", name: "Crunchy Peanut Butter", time: "10 MINS", price: "₹220", category: .peanutButter),
            ProductModel(id: 3, image: "natural_peanut_butter", available: true, quantity: "1kg", name: "Natural Peanut Butter", time: "10 MINS", price: "₹250", offer: "15% OFF", category: .peanutButter),
            ProductModel(id: 4, image: "honey_peanut_butter", available: false, quantity: "400g", name: "Honey Peanut Butter", time: "10 MINS", price: "₹160", category: .peanutButter),
            ProductModel(id: 5, image: "chocolate_peanut_butter", available: true, quantity: "500g", name: "Chocolate Peanut Butter", time: "10 MINS", price: "₹200", category: .peanutButter),
            ProductModel(id: 6, image: "almond_peanut_butter", available: false, quantity: "450g", name: "Almond Peanut Butter", time: "10 MINS", price: "₹240", offer: "20% OFF", category: .peanutButter),
            ProductModel(id: 7, image: "smooth_peanut_butter", available: true, quantity: "600g", name: "Smooth Peanut Butter", time: "10 MINS", price: "₹210", category: .peanutButter),
            ProductModel(id: 8, image: "salted_peanut_butter", available: false, quantity: "500g", name: "Salted Peanut Butter", time: "10 MINS", price: "₹190", category: .peanutButter),
            ProductModel(id: 9, image: "unsalted_peanut_butter", available: true, quantity: "500g", name: "Unsalted Peanut Butter", time: "10 MINS", price: "₹200", offer: "5% OFF", category: .peanutButter),
            ProductModel(id: 10, image: "sugar_free_peanut_butter", available: false, quantity: "600g", name: "Sugar-Free Peanut Butter", time: "10 MINS", price: "₹230", category: .peanutButter),
            ProductModel(id: 11, image: "protein_peanut_butter", available: true, quantity: "1kg", name: "Protein Peanut Butter", time: "10 MINS", price: "₹270", category: .peanutButter),
            ProductModel(id: 12, image: "organic_peanut_butter", available: false, quantity: "450g", name: "Organic Peanut Butter", time: "10 MINS", price: "₹260", category: .peanutButter),
            ProductModel(id: 13, image: "low_fat_peanut_butter", available: true, quantity: "500g", name: "Low Fat Peanut Butter", time: "10 MINS", price: "₹180", offer: "13% OFF", category: .peanutButter),
            ProductModel(id: 14, image: "super_crunchy_peanut_butter", available: false, quantity: "750g", name: "Super Crunchy Peanut Butter", time: "10 MINS", price: "₹220", category: .peanutButter),
            ProductModel(id: 15, image: "omega_peanut_butter", available: true, quantity: "600g", name: "Omega-3 Peanut Butter", time: "10 MINS", price: "₹260", offer: "7% OFF", category: .peanutButter),
            ProductModel(id: 16, image: "coconut_peanut_butter", available: false, quantity: "400g", name: "Coconut Peanut Butter", time: "10 MINS", price: "₹190", category: .peanutButter),
            ProductModel(id: 17, image: "caramel_peanut_butter", available: true, quantity: "500g", name: "Caramel Peanut Butter", time: "10 MINS", price: "₹210", category: .peanutButter),
            ProductModel(id: 18, image: "blueberry_peanut_butter", available: false, quantity: "450g", name: "Blueberry Peanut Butter", time: "10 MINS", price: "₹230", offer: "12% OFF", category: .peanutButter),
            ProductModel(id: 19, image: "cinnamon_peanut_butter", available: true, quantity: "500g", name: "Cinnamon Peanut Butter", time: "10 MINS", price: "₹240", category: .peanutButter),
            ProductModel(id: 20, image: "maple_peanut_butter", available: false, quantity: "600g", name: "Maple Peanut Butter", time: "10 MINS", price: "₹250", category: .peanutButter)
        ]
    }

    static var chyawanprashAndHoney: [ProductModel] {
        [
            ProductModel(id: 1, image: "classic_chyawanprash", available: true, quantity: "500g", name: "Classic Chyawanprash", time: "10 MINS", price: "₹350", offer: "10% OFF", category: .chyawanprashAndHoney),
            ProductModel(id: 2, image: "herbal_chyawanprash", available: false, quantity: "750g", name: "Herbal Chyawanprash", time: "10 MINS", price: "₹400", category: .chyawanprashAndHoney),
            ProductModel(id: 3, image: "organic_chyawanprash", available: true, quantity: "1kg", name: "Organic Chyawanprash", time: "10 MINS", price: "₹450", category: .chyawanprashAndHoney),
            ProductModel(id: 4, image: "immunity_chyawanprash", available: false, quantity: "400g", name: "Immunity Chyawanprash", time: "10 MINS", price: "₹320", offer: "15% OFF", category: .chyawanprashAndHoney),
            ProductModel(id: 5, image: "sugar_free_chyawanprash", available: true, quantity: "500g", name: "Sugar-Free Chyawanprash", time: "10 MINS", price: "₹370", category: .chyawanprashAndHoney),
            ProductModel(id: 6, image: "honey_chyawanprash", available: false, quantity: "750g", name: "Honey Chyawanprash", time: "10 MINS", price: "₹410", category: .chyawanprashAndHoney),
            ProductModel(id: 7, image: "ayurvedic_chyawanprash", available: true, quantity: "1kg", name: "Ayurvedic Chyawanprash", time: "10 MINS", price: "₹460", offer: "20% OFF", category: .chyawanprashAndHoney),
            ProductModel(id: 8, image: "premium_chyawanprash", available: true, quantity: "500g", name: "Premium Chyawanprash", time: "10 MINS", price: "₹340", category: .chyawanprashAndHoney),
            ProductModel(id: 9, image: "herbal_honey_chyawanprash", available: false, quantity: "750g", name: "Herbal Honey Chyawanprash", time: "10 MINS", price: "₹420", category: .chyawanprashAndHoney),
            ProductModel(id: 10, image: "natural_honey_chyawanprash", available: true, quantity: "1kg", name: "Natural Honey Chyawanprash", time: "10 MINS", price: "₹470", category: .chyawanprashAndHoney),
            ProductModel(id: 11, image: "ginseng_chyawanprash", available: false, quantity: "400g", name: "Ginseng Chyawanprash", time: "10 MINS", price: "₹330", category: .chyawanprashAndHoney),
            ProductModel(id: 12, image: "tulsi_chyawanprash", available: true, quantity: "500g", name: "Tulsi Chyawanprash", time: "10 MINS", price: "₹360", offer: "5% OFF", category: .chyawanprashAndHoney),
            ProductModel(id: 13, image: "ashwagandha_chyawanprash", available: true, quantity: "750g", name: "Ashwagandha Chyawanprash", time: "10 MINS", price: "₹430", category: .chyawanprashAndHoney),
            ProductModel(id: 14, image: "amla_chyawanprash", available: false, quantity: "1kg", name: "Amla Chyawanprash", time: "10 MINS", price: "₹480", category: .chyawanprashAndHoney),
            ProductModel(id: 15, image: "ginger_honey_chyawanprash", available: true, quantity: "500g", name: "Ginger Honey Chyawanprash", time: "10 MINS", price: "₹340", offer: "10% OFF", category: .chyawanprashAndHoney),
            ProductModel(id: 16, image: "clove_chyawanprash", available: true, quantity: "750g", name: "Clove Chyawanprash", time: "10 MINS", price: "₹410", category: .chyawanprashAndHoney),
            ProductModel(id: 17, image: "cardamom_chyawanprash", available: true, quantity: "1kg", name: "Cardamom Chyawanprash", time: "10 MINS", price: "₹470", category: .chyawanprashAndHoney),
            ProductModel(id: 18, image: "cinnamon_chyawanprash", available: false, quantity: "500g", name: "Cinnamon Chyawanprash", time: "10 MINS", price: "₹350", category: .chyawanprashAndHoney),
            ProductModel(id: 19, image: "rose_chyawanprash", available: true, quantity: "750g", name: "Rose Chyawanprash", time: "10 MINS", price: "₹420", category: .chyawanprashAndHoney),
            ProductModel(id: 20, image: "pomegranate_chyawanprash", available: true, quantity: "1kg", name: "Pomegranate Chyawanprash", time: "10 MINS", price: "₹490", offer: "15% OFF", category: .chyawanprashAndHoney)
        ]
    }


    static var chutneyAndPickle: [ProductModel] {
        [
            ProductModel(id: 1, image: "mango_chutney", available: true, quantity: "500g", name: "Mango Chutney", time: "10 MINS", price: "₹250", offer: "10% OFF", category: .chutneyAndPickle),
            ProductModel(id: 2, image: "mint_chutney", available: false, quantity: "250g", name: "Mint Chutney", time: "10 MINS", price: "₹180", category: .chutneyAndPickle),
            ProductModel(id: 3, image: "tomato_chutney", available: true, quantity: "300g", name: "Tomato Chutney", time: "10 MINS", price: "₹200", category: .chutneyAndPickle),
            ProductModel(id: 4, image: "onion_chutney", available: true, quantity: "400g", name: "Onion Chutney", time: "10 MINS", price: "₹220", offer: "15% OFF", category: .chutneyAndPickle),
            ProductModel(id: 5, image: "mixed_veg_chutney", available: false, quantity: "500g", name: "Mixed Veg Chutney", time: "10 MINS", price: "₹240", category: .chutneyAndPickle),
            ProductModel(id: 6, image: "sweet_chutney", available: true, quantity: "250g", name: "Sweet Chutney", time: "10 MINS", price: "₹190", offer: "5% OFF", category: .chutneyAndPickle),
            ProductModel(id: 7, image: "spicy_chutney", available: true, quantity: "300g", name: "Spicy Chutney", time: "10 MINS", price: "₹210", category: .chutneyAndPickle),
            ProductModel(id: 8, image: "apple_chutney", available: false, quantity: "400g", name: "Apple Chutney", time: "10 MINS", price: "₹230", category: .chutneyAndPickle),
            ProductModel(id: 9, image: "pickle_mango", available: true, quantity: "500g", name: "Mango Pickle", time: "10 MINS", price: "₹270", offer: "20% OFF", category: .chutneyAndPickle),
            ProductModel(id: 10, image: "pickle_lime", available: true, quantity: "250g", name: "Lime Pickle", time: "10 MINS", price: "₹220", category: .chutneyAndPickle),
            ProductModel(id: 11, image: "pickle_ginger", available: false, quantity: "300g", name: "Ginger Pickle", time: "10 MINS", price: "₹250", category: .chutneyAndPickle),
            ProductModel(id: 12, image: "pickle_tamarind", available: true, quantity: "400g", name: "Tamarind Pickle", time: "10 MINS", price: "₹260", offer: "10% OFF", category: .chutneyAndPickle),
            ProductModel(id: 13, image: "pickle_chili", available: true, quantity: "500g", name: "Chili Pickle", time: "10 MINS", price: "₹280", category: .chutneyAndPickle),
            ProductModel(id: 14, image: "pickle_cucumber", available: true, quantity: "250g", name: "Cucumber Pickle", time: "10 MINS", price: "₹200", category: .chutneyAndPickle),
            ProductModel(id: 15, image: "pickle_carrot", available: false, quantity: "300g", name: "Carrot Pickle", time: "10 MINS", price: "₹210", category: .chutneyAndPickle),
            ProductModel(id: 16, image: "pickle_garlic", available: true, quantity: "400g", name: "Garlic Pickle", time: "10 MINS", price: "₹230", offer: "15% OFF", category: .chutneyAndPickle),
            ProductModel(id: 17, image: "pickle_beetroot", available: true, quantity: "500g", name: "Beetroot Pickle", time: "10 MINS", price: "₹240", category: .chutneyAndPickle),
            ProductModel(id: 18, image: "pickle_cabbage", available: false, quantity: "250g", name: "Cabbage Pickle", time: "10 MINS", price: "₹220", category: .chutneyAndPickle),
            ProductModel(id: 19, image: "pickle_eggplant", available: true, quantity: "300g", name: "Eggplant Pickle", time: "10 MINS", price: "₹260", offer: "10% OFF", category: .chutneyAndPickle),
            ProductModel(id: 20, image: "pickle_onion", available: true, quantity: "400g", name: "Onion Pickle", time: "10 MINS", price: "₹250", category: .chutneyAndPickle)
        ]
    }


    static var saladDressings: [ProductModel] {
        [
            ProductModel(id: 1, image: "classic_ranch_dressing", available: true, quantity: "250ml", name: "Classic Ranch Dressing", time: "10 MINS", price: "₹200", offer: "13% OFF", category: .saladDressings),
            ProductModel(id: 2, image: "balsamic_vinaigrette", available: false, quantity: "250ml", name: "Balsamic Vinaigrette", time: "10 MINS", price: "₹220", category: .saladDressings),
            ProductModel(id: 3, image: "creamy_caesar_dressing", available: true, quantity: "300ml", name: "Creamy Caesar Dressing", time: "10 MINS", price: "₹240", offer: "10% OFF", category: .saladDressings),
            ProductModel(id: 4, image: "italian_dressing", available: true, quantity: "250ml", name: "Italian Dressing", time: "10 MINS", price: "₹210", category: .saladDressings),
            ProductModel(id: 5, image: "honey_mustard_dressing", available: false, quantity: "200ml", name: "Honey Mustard Dressing", time: "10 MINS", price: "₹230", category: .saladDressings),
            ProductModel(id: 6, image: "blue_cheese_dressing", available: true, quantity: "250ml", name: "Blue Cheese Dressing", time: "10 MINS", price: "₹250", offer: "5% OFF", category: .saladDressings),
            ProductModel(id: 7, image: "thousand_island_dressing", available: true, quantity: "300ml", name: "Thousand Island Dressing", time: "10 MINS", price: "₹260", category: .saladDressings),
            ProductModel(id: 8, image: "greek_yogurt_dressing", available: false, quantity: "200ml", name: "Greek Yogurt Dressing", time: "10 MINS", price: "₹220", category: .saladDressings),
            ProductModel(id: 9, image: "avocado_dressing", available: true, quantity: "250ml", name: "Avocado Dressing", time: "10 MINS", price: "₹240", offer: "13% OFF", category: .saladDressings),
            ProductModel(id: 10, image: "chipotle_dressing", available: true, quantity: "300ml", name: "Chipotle Dressing", time: "10 MINS", price: "₹250", category: .saladDressings),
            ProductModel(id: 11, image: "sesame_dressing", available: false, quantity: "250ml", name: "Sesame Dressing", time: "10 MINS", price: "₹230", category: .saladDressings),
            ProductModel(id: 12, image: "russian_dressing", available: true, quantity: "200ml", name: "Russian Dressing", time: "10 MINS", price: "₹210", offer: "10% OFF", category: .saladDressings),
            ProductModel(id: 13, image: "citrus_dressing", available: true, quantity: "250ml", name: "Citrus Dressing", time: "10 MINS", price: "₹220", category: .saladDressings),
            ProductModel(id: 14, image: "maple_balsamic_dressing", available: true, quantity: "300ml", name: "Maple Balsamic Dressing", time: "10 MINS", price: "₹260", offer: "5% OFF", category: .saladDressings),
            ProductModel(id: 15, image: "cilantro_lime_dressing", available: true, quantity: "200ml", name: "Cilantro Lime Dressing", time: "10 MINS", price: "₹230", category: .saladDressings),
            ProductModel(id: 16, image: "spicy_sriracha_dressing", available: false, quantity: "250ml", name: "Spicy Sriracha Dressing", time: "10 MINS", price: "₹240", category: .saladDressings),
            ProductModel(id: 17, image: "herb_vinaigrette", available: true, quantity: "300ml", name: "Herb Vinaigrette", time: "10 MINS", price: "₹250", offer: "13% OFF", category: .saladDressings),
            ProductModel(id: 18, image: "mustard_vinaigrette", available: true, quantity: "250ml", name: "Mustard Vinaigrette", time: "10 MINS", price: "₹220", category: .saladDressings),
            ProductModel(id: 19, image: "creamy_herb_dressing", available: true, quantity: "200ml", name: "Creamy Herb Dressing", time: "10 MINS", price: "₹230", category: .saladDressings),
            ProductModel(id: 20, image: "poppy_seed_dressing", available: true, quantity: "250ml", name: "Poppy Seed Dressing", time: "10 MINS", price: "₹240", offer: "10% OFF", category: .saladDressings)
        ]
    }

    static var dips: [ProductModel] {
        [
            ProductModel(id: 1, image: "guacamole_dip", available: true, quantity: "250g", name: "Guacamole Dip", time: "10 MINS", price: "₹220", offer: "13% OFF", category: .dips),
            ProductModel(id: 2, image: "salsa_dip", available: false, quantity: "300g", name: "Salsa Dip", time: "10 MINS", price: "₹200", category: .dips),
            ProductModel(id: 3, image: "hummus_dip", available: true, quantity: "250g", name: "Hummus Dip", time: "10 MINS", price: "₹210", category: .dips),
            ProductModel(id: 4, image: "baba_ganoush_dip", available: true, quantity: "300g", name: "Baba Ganoush Dip", time: "10 MINS", price: "₹240", offer: "10% OFF", category: .dips),
            ProductModel(id: 5, image: "tzatziki_dip", available: false, quantity: "250g", name: "Tzatziki Dip", time: "10 MINS", price: "₹230", category: .dips),
            ProductModel(id: 6, image: "spinach_artichoke_dip", available: true, quantity: "300g", name: "Spinach Artichoke Dip", time: "10 MINS", price: "₹260", category: .dips),
            ProductModel(id: 7, image: "buffalo_chicken_dip", available: true, quantity: "250g", name: "Buffalo Chicken Dip", time: "10 MINS", price: "₹250", offer: "5% OFF", category: .dips),
            ProductModel(id: 8, image: "seven_layer_dip", available: false, quantity: "300g", name: "Seven Layer Dip", time: "10 MINS", price: "₹270", category: .dips),
            ProductModel(id: 9, image: "queso_dip", available: true, quantity: "250g", name: "Queso Dip", time: "10 MINS", price: "₹240", category: .dips),
            ProductModel(id: 10, image: "cheesy_bacon_dip", available: true, quantity: "300g", name: "Cheesy Bacon Dip", time: "10 MINS", price: "₹250", offer: "13% OFF", category: .dips),
            ProductModel(id: 11, image: "ranch_dip", available: false, quantity: "250g", name: "Ranch Dip", time: "10 MINS", price: "₹220", category: .dips),
            ProductModel(id: 12, image: "sriracha_mayo_dip", available: true, quantity: "200g", name: "Sriracha Mayo Dip", time: "10 MINS", price: "₹230", category: .dips),
            ProductModel(id: 13, image: "roasted_red_pepper_dip", available: true, quantity: "250g", name: "Roasted Red Pepper Dip", time: "10 MINS", price: "₹240", category: .dips),
            ProductModel(id: 14, image: "cilantro_lime_dip", available: true, quantity: "300g", name: "Cilantro Lime Dip", time: "10 MINS", price: "₹250", offer: "10% OFF", category: .dips),
            ProductModel(id: 15, image: "creamy_herb_dip", available: true, quantity: "250g", name: "Creamy Herb Dip", time: "10 MINS", price: "₹220", category: .dips),
            ProductModel(id: 16, image: "caramelized_onion_dip", available: true, quantity: "300g", name: "Caramelized Onion Dip", time: "10 MINS", price: "₹260", offer: "13% OFF", category: .dips),
            ProductModel(id: 17, image: "chipotle_honey_dip", available: true, quantity: "250g", name: "Chipotle Honey Dip", time: "10 MINS", price: "₹240", category: .dips),
            ProductModel(id: 18, image: "mango_salsa_dip", available: true, quantity: "300g", name: "Mango Salsa Dip", time: "10 MINS", price: "₹250", category: .dips),
            ProductModel(id: 19, image: "creamy_avocado_dip", available: false, quantity: "250g", name: "Creamy Avocado Dip", time: "10 MINS", price: "₹230", category: .dips),
            ProductModel(id: 20, image: "herbed_butter_dip", available: true, quantity: "200g", name: "Herbed Butter Dip", time: "10 MINS", price: "₹220", offer: "5% OFF", category: .dips)
        ]
    }
}
