//
//  ContentView.swift
//  ClothingShop
//
//  Created by Janessa Vazquez on 5/17/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject
    var bagManager = BagManager() 
    var columns = [GridItem(.adaptive(minimum: 160),
                            spacing: 20)]
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(productList, id: \.id) { product in ProductCard(product: product)
                                .environmentObject(bagManager)
    }
}
            
                .padding()
            }
            .navigationTitle(Text("Clothing Shop"))
            .toolbar {
                NavigationLink {
                   BagView()
                        .environmentObject(bagManager)
            } label: {
                BagBtn(numberOfProducts: bagManager.products.count)
            }
        .navigationViewStyle(StackNavigationViewStyle())
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
