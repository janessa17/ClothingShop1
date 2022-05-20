//
//  ProductList.swift
//  ClothingShop
//
//  Created by Janessa Vazquez on 5/18/22.
//

import SwiftUI

struct ProductList: View {
    @EnvironmentObject var bagManager: BagManager
    var product: Product
    var body: some View {
        HStack(spacing: 20) {
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50)
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 10) {
                Text(product.name)
                    .bold()
                Text("$\(product.price)")
            }
            
            Spacer()
            Image(systemName: "trash")
                .foregroundColor(Color(hue: 1.0, saturation: 0.89, brightness: 0.835))
                .onTapGesture {
                    bagManager.removeFromBag(product: product)
                }
    }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        
    }
}

struct ProductList_Previews: PreviewProvider {
    static var previews: some View {
        ProductList(product: productList[3])
            .environmentObject(BagManager())
    }
}
