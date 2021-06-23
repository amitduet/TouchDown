//
//  TitleView.swift
//  TouchDown
//
//  Created by BJIT on 2021/06/05.
//

import SwiftUI

struct TitleView: View {
    //MARK:- Properties
    var title:String
    
    
    //MARK:- Body
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            Spacer()
        }//HStack
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}

//MARK:- Preview
struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Halmet")
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackgound)
    }
}
