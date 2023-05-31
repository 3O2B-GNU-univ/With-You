//
//  LoginView.swift
//  WithYou
//
//  Created by 준호 on 2023/05/18.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var kakaoAuthVM : KakaoAuthVM = KakaoAuthVM()
    
    let loginStatusInfo : (Bool) -> String = { isLoggedIn in return isLoggedIn ? "로그인 상태" : "로그아웃 상태"
    }
    
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
                VStack{
                    Button(action:{
                        kakaoAuthVM.kakaoLoginButtonTapped()
                    }, label : {
                        Image("kakao_login_large_wide")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width : UIScreen.main.bounds.width * 0.8)
                    })
                    // 로그인 영역
                    Button("애플 로그인") {
                        // 버튼 클릭 시 실행할 코드
                        kakaoAuthVM.KakaoLogout()
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
                    .hidden()
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
