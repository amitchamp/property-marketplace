//
//  ContentView.swift
//  FindProperty
//
//  Created by Amit on 31/03/20.
//  Copyright © 2020 Tutorials. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            HomepageView()
                .tabItem({
                    Image(systemName: "house")
                    Text("Home")
                })
            
            NearMePageView()
                .tabItem({
                    Image(systemName: "map")
                    Text("Near Me")
                })
            
            FavouritePageView()
                .tabItem({
                    Image(systemName: "heart")
                    Text("Favourite")
                })
            
            Text("Profile")
                .tabItem({
                    Image(systemName: "person")
                    Text("Profile")
                })
        }
        .accentColor(Color.pinkTitleColor)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
