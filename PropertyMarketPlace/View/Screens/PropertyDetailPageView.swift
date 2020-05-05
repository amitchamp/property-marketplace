//
//  PropertyDetailPageView.swift
//  FindProperty
//
//  Created by Amit on 31/03/20.
//  Copyright © 2020 Tutorials. All rights reserved.
//

import SwiftUI

struct PropertyDetailPageView: View {
    let propertyDetail: Property
    
    init(propertyDetail: Property) {
        self.propertyDetail = propertyDetail
    }
    
    var body: some View {
        GeometryReader { reader in
            ScrollView {
                VStack {
                    ProductGallery(coverImage: self.propertyDetail.coverImage, galleryImages: self.propertyDetail.images)

                    Group {
                        HStack(alignment: .center) {
                            VStack (alignment: .leading, spacing: 5) {
                                Text("\(self.propertyDetail.title)")
                                    .bold()
                                    .font(.system(size: 24))
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
                            
                        FacilityDetail(facilitesDetail: self.propertyDetail.facility)
                            .padding(.top, 20)

                        RatingReview(rating: self.propertyDetail.rating, ratingDetail: self.propertyDetail.ratingDescription)
                            .padding(.top, 20)
                        
                        HStack {
                            Text("\(String(format: "$%.2f", self.propertyDetail.price))")
                                .font(.system(size: 22))
                            .bold()
                            
                            Spacer()
                            
                            Button(action: {
                                print("View Detail")
                            }) {
                                Text("Book Now")
                                    .font(.caption)
                                    .padding(12)
                                    .padding(.horizontal, 20)
                                    .background(Color.pinkTitleColor)
                                    .foregroundColor(Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                    .clipped()
                            }
                        }
                        .padding(.top, 20)
                        .padding(.horizontal, 20)
                    }
                    .padding(.horizontal, 15)
                }
            }
        }
    }
}

struct PropertyDetailPageView_Previews: PreviewProvider {
    static var previews: some View {
        PropertyDetailPageView(propertyDetail: Property.getOneProperty())
    }
}
