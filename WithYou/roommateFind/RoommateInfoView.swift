//
//  roommateInfoView.swift
//  WithYou
//
//  Created by 전제윤 on 2023/05/18.
//

import SwiftUI

struct RoommateInfoView: View {
    var another: Another
    
    var body: some View {
        HStack(spacing: 20) {
            // 프로필 사진을 넣는 곳
            if another.imgStr == "default" {
                Image(systemName: "person.circle")
                    .font(.system(size: 50))
            } else {
                Image(another.imgStr)
                    .font(.system(size: 50))
            }

                
            
            // 사용자 개인 정보를 넣는 곳
            VStack(alignment: .leading, spacing: 0) {
                Divider().opacity(0)
                Text(another.name)
                    .fontWeight(.bold)
                    .font(.system(size: 23))
                Spacer().frame(height: 10)
                Text("\(another.categories[1])   \(another.categories[2])")
            }
            
            // 찜 및 평균 평점을 넣는 곳
            VStack(alignment: .trailing) {
                if another.favorit {
                    Image(systemName: "heart.fill")
                        .padding(.bottom, 10)
                        .foregroundColor(.red)
                } else {
                    Image(systemName: "heart")
                        .padding(.bottom, 10)
                        .foregroundColor(.red)
                }
                
                
                HStack(spacing: 5) {
                    Image(systemName: "star.fill")
                        .padding(.trailing, 2)
                        .foregroundColor(.yellow)
                    Text(String(another.score))
                }
            }
        }
        .padding(20)
    }
}

struct RoommateInfoView_Previews: PreviewProvider {
    static var previews: some View {
        RoommateInfoView(another: Another(id: UUID(), name: "6관 청소 마스터", categories: ["Category 1", "8동", "2학년"]))
    }
}
