//
//  KakaoAuthVM.swift
//  WithYou
//
//  Created by 준호 on 2023/05/29.
//

import Foundation
import Combine
import KakaoSDKAuth
import KakaoSDKUser

class KakaoAuthVM: ObservableObject {
    
    @Published var isLoggedIn : Bool = false
    
    func kakaoLoginButtonTapped() {
        if AuthApi.hasToken() {
            UserApi.shared.accessTokenInfo { AccessTokenInfo, error in
                if let error = error {
                    print("DEBUG: 카카오톡 토큰 가져오기 에러 \(error.localizedDescription)")
                    self.kakaoLogin()
                }
                
            }
        } else {
            self.kakaoLogin()
        }
    }
    
    private func kakaoLogin() {
        if UserApi.isKakaoTalkLoginAvailable() {
            kakaoLoginInApp() // 카카오톡 앱이 있다면 앱으로 로그인
        } else {
            kakaoLoginInWeb() // 앱이 없다면 웹으로 로그인(시뮬레이터)
        }
    }
    
    func KakaoLogout() {
            UserApi.shared.logout {(error) in
                if let error = error {
                    print(error)
                }
                else {
                    print("logout() success.")
                    self.isLoggedIn = false
                }
            }
        }
    
    private func kakaoLoginInApp() {
        UserApi.shared.loginWithKakaoTalk { oauthToken, error in
            if let error = error {
                print("DEBUG: 카카오톡 로그인 에러 \(error.localizedDescription)")
            } else {
                print("DEBUG: 카카오톡 로그인 Success")
                self.isLoggedIn = true
                if let token = oauthToken {
                    print("DEBUG: 카카오톡 토큰 \(token)")
//                    self.loginInFirebase()
                }
            }
        }
    }

    private func kakaoLoginInWeb() {
        UserApi.shared.loginWithKakaoAccount { oauthToken, error in
            if let error = error {
                print("DEBUG: 카카오톡 로그인 에러 \(error.localizedDescription)")
            } else {
                print("DEBUG: 카카오톡 로그인 Success")
                self.isLoggedIn = true
                if let token = oauthToken {
                    print("DEBUG: 카카오톡 토큰 \(token)")
//                    self.loginInFirebase()
                }
            }
        }
    }
}
