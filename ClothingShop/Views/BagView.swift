//
//  BagView.swift
//  ClothingShop
//
//  Created by Janessa Vazquez on 5/17/22.
//

import SwiftUI

struct BagView: View {
    @EnvironmentObject
    var bagManager: BagManager
    var body: some View {
        ScrollView {
            if bagManager.products.count > 0 {
                ForEach(bagManager.products, id: \.id) {
                    product in ProductList(product: product)
                }
                HStack {
                    Text("Your bag total is")
                    Spacer()
                    Text("$\(bagManager.total).00")
                        .bold()
                }
                .padding()
                paymentBtn(action: {})
                    .padding()
            } else {
            Text("Your bag is empty")
            }
        }
        .navigationTitle(Text("My bag"))
        .padding(.top)
    }
}

struct BagView_Previews: PreviewProvider {
    static var previews: some View {
        BagView()
            .environmentObject(BagManager())
    }
}
