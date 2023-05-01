//
//  ContentView.swift
//  WithYou
//
//  Created by 최성빈 on 2023/04/02.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 1
    
    init() {
            UITabBar.appearance().barTintColor = .black
        }
    
    var body: some View {
        NavigationView {
            TabView(selection: $selection) {
                Text("Tab Content 1").tabItem { Image(systemName: "magnifyingglass") }.tag(1)
                WithYouView().tabItem { Image(systemName: "person.2") }.tag(2)
                Text("Tab Content 1").tabItem { Image(systemName: "message") }.tag(3)
                Text("Tab Content 1").tabItem { Image(systemName: "gearshape") }.tag(4)
            }
            .accentColor(Color("mainColor"))
        }
        
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

