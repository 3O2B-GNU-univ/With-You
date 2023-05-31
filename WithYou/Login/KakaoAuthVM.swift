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
import FirebaseAuth


class KakaoAuthVM: ObservableObject {
    
    @Published var isLoggedIn : Bool = false
    
//    var didSendEventClosure: ((EventType) -> Void)?
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
                }
            }
        }
    
    private func kakaoLoginInApp() {
        UserApi.shared.loginWithKakaoTalk { oauthToken, error in
            if let error = error {
                print("DEBUG: 카카오톡 로그인 에러 \(error.localizedDescription)")
            } else {
                print("DEBUG: 카카오톡 로그인 Success")
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
                if let token = oauthToken {
                    print("DEBUG: 카카오톡 토큰 \(token)")
                    self.loginInFirebase()
                }
            }
        }
    }
    
    private func loginInFirebase() {
        UserApi.shared.me() { user, error in
            if let error = error {
                print("DEBUG: 카카오톡 사용자 정보가져오기 에러 \(error.localizedDescription)")
            } else {
                print("DEBUG: 카카오톡 사용자 정보가져오기 success.")

                // 파이어베이스 유저 생성 (이메일로 회원가입)
                Auth.auth().createUser(withEmail: (user?.kakaoAccount?.email)!,
                                       password: "\(String(describing: user?.id))") { result, error in
                    if let error = error {
                        print("DEBUG: 파이어베이스 사용자 생성 실패 \(error.localizedDescription)")
                        Auth.auth().signIn(withEmail: (user?.kakaoAccount?.email)!,
                                           password: "\(String(describing: user?.id))")
//                        self.didSendEventClosure?(.close)
                    } else {
                        print("DEBUG: 파이어베이스 사용자 생성")
//                        self.didSendEventClosure?(.showSignUp) // 회원가입 화면으로 이동
//                        self.dismiss(animated: true) // 창닫기
                    }
                }
            }
        }
    }
    
    
//    private func loginInFirebase() {
//        UserApi.shared.me() { user, error in
//            if let error = error {
//                print("DEBUG: 카카오톡 사용자 정보가져오기 에러 \(error.localizedDescription)")
//            } else {
//                print("DEBUG: 카카오톡 사용자 정보가져오기 success.")
//
//                // 파이어베이스 유저 생성 (이메일로 회원가입)
//                Auth.auth().createUser(withEmail: (user?.kakaoAccount?.email)!,
//                                       password: "\(String(describing: user?.id))") { result, error in
//                    if let error = error {
//                        print("DEBUG: 파이어베이스 사용자 생성 실패 \(error.localizedDescription)")
//                        Auth.auth().signIn(withEmail: (user?.kakaoAccount?.email)!,
//                                           password: "\(String(describing: user?.id))")
//                        self.didSendEventClosure?(.close)
//                    } else {
//                        print("DEBUG: 파이어베이스 사용자 생성")
//                        self.didSendEventClosure?(.showSignUp) // 회원가입 화면으로 이동
//                        self.dismiss(animated: true) // 창닫기
//                    }
//                }
//            }
//        }
//    }
    
}

//
//func kakaoLogout(){
//    Task {
//        if await handlekakaoLogout() {
//            isLoggedIn = false
//        }
//    }
//}
//
//func handleLoginWithKakaoTalkApp() async -> Bool {
//    await withCheckedContinuation{ continuation in
//        UserApi.shared.loginWithKakaoTalk {(OAuthToken, error) in
//            if let error = error {
//                print(error)
//                continuation.resume(returning: false)
//            }
//            else {
//                print("loginWithKakaoTalk() success.")
//                _ = OAuthToken
//                continuation.resume(returning: true)
//            }
//        }
//    }
//}
//
//func handleWithKakaoAccount() async -> Bool{
//    await withCheckedContinuation{ continuation in
//        // 카카오 계정으로 로그인 하기 - 웹뷰를 열러서 로그인 하기
//        UserApi.shared.loginWithKakaoAccount {(oauthToken, error) in
//            if let error = error {
//                print(error)
//                continuation.resume(returning: false)
//            }
//            else {
//                print("loginWithKakaoAccount() success.")
//
//                //do something
//                _ = oauthToken
//                continuation.resume(returning: true)
//            }
//        }
//    }
//}
//func handleKakaoLogin() {
//
//    Task{
//        // 카카오톡 설치 여부 확인
//        if (UserApi.isKakaoTalkLoginAvailable()) {
//           await handleLoginWithKakaoTalkApp()
//        } else { // 카카오톡이 설치가 안되어 있을 경우
//            isLoggedIn = await handleWithKakaoAccount()
//        }
//    }
//}
//
//func handlekakaoLogout() async -> Bool {
//    await withCheckedContinuation{ continuation in UserApi.shared.logout {(error) in
//            if let error = error {
//                print(error)
//                continuation.resume(returning: false)
//            }
//            else {
//                print("logout() success.")
//                continuation.resume(returning: true)
//            }
//        }
//    }
//}
