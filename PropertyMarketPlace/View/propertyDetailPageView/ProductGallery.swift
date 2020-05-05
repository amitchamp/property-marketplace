//
//  ProductGallery.swift
//  FindProperty
//
//  Created by Amit on 31/03/20.
//  Copyright © 2020 Tutorials. All rights reserved.
//

import SwiftUI

struct ProductGallery: View {
    let coverImage: String
    let galleryImages: [String]

    var body: some View {
        Group {
            Image("\(self.coverImage)")
                .resizable()
                .aspectRatio(4/3, contentMode: .fit)
                .padding(.bottom, -5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 4) {
                    ForEach(self.galleryImages, id: \.self) { imageName in
                        Image("\(imageName)")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150, height: 100)
                    }
                }
            }
        }
    }
}

struct ProductGallery_Previews: PreviewProvider {
    static var previews: some View {
        ProductGallery(coverImage: "Property_1", galleryImages: ["Property_1", "Property_2"])
    }
}
