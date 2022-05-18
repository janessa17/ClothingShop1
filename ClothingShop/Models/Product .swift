//
//  Product .swift
//  ClothingShop
//
//  Created by Janessa Vazquez on 5/17/22.
//

import Foundation


struct Product:
Identifiable {
    var price: Double
    var id = UUID()
    var name: String
    var image: String
    
}
var productList = [Product(price: 49.99, name: "White long sleeve", image: "clothing1"),
                   Product(price: 49.99, name: "White ruffle long sleeve", image: "clothing2"),
                   Product(price: 69.99, name: "Jean jacket", image: "clothing3"),
                   Product(price: 69.99, name: "White blazer", image: "clothing4"),
                   Product(price: 89.99, name: "Button up dress", image: "clothing5"),
                   Product(price: 89.99, name: "Blazer dress", image: "clothing6"),
                   Product(price: 79.99, name: "White long dress", image: "clothing7"),
                   Product(price: 89.99, name: "Crop blazer set", image: "clothing8")]
