//
//  BagManager.swift
//  ClothingShop
//
//  Created by Janessa Vazquez on 5/18/22.
//

import Foundation

class BagManager: ObservableObject {
    @Published private(set)
    var products: [Product] = []
    @Published private(set)
    var total: Int = 0
    
    func addToBag(product: Product) {
        products.append(product)
        total += product.price
    }
    func removeFromBag(product: Product) {
        products = products.filter { $0.id != product.id }
        total -= product.price
    }
    
}
