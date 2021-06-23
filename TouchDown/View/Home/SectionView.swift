//
//  SectionView.swift
//  TouchDown
//
//  Created by BJIT on 2021/06/05.
//

import SwiftUI

struct SectionView: View {
    //MARK:- Properties
    
    @State  var rotateClockWise:Bool
    
    //MARK:- Body
    var body: some View {
        VStack(spacing:0) {
            Spacer()
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockWise ? 90 : -90 ))
            Spacer()
        }
        .background(colorGray.cornerRadius(12.0))
        .frame(width: 85)
    }
}

//MARK:- Preview
struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotateClockWise: true)
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
            .background(colorBackgound)
    }
}
