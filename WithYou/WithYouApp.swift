//
//  WithYouApp.swift
//  WithYou
//
//  Created by 최성빈 on 2023/04/02.
//

import SwiftUI
import KakaoSDKCommon
import KakaoSDKAuth

@main
struct WithYouApp: App {

    init() {
        //kakao 네이티브 앱 키 세팅
        let kakaoAppKey = Bundle.main.infoDictionary?["KAKAO_NATIVE_APP_KEY"] ?? ""
        KakaoSDK.initSDK(appKey:"\(kakaoAppKey)")
    }
    
    var body: some Scene {
        WindowGroup {
            LoginView2()
        }
    }
}
