//
//  TopPlaceView.swift
//  FindProperty
//
//  Created by Amit on 31/03/20.
//  Copyright © 2020 Tutorials. All rights reserved.
//

import SwiftUI

struct TopPlaceView: View {
    let topProperty: [Property]

    var body: some View {
        VStack {
            HStack {
                Text("Top Place")
                    .bold()
                
                Spacer()
                
                Text("See all")
                    .font(.footnote)
                    .foregroundColor(Color.pinkTitleColor)
            }
            .padding([.leading, .trailing], 20)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 5) {
                    ForEach(0..<self.topProperty.count) { value in
                        TopPlaceCardView(property: self.topProperty[value], trailingpaddingValue: value == self.topProperty.count - 1 ? 20 : 0)
                    }
                }
            }
            .frame(height: 170)
            .padding(.leading, 10)
        }
        
    }
}

struct TopPlaceView_Previews: PreviewProvider {
    static var previews: some View {
        TopPlaceView(topProperty: Property.getTopProperty())
    }
}
