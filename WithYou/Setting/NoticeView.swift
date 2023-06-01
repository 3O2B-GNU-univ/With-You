//
//  NoticeView.swift
//  WithYou
//
//  Created by 준호 on 2023/06/01.
//
import SwiftUI

struct NoticeView: View {
    let notices = [
        Notice(title: "정기점검", content: "매주 토요일 아시져..?"),
        Notice(title: "연장점검", content: "빠른 시일 내로 끝내겠습니다."),
        Notice(title: "긴급점검", content: "오류로 인해 빠른 조치 취하도록 하겠습니다.")
    ]
    
    var body: some View {
        List {
            ForEach(notices) { notice in
                VStack(alignment: .leading, spacing: 8) {
                    Text(notice.title)
                        .font(.headline)
                    Text(notice.content)
                        .font(.system(size: 14)) // 폰트 크기 9로 설정
                }
                .padding(8)
                .background(Color.white)
                .cornerRadius(10)
                .padding(.vertical, 4)
            }
        }
        .listStyle(GroupedListStyle())
        .navigationBarTitle("공지사항")
    }
}

struct Notice: Identifiable {
    let id = UUID()
    let title: String
    let content: String
}
