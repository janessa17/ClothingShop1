//
//  ContentView.swift
//  ClothingShop
//
//  Created by Janessa Vazquez on 5/17/22.
//

import SwiftUI

struct ContentView: View {
    var columns = [GridItem(.adaptive(minimum: 160),
                            spacing: 20)]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
            ForEach(productList, id: \.id) { product in ProductCard(product: product)
            }
        }
        
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}