//
//  CategoryGridView.swift
//  TouchDown
//
//  Created by BJIT on 2021/06/05.
//

import SwiftUI

struct CategoryGridView: View {
    //MARK:- Properties
    
    //MARK:- BOdy
    var body: some View {

        ScrollView(.horizontal, showsIndicators: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, content: {
            LazyHGrid(rows: gridLayout, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: columnSpacing, pinnedViews: /*@START_MENU_TOKEN@*/[]/*@END_MENU_TOKEN@*/, content: {
                
                Section(header: SectionView(rotateClockWise: false), footer:SectionView(rotateClockWise: true)) {
                    ForEach (categories) { category in
                        CategoryItemmView(category: category)
                    }
                }
                
            }) // HGrid View
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
            .frame(height: 140)
        })//:ScrollView
    }
}

//MARK:- Preview
struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackgound)
    }
}
