//
//  FavouritePageView.swift
//  FindProperty
//
//  Created by Amit on 31/03/20.
//  Copyright © 2020 Tutorials. All rights reserved.
//

import SwiftUI

struct FavouritePageView: View {
    var favouriteProperties: [Property] = Property.getTopProperty()

    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                List {
                    ForEach(self.favouriteProperties) { property in
                        FavouriteCard(propertyDetail: property)
                            .frame(height: 440)
                    }
                }
            }
            .navigationBarTitle(Text("Favourite"), displayMode: .inline)
            .navigationBarItems(trailing: HStack {
                Image("menu")
                    .resizable()
                .frame(width: 20, height: 20)
                    .imageScale(.small)
            })
            .padding(.top, 5)
        }
    }
}

struct FavouritePageView_Previews: PreviewProvider {
    static var previews: some View {
        FavouritePageView()
    }
}
