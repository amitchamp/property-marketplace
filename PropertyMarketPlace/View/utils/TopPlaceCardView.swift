//
//  TopPlaceCardView.swift
//  FindProperty
//
//  Created by Amit on 31/03/20.
//  Copyright © 2020 Tutorials. All rights reserved.
//

import SwiftUI

struct TopPlaceCardView: View {
    let property: Property
    let trailingpaddingValue: Int

    var body: some View {
        VStack(alignment: .leading) {
            Image("\(property.coverImage)")
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 100)
                .clipped()
                .padding(.top, -10)
            
            VStack(alignment: .leading) {
                Text("\(property.title)")
                    .bold()
                
                Text("\(property.address)")
                    .foregroundColor(Color.gray)
                    .font(.footnote)
            }
            .padding([.leading, .trailing], 6)
        }
        .frame(width: 150, height: 155)
        .background(Color.white)
        .cornerRadius(8)
        .padding([.bottom, .leading], 10)
        .padding(.trailing, CGFloat(integerLiteral: self.trailingpaddingValue))
        .shadow(radius: 2)
    }
}

struct TopPlaceCardView_Previews: PreviewProvider {
    static var previews: some View {
        TopPlaceCardView(property: Property.getOneProperty(), trailingpaddingValue: 20)
    }
}
