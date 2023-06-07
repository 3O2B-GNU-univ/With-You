//
//  ContentView.swift
//  WithYou
//
//  Created by 최성빈 on 2023/04/02.
//

import SwiftUI

struct ContentView: View {
    @Binding var selection: Int
    @Binding var user: User
    @State private var isButtonPressed = false
    
    var body: some View {
        NavigationView {
            TabView(selection: $selection) {
                RoommateFindView(user: $user, selection: $selection).tabItem { Image(systemName: "magnifyingglass") }.tag(1)
                if user.roommate == nil {
                    Text("룸메이트가 없습니다.").tabItem { Image(systemName: "person.2") }.tag(2)
                } else {
                    WithYouView(user: user).tabItem { Image(systemName: "person.2") }.tag(2)
                }
                MainMessagesView(isButtonPressed: $isButtonPressed).tabItem { Image(systemName: "message") }.tag(3)
                SettingsView(user: $user).tabItem { Image(systemName: "gearshape") }.tag(4)
            }
            .accentColor(Color("mainColor"))
            .onAppear {
                UITabBar.appearance().backgroundColor = .white
            }
        }
            .navigationBarHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    @State static private var selection = 1
    
    static var previews: some View {
        let user = User(name: "John Doe") // 임의의 User 객체 생성
        return ContentView(selection: $selection, user: .constant(user))
    }
}

