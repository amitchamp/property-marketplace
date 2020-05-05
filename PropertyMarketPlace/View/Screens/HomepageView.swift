//
//  HomepageView.swift
//  FindProperty
//
//  Created by Amit on 31/03/20.
//  Copyright © 2020 Tutorials. All rights reserved.
//

import SwiftUI

struct HomepageView: View {
    @State var index = 0
    @State var favouriteProperties: [Property] = Property.getFavourite()
    var topProperty: [Property] = Property.getTopProperty()
    
    var featuredPropertyHeightOffset : Int
    
    init() {
        let screenSize = UIScreen.main.bounds.size.height
        featuredPropertyHeightOffset = 180
        
        if screenSize < 700 {
            featuredPropertyHeightOffset = 180
        } else if screenSize > 700 && screenSize < 850 {
            featuredPropertyHeightOffset = 200
        } else {
            featuredPropertyHeightOffset = 230
        }
    }
    
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                ScrollView(.vertical, showsIndicators: true) {
                    Text("According to your wishes")
                        .bold()
                        .padding([.leading, .trailing], 20)
                        .padding(.bottom, -20)
                        .frame(width: UIScreen.main.bounds.width, alignment: .leading)
                    
                    VStack(spacing: 20) {
                        PageSliderView(index: self.$index.animation(), maxIndex: self.favouriteProperties.count - 1) {
                            ForEach(self.favouriteProperties) { property in
                                
                                ZStack {
                                    Image("\(property.coverImage)")
                                        .resizable()
                                        .cornerRadius(10)
                                        .padding([.leading, .trailing], 10)
                                        .aspectRatio(4/3, contentMode: .fit)
                                    
                                    VStack(alignment: .leading) {
                                        HStack {
                                            Text(String(format: "$%.2f", property.price))
                                                .font(.title)
                                                .bold()
                                            Spacer()
                                            
                                            Image(systemName: "location.fill")
                                                .foregroundColor(Color.pinkTitleColor)
                                        }
                                        
                                        Text("\(property.title)")
                                            .foregroundColor(Color.pinkTitleColor)
                                            .bold()
                                            .lineLimit(0)
                                        
                                        HStack {
                                            Image(systemName: "pin.fill")
                                                .foregroundColor(Color.pinkTitleColor)
                                                .font(.footnote)
                                            Text("\(property.address)")
                                                .font(.footnote)
                                        }
                                        
                                        HStack {
                                            StarRatingView(rating: Int(property.rating))
                                            
                                            Spacer()
                                            
                                            Text("\(property.totalReviews) Review")
                                                .font(.footnote)
                                                .foregroundColor(.gray)
                                        }
                                    }
                                    .frame(width: geometry.size.width - 160)
                                    .padding(15)
                                    .background(Color.white)
                                    .cornerRadius(6)
                                    .offset(x: 0, y: geometry.size.height / 2 - CGFloat(self.featuredPropertyHeightOffset))
                                    .shadow(radius: 1)
                                }
                            }
                        }
                        .aspectRatio(contentMode: .fit)
                        .frame(width: geometry.size.width, height: (geometry.size.height / 2) + 50)
                        .padding(10)
                        .offset(x: 0, y: -30)
                        
                        PageControl(index: self.$index.animation(), maxIndex: self.favouriteProperties.count - 1)

                        TopPlaceView(topProperty: self.topProperty)
                    }
                }
            }
            .navigationBarTitle(Text("Find Property"))
            .navigationBarItems(trailing: HStack {
                Image(systemName: "magnifyingglass")
                    .padding(.trailing, 15)
                    .imageScale(.large)
                
                Image(systemName: "bell")
                    .imageScale(.large)
            })
        }
    }
}

struct HomepageView_Previews: PreviewProvider {
    static var previews: some View {
        HomepageView()
    }
}
