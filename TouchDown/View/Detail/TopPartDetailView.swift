//
//  TopPartDetailView.swift
//  TouchDown
//
//  Created by BJIT on 2021/06/06.
//

import SwiftUI

struct TopPartDetailView: View {
    //MARK:- Properties
    @State private var isAnimating:Bool = false
    @EnvironmentObject var shop:Shop
    
    //MARK:- Preview
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            //Price
            VStack(alignment: .leading, spacing: 6, content: {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(shop.selectedProduct?.formatedPrice ?? sampleProduct.formatedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            })
            .offset(y: isAnimating ? -50 : -75)
            
            Spacer()
            //Photo
            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
            
            //
        })//:HSTack
        .onAppear(perform: {
            withAnimation(.easeIn(duration: 0.75)){
                isAnimating.toggle()
            }
        })
    }
}

//MARK:- Preview
struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
