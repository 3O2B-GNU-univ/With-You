//
//  LoginView.swift
//  WithYou
//
//  Created by 준호 on 2023/05/18.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        ZStack{
            Color("mainColor")
                .ignoresSafeArea()
            VStack{
                Spacer()
                Text("위듀")
                    .font(.system(size: 65, weight: .bold, design: .default))
                    .foregroundColor(Color.white)
                    .shadow(radius: 10)
                Spacer()
                Spacer()
                Spacer()
                VStack{
                    // 로그인 영역
                    Button("애플 로그인") {
                        // 버튼 클릭 시 실행할 코드
//                        TestingView()
                    }
                    .buttonStyle(.bordered)
                    .controlSize(.large)
                    Button("카카오 로그인") {
                        // 버튼 클릭 시 실행할 코드
//                        TestingView()
                    }
                    .buttonStyle(.bordered)
                    .controlSize(.large)
                    Button("구글 로그인") {
                        // 버튼 클릭 시 실행할 코드
//                        TestingView()
                    }
                    .buttonStyle(.bordered)
                    .controlSize(.large)
                }
                .tint(Color.black)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
