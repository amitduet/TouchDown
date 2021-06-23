//
//  BrandGridView.swift
//  TouchDown
//
//  Created by BJIT on 2021/06/05.
//

import SwiftUI

struct BrandGridView: View {
    //MARK:- Propertis
    
    //MARK:- Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: true, content: {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing, content: {
                ForEach(brands) { brand in
                    BrandItemView(brand: brand)
                }
            })
            .frame(height: 200)
            .padding(15)
        })//:ScrollView
    }
}

//MARK:- Preview
struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .previewLayout(.sizeThatFits)
            .background(colorBackgound)
    }
}
