//
//  RatingReview.swift
//  FindProperty
//
//  Created by Amit on 01/04/20.
//  Copyright © 2020 Tutorials. All rights reserved.
//

import SwiftUI

struct RatingReview: View {
    let rating: Float
    let ratingDetail: [RatingDetail]
    var chunkedRatingDetal: [[RatingDetail]] = []
    
    init(rating: Float, ratingDetail: [RatingDetail]) {
        self.rating = rating
        self.ratingDetail = ratingDetail
        
        self.chunkedRatingDetal = ratingDetail.chunked(into: 2)
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Rating by Customer")
                .bold()
            
            HStack(alignment: .top) {
                ZStack {
                    Text("\(String(format: "%.1f", rating))")
                        .bold()
                        .font(.title)
                        .padding(35)
                        .background(Color.pinkLightColor)
                        .foregroundColor(Color.white)
                        .clipShape(Circle())
                    
                    Text("\(String(format: "%.1f", rating))")
                        .bold()
                        .font(.title)
                        .padding(25)
                        .background(Color.pinkTitleColor)
                        .foregroundColor(Color.white)
                        .clipShape(Circle())
                }
                .padding(.trailing, 25)

                VStack {
                    ForEach(0..<self.chunkedRatingDetal.count) { index in
                        HStack {
                            ForEach(0..<2) { innerIndex in
                                VStack(alignment: .leading) {
                                    Text("\(self.chunkedRatingDetal[index][innerIndex].name)")
                                    HStack {
                                        StarRatingView(rating: Int(self.chunkedRatingDetal[index][innerIndex].rating))
                                    }
                                }
                                if innerIndex == 0 {
                                    Spacer()
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

struct RatingReview_Previews: PreviewProvider {
    static var previews: some View {
        RatingReview(rating: 4.5, ratingDetail: [RatingDetail(name: "Cleanliness", rating: 4), RatingDetail(name: "Affordablity", rating: 4)])
    }
}
