//
//  BagBtn.swift
//  ClothingShop
//
//  Created by Janessa Vazquez on 5/17/22.
//

import SwiftUI

struct BagBtn: View {
    var numberOfProducts: Int
    var body: some View {
        ZStack(alignment: . topTrailing) {
            Image(systemName: "bag")
                .padding(.top, 5)
            
            if numberOfProducts > 0 {
                Text("\(numberOfProducts)")
                    .font(.caption2).bold()
                    .foregroundColor(.white)
                    .frame(width: 15, height: 15)
                    .background(Color(hue: 1.0, saturation: 0.89, brightness: 0.835))
                    .cornerRadius(50)
            }
        }
    }
}
       

struct BagBtn_Previews: PreviewProvider {
    static var previews: some View {
        BagBtn(numberOfProducts: 1)
    }
}
