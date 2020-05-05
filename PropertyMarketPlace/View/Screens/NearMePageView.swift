//
//  NearMePageView.swift
//  FindProperty
//
//  Created by Amit on 08/04/20.
//  Copyright © 2020 Tutorials. All rights reserved.
//

import SwiftUI

struct NearMePageView: View {
    var favouriteProperties: [Property] = Property.all()

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
            .navigationBarTitle(Text("Near Me"), displayMode: .inline)
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

struct NearMePageView_Previews: PreviewProvider {
    static var previews: some View {
        NearMePageView(favouriteProperties: Property.all())
    }
}
