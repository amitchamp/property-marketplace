//
//  FavouriteCard.swift
//  FindProperty
//
//  Created by Amit on 31/03/20.
//  Copyright © 2020 Tutorials. All rights reserved.
//

import SwiftUI

struct FavouriteCard: View {
    let propertyDetail: Property
    
    @State private var action: Int? = 0
    
    var body: some View {
        GeometryReader { geometer in
            VStack {
                Image("\(self.propertyDetail.coverImage)")
                    .resizable()
                    .scaledToFill()
                    .frame(width: geometer.size.width, height: 200)
                    .clipped()
                
                VStack(spacing: 12) {
                    HStack(alignment: .center) {
                        VStack (alignment: .leading, spacing: 5) {
                            Text("\(self.propertyDetail.title)")
                                .bold()
                                .foregroundColor(Color.pinkTitleColor)
                            
                            Text("\(self.propertyDetail.address)")
                                .font(.footnote)
                        }
                        
                        Spacer()
                        
                        Text("For \(self.propertyDetail.type)")
                            .font(.caption)
                            .padding(.horizontal, 10)
                            .padding(.vertical, 5)
                            .background(Color.greenChipColor)
                            .foregroundColor(Color.green)
                            .clipShape(Capsule(style: .circular))
                            .clipped()
                    }
                    
                    HStack {
                        StarRatingView(rating: Int(self.propertyDetail.rating))
                        
                        Spacer()
                        
                        Text("\(self.propertyDetail.totalReviews) Review")
                            .font(.footnote)
                            .foregroundColor(.grayTextColor)
                    }
                    
                    HStack {
                        FacilityCardList(facility: self.propertyDetail.facility)
                    }
                    .padding(.bottom, 10)
                    
                    RoundedRectangle(cornerRadius: 5)
                        .frame(width: geometer.size.width - 60, height: 1)
                        .foregroundColor(Color.grayTextColor)
                    
                    HStack {
                        Text("\(String(format: "$%.2f", self.propertyDetail.price))")
                            .font(.system(size: 22))
                        .bold()
                        
                        Spacer()

                        NavigationLink(destination: PropertyDetailPageView(propertyDetail: self.propertyDetail), tag: 1, selection: self.$action) {
                            EmptyView()
                        }

                        Button(action: {
                            self.action = 1
                        }) {
                            Text("View Details")
                                .font(.caption)
                                .padding(12)
                                .background(Color.pinkTitleColor)
                                .foregroundColor(Color.white)
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                                .clipped()
                        }
                    }
                }
                .padding([.horizontal], 20)
                .padding([.bottom], 12)
            }
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 2)
        }
    }
}

struct FavouriteCard_Previews: PreviewProvider {
    static var previews: some View {
        FavouriteCard(propertyDetail: Property.getOneProperty())
    }
}
