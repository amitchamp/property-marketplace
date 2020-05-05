//
//  StarRatingView.swift
//  FindProperty
//
//  Created by Amit on 31/03/20.
//  Copyright © 2020 Tutorials. All rights reserved.
//

import SwiftUI

struct StarRatingView: View {
    let rating: Int

    var body: some View {
        Group {
            ForEach(1..<6) { number in
                Image(systemName: self.rating >= number ? "star.fill" : "star")
                    .foregroundColor(self.rating >= number ? .yellow : .gray)
                    .font(.footnote)
                    .padding(.trailing, -6)
            }
        }
    }
}

struct StarRatingView_Previews: PreviewProvider {
    static var previews: some View {
        StarRatingView(rating: 4)
    }
}
