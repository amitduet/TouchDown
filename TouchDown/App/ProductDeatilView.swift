//
//  ProductDeatilView.swift
//  TouchDown
//
//  Created by BJIT on 2021/06/05.
//

import SwiftUI

struct ProductDeatilView: View {
    //MARK:- Property
    @EnvironmentObject var shop:Shop
    
    //MARK:- Body
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            //NavBar
            NavigationBarDetailView()
                .padding()
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            //Header
            HeaderDetailView()
                .padding(.horizontal)

            //Deatil Top part
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1.0)
            
            //DetailBootomPart
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 0, content: {
               
                //RatingSizes
                RatingSizesDetatilView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                
                //Description
                ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false, content: {
                    Text(shop.selectedProduct?.description ??  sampleProduct.description)
                        .font(.system(.body, design:.rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                })//:ScrollView
                
                //Quantity + Favourite
                QuantityFavouriteDetailView()
                    .padding(.vertical, 10)
                // Add to cart
                AddToCartDetailView()
                    .padding(.bottom, 20)
            })//:VStack
            .zIndex(0.0)
            .padding(.horizontal)
            .background(
                Color.white.clipShape(CustomShape())
                    .padding(.top, -105)
            )

        })//:VSTack
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(red: shop.selectedProduct?.red ??  sampleProduct.red,
                  green: shop.selectedProduct?.green ?? sampleProduct.green,
                  blue: shop.selectedProduct?.blue ?? sampleProduct.blue).ignoresSafeArea(.all, edges: .all)
        )
    }
}

//MARK:- Preview
struct ProductDeatilView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDeatilView()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375.0, height: 812.0))
    }
}
