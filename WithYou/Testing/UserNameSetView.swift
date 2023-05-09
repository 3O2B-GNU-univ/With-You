//
//  UserNameSetView.swift
//  WithYou
//
//  Created by 최성빈 on 2023/05/02.
//

import SwiftUI

struct UserNameSetView: View {
    @State private var userName = ""
    @State private var isContentViewActive = false

    var body: some View {
        VStack {
            Spacer()
            
            Text("닉네임을 설정해주세요.")
                .font(.system(size: 30, weight: .bold))
                .padding(.bottom, 30)

            TextField("닉네임을 입력하세요", text: $userName)
                .padding(.horizontal, 20.0)
                .padding(.vertical, 10.0)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10.0)
                .padding(.horizontal, 50.0)
                .padding(.bottom, 10)
            NavigationLink(destination: ContentView(), isActive: $isContentViewActive) {
                Button(action: {
                    _ = User(name: self.userName)
                    isContentViewActive = true
                }) {
                    Text("확인")
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding(.all, 20.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(Color("mainColor"))
                        .cornerRadius(40)
                }
            }
            
            Spacer()
        }
        .navigationBarHidden(true)
    }
    
}

struct UserNameSetView_Previews: PreviewProvider {
    static var previews: some View {
        UserNameSetView()
    }
}
