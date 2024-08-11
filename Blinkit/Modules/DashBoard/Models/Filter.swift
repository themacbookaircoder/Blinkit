//
//  Filter.swift
//  Blinkit
//
//  Created by Kuldeep on 10/08/24.
//

import Foundation


struct Filter: Identifiable {
    let id: UUID = .init()
    let name: String
    let leadingImg: String?
    let trailingImg: String?
    
    init(name: String, leadingImg: String? = nil, trailingImg: String? = nil) {
        self.name = name
        self.leadingImg = leadingImg
        self.trailingImg = trailingImg
    }
    
    static func getData() -> [Filter] {
        return [
            Filter(name: "Sort", leadingImg: "arrow.up.arrow.down", trailingImg: "chevron.down"),
            Filter(name: "Brand",trailingImg: "chevron.down"),
            Filter(name: "Imported"),
            Filter(name: "Pouch"),
            Filter(name: "Bottle"),
            Filter(name: "chill")
        ]
    }
}
