//
//  FooterView.swift
//  TouchDown
//
//  Created by BJIT on 2021/06/03.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack (alignment:.center, spacing:10){
            Text("We offer the most cutting edge, confortable, lightweight, and durable football halmets in the market at affordable prices.")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(0)
            
            
            Text("Copyright © Amit Chy\nAll rights reserved.")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
        }//:VStack
        .padding()
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
            .background(colorBackgound)
    }
}
