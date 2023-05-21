//
//  roommateInfoView.swift
//  WithYou
//
//  Created by 전제윤 on 2023/05/18.
//

import SwiftUI

struct RoommateInfoView: View {
    
    var userImage: String
    var nickName : String
    var dormitory : Int
    var school_grade : Int
    var user_grade: Double
    
    @State private var heartclick : Bool = false
    
    var body: some View {
        HStack(spacing: 20){
            
            //프로필 사진을 넣는 곳
            Image(systemName: userImage)
                .font(.system(size: 50))
            
            
            //사용자 개인 정보를 넣는 곳
            VStack(alignment: .leading, spacing: 0) {
                Divider().opacity(0)
                Text(nickName)
                    .fontWeight(.bold)
                    .font(.system(size: 23))
                Spacer().frame(height: 10)
                Text("\(dormitory)동   \(school_grade)학년")
            }
                
            
            //찜 및 평균 평점을 넣는 곳
            VStack(alignment: .trailing){
                Button(action: {
                    self.heartclick.toggle()}) {
                        Image(systemName: heartclick ? "heart" : "heart.fill")
                            .padding(.bottom, 10)
                            .foregroundColor(.red)
                    }
                       
                    HStack(spacing: 5){
                        Image(systemName: "star.fill")
                            .padding(.trailing, 2)
                            .foregroundColor(.yellow)
                        Text(String(user_grade))
                    }
                }
            
            }//전제 하나의 칸에 대한 HStack
            .padding(20)
            
            
        
        }
    }
    
    struct RoommateInfoView_Previews: PreviewProvider {
        static var previews: some View {
            RoommateInfoView(userImage: "person.circle", nickName: "6관 청소 마스터", dormitory: 8, school_grade: 3, user_grade: 2.32)
        }
    }
