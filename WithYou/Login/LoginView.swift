//
//  LoginView.swift
//  WithYou
//
//  Created by 준호 on 2023/05/18.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var kakaoAuthVM : KakaoAuthVM = KakaoAuthVM()
    
    var body: some View {
        NavigationView{
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
                            if (kakaoAuthVM.isLoggedIn == true){
                                //이부분
                            }
                        }, label : {
                            Image("kakao_login_large_wide")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width : UIScreen.main.bounds.width * 0.8)
                        })
                        Button("카카오 로그아웃") {
                            kakaoAuthVM.KakaoLogout()
                        }
                        .buttonStyle(.bordered)
                        .controlSize(.large)
                        Button("구글 로그인") {
                        }
                        .buttonStyle(.bordered)
                        .controlSize(.large)
                        .hidden()
                    }
                    .tint(Color.black)
                }
            }
        }
        .fullScreenCover(isPresented: $kakaoAuthVM.isLoggedIn, content: {
                    TestingView()  // TestingView()로 화면 전환
                })
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
