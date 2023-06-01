//
//  aboutView.swift
//  WithYou
//
//  Created by 준호 on 2023/06/01.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Text("위듀 개인정보 처리방침")
                    .font(.title)
                    .bold()
                
                Text("위듀는 사용자들의 개인정보 보호를 매우 중요하게 생각하고 있습니다. 이에 대해 다음과 같은 처리방침을 제공합니다.")
                    .font(.body)
                
                Text("1. 수집하는 개인정보")
                    .font(.headline)
                
                Text("위듀는 서비스 제공을 위해 다음과 같은 개인정보를 수집합니다:")
                    .font(.body)
                
                Text("- 이메일 주소: 계정 생성, 비밀번호 재설정, 서비스 관련 통지에 사용됩니다.")
                    .font(.body)
                Text("- 이름: 개인화된 경험 제공 및 서비스 품질 향상을 위해 사용될 수 있습니다.")
                    .font(.body)
                Text("(중략)")
                    .font(.body)
                
                
                // ... (나머지 개인정보 처리방침 내용을 추가하세요)
            }
            .padding()
        }
        .navigationBarTitle("개인정보 처리방침")
    }
}
