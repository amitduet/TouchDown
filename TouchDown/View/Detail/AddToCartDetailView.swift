//
//  AddToCartDetailView.swift
//  TouchDown
//
//  Created by BJIT on 2021/06/06.
//

import SwiftUI

struct AddToCartDetailView: View {
    //MARK:- Properties
    @EnvironmentObject var shop:Shop
    
    //MARK:- Body
    var body: some View {
        Button(action: {
            feedback.impactOccurred()
        }, label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.black)
            Spacer()
        })
        .padding(10)
        .background(
            Color(red:shop.selectedProduct?.red ?? sampleProduct.red, green: shop.selectedProduct?.green ?? sampleProduct.green, blue: shop.selectedProduct?.blue ?? sampleProduct.blue)
        )
        .clipShape(Capsule())
    }
}

//MARK:- Preview
struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
