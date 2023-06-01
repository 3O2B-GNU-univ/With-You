//
//  DatailVIew.swift
//  WithYou
//
//  Created by 전제윤 on 2023/05/18.
//

import SwiftUI

struct DetailVeiwFront: View {
    var another: Another

    
    var body: some View {
            VStack {
                VStack {
                    Spacer()
                    Text(another.name)
                        .font(.system(size: 24))
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                        .padding(.top, 300)
                }
                .edgesIgnoringSafeArea(.all)
                .background(Color("mainColor"))
                .ignoresSafeArea(edges: .top)
                .frame(width: 400.0, height: 500)
                
                Spacer().frame(height: 20)
                
                HStack {
                    HStack {
                        NavigationLink(destination: ChattingPage()) {
                            Image(systemName: "message")
                                .foregroundColor(Color.white)
                            Text("채팅")
                                .fontWeight(.heavy)
                        }
                    }
                    .padding(10)
                    .background(Color(red: 0.273, green: 0.609, blue: 0.834))
                    .foregroundColor(Color.white)
                    .cornerRadius(30)
                    .padding(.trailing, 30)
                    
                    // 프로필 사진
                    if another.imgStr == "default" {
                        Image(systemName: "person.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                            .foregroundColor(.black)
                            .background(.white)
                            .cornerRadius(90)
                            .offset(y: -90)
                            .padding(.bottom, -90)
                    } else {
                        Image(another.imgStr)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                            .foregroundColor(.black)
                            .background(.white)
                            .cornerRadius(90)
                            .offset(y: -90)
                            .padding(.bottom, -90)
                    }
                    
                    Spacer().frame(width: 24)
                    
                    HStack {
                        Image(systemName: "star.fill")
                            .padding(.trailing, 2)
                            .foregroundColor(.yellow)
                        Text(String(another.score))
                        
                        Button(action: {
                            another.favorit.toggle()
                            
                        }) {
                            if another.favorit {
                                Image(systemName: "heart.fill")
                                    .padding(.trailing, 10)
                                    .foregroundColor(Color.red)
                                    .padding(.leading, 10)
                            } else {
                                Image(systemName: "heart")
                                    .padding(.trailing, 10)
                                    .foregroundColor(Color.red)
                                    .padding(.leading, 10)
                            }
                        }
                    }
                }
                
                HStack {
                    VStack(alignment: .leading, spacing: 30) {
                        TextWithCategory(title: "기숙사", category: another.categories[1])
                        VStack {
                            Text("MBTI")
                                .font(.system(size: 24))
                                .fontWeight(.bold)
                                .padding(.bottom, 4.0)
                            Text("\(another.categories[3])\(another.categories[4])\(another.categories[5])\(another.categories[6])")
                        }
                        TextWithCategory(title: "취침시간", category: another.categories[8])
                        TextWithCategory(title: "청소주기", category: another.categories[10])
                        TextWithCategory(title: "흡연 여부", category: another.categories[12])
                    }
                    .padding(.leading, 80)
                    
                    Spacer()
                    
                    VStack(alignment: .leading, spacing: 30) {
                        TextWithCategory(title: "학년", category: another.categories[2])
                        TextWithCategory(title: "기상시간", category: another.categories[7])
                        TextWithCategory(title: "잠버릇", category: another.categories[9])
                        TextWithCategory(title: "향 민감도", category: another.categories[11])
                        TextWithCategory(title: "알람소리", category: another.categories[13])
                    }
                    .padding(.trailing, 80)
                }
                .padding(.bottom, 80)
                .padding(.top, 20)
            }
            .padding(.bottom, 400)
    }
}

struct TextWithCategory: View {
    var title: String
    var category: String
    
    var body: some View {
        VStack {
            Text(title)
                .font(.system(size: 24))
                .fontWeight(.bold)
                .padding(.bottom, 4.0)
            Text(category)
        }
    }
}



struct DetailVeiwFrontPreviews: PreviewProvider {
    static var previews: some View {
        DetailVeiwFront(another: Another(id: UUID(), name: "Sample User", score: 3.3, categories: ["Category 1", "8동", "3학년","E","N","T","J","9시","22시","없음",
            "매일","중", "안함", "중간"]))
    }
}
