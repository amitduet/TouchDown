//
//  NavigationBarDetailView.swift
//  TouchDown
//
//  Created by BJIT on 2021/06/05.
//

import SwiftUI

struct NavigationBarDetailView: View {
    //MARK:- Properties
    @EnvironmentObject var shop:Shop
    
    //MARK:- Body
    var body: some View {
        HStack {
            Button(action: {
                feedback.impactOccurred()
                shop.showingProduct = false
                shop.selectedProduct = nil
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            })
            Spacer()
            Button(action: {}, label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            })

            
        }//:HStack
    }
}

//MARK:- Preview
struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
