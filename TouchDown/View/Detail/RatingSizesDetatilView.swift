//
//  RatingSizesDetatilView.swift
//  TouchDown
//
//  Created by BJIT on 2021/06/06.
//

import SwiftUI

struct RatingSizesDetatilView: View {
    //MARK:- Properties
    let sizes:[String] = ["XS","S", "M", "L", "XL"]
    //MARK:- Preview
    var body: some View {
        HStack(alignment: .top, spacing: 3, content: {
            //Rating
            VStack(alignment: .leading, spacing: 3, content: {
                    Text("Rating")
                        .font(.footnote)
                        .fontWeight(.heavy)
                        .foregroundColor(colorGray)
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 3, content: {
                    ForEach (1...5, id:\.self) { item in
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28)
                                .background(colorGray.cornerRadius(5.0))
                                .foregroundColor(.white)
                        })
                    }
                })
            })//:VStack
            
            Spacer()
            //Sizes
            VStack(alignment: .trailing, spacing: 3, content: {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.heavy)
                    .foregroundColor(colorGray)
                HStack(alignment: .center, spacing: 3, content: {
                    ForEach(sizes, id:\.self) { size in
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text(size)
                                .font(.footnote)
                                .foregroundColor(colorGray)
                                .fontWeight(.heavy)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.white.cornerRadius(5))
                                .background(
                                    RoundedRectangle(cornerRadius: 5.0).stroke(colorGray, lineWidth: 2)
                                )
                        })
                    }
                })
            })
            
        })//:HStack
    }
}

//MARK:- Preview
struct RatingSizesDetatilView_Previews: PreviewProvider {
    static var previews: some View {
        RatingSizesDetatilView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
