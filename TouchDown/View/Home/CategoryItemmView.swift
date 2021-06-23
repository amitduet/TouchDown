//
//  CategoyItemmView.swift
//  TouchDown
//
//  Created by BJIT on 2021/06/05.
//

import SwiftUI

struct CategoryItemmView: View {
    //MARK:- Properties
    let category:Category
    
    //MARK:- Body
    var body: some View {
        
        Button(action: {}, label: {
            HStack(alignment:.center, spacing:10) {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .foregroundColor(.gray)
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                
                Text(category.name)
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                Spacer()
            }//:HStack
            .padding()
            .background(Color.white.cornerRadius(12.0))
            .background(
                RoundedRectangle(cornerRadius: 12.0)
                    .stroke(Color.gray, lineWidth: 1.0)
            )
        })//:Button
        
        
    }
}

//MARK:- Preview
struct CategoyItemmView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemmView(category: categories[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackgound)
    }
}
