//
//  ContentView.swift
//  TouchDown
//
//  Created by BJIT on 2021/06/03.
//

import SwiftUI

struct ContentView: View {
    //MARK:- Properties
    @EnvironmentObject var shop:Shop
    
    //MARK:- Body
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack (spacing:0){
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.05), radius: 5, x: 0.0, y: 5.0)
                    ScrollView(.vertical, showsIndicators: false, content: {
                        VStack (spacing:0){
                            FeaturedTabView()
                                .padding(.vertical, 10)
                            CategoryGridView()
                            TitleView(title: "Halmet")
                            
                            LazyVGrid(columns: gridLayout, spacing: 15,  content: {
                                ForEach(products) { product in
                                    ProductItemView(product: product)
                                        .onTapGesture {
                                            feedback.impactOccurred()
                                            withAnimation(.easeOut) {
                                                shop.selectedProduct = product
                                                shop.showingProduct = false
                                            }
                                        }
                                }//:Loop
                            }) //:VGrid
                            .padding(15)
                            
                            TitleView(title: "Brands")
                            BrandGridView()
                            FooterView()
                                .padding(.horizontal)

                        }//:VStack
                    })// ScrollView
                }//:VStack
                .background(colorBackgound.ignoresSafeArea(.all, edges: .all))
            } else {
               ProductDeatilView()
            }
        }//:ZStack
        .ignoresSafeArea(.all, edges: .top)
        
    }
}

//MARK:- Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone X")
            .environmentObject(Shop())
    }
}
