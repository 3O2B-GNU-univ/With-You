//
//  WithYouApp.swift
//  WithYou
//
//  Created by 최성빈 on 2023/04/02.
//

import SwiftUI
import Firebase
import KakaoSDKCommon
import KakaoSDKAuth

@main
struct WithYouApp: App {
    
    init() {
        //Firebase 세팅
        FirebaseApp.configure()
        
        //kakao 네이티브 앱 키 세팅
        let kakaoAppKey = Bundle.main.infoDictionary?["KAKAO_NATIVE_APP_KEY"] ?? ""
        KakaoSDK.initSDK(appKey:"\(kakaoAppKey)")
    }
    
    var body: some Scene {
        WindowGroup {
            LoginView()
//            TestingView()
        }
    }
}
