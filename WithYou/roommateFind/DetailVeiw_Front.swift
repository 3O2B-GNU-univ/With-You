//
//  DatailVIew.swift
//  WithYou
//
//  Created by 전제윤 on 2023/05/18.
//

import SwiftUI

struct DetailVeiwFront: View {
    
    @Binding
    var user_grade : Double
    
    //기본 생성자를 만들어 줘야 한다.
    init(user_grade: Binding<Double> =
        .constant(0.0)){
        _user_grade = user_grade
    }
    
    var body: some View {
        NavigationView {
            VStack{
                DetailViewbackground()
                    .ignoresSafeArea(edges: .top)
                    .frame(width: 400.0, height: 500)
            
                HStack{
                    HStack{
                        NavigationLink(destination: ChattingPage()){
                            Image(systemName: "message")
                                .foregroundColor(Color.white)
                            Text("채팅")
                                .fontWeight(.heavy)
                        }
                    } //채팅 아이콘
                    .padding(10)
                    .background(Color(red: 0.273, green: 0.609, blue: 0.834))
                    .foregroundColor(Color.white)
                    .cornerRadius(30)
                    .padding(.trailing, 30)
                    
                    UserImage()
                        .offset(y: -90)
                        .padding(.bottom, -90)
                    
                    HStack{
                        Image(systemName: "heart.fill")
                            .padding(.trailing, 10)
                            .foregroundColor(Color.red)
                            .padding(.leading, 10)
                            Image(systemName: "star.fill")
                                .padding(.trailing, 2)
                                .foregroundColor(.yellow)
                            Text(String(user_grade))
                    }
                    
                }
                
                HStack {
                    VStack(alignment : .leading, spacing: 30){
                        
                        Text("호실")
                            .fontWeight(.bold)
                            .padding(.bottom, 40)

                        Text("학년")
                            .fontWeight(.bold)
                            .padding(.bottom, 40)
                        Text("잠버릇")
                            .fontWeight(.bold)
                            .padding(.bottom, 40)
                    }//VStack
                    .padding(.leading, 80)
                    Spacer()
                    VStack(alignment : .leading, spacing: 30){
                       
                        Text("MBTI")
                            .fontWeight(.bold)
                            .padding(.bottom, 40)
                        Text("기상시간")
                            .fontWeight(.bold)
                            .padding(.bottom, 40)
                        Text("취침시간")
                            .fontWeight(.bold)
                            .padding(.bottom, 40)
                    }
                    .padding(.trailing, 80)
                }
                .padding(.bottom, 80)
                .padding(.top, 20)
                
            }//VStack
            .padding(.bottom, 400)
            
        }
    }
}

struct DetailVeiwFrontPreviews: PreviewProvider {
    static var previews: some View {
        DetailVeiwFront()
    }
}
