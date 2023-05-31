//
//  ContentView.swift
//  With-You
//
//  Created by 준호 on 2023/04/06.
//

import SwiftUI

//Models
//struct User {
//    var imgStr: String
//    var nickname: String
//}



//Views
struct SettingsView: View {
    @State private var darkModeEnabled = false
    @Binding var user: User
    
    // 유저 정보 초기화 및 받아오기 => 차후 정보 불러오기 구현하기
    
    var body: some View{
        NavigationView {
            VStack(spacing: 0) {
                HStack(spacing: 0) {
                    if user.imgStr == "default" {
                        Image(systemName: "person.circle")
                            .resizable()
                            .frame(width: 56, height: 56)
                            .clipShape(Circle())
                            .padding(.trailing, 10)
                    } else {
                        Image(user.imgStr)
                            .resizable()
                            .frame(width: 56, height: 56)
                            .clipShape(Circle())
                            .padding(.trailing, 10)
                    }
                        VStack(alignment: .leading) {
                            HStack{
                                Text(user.name)
                                    .bold()
                                Text("님")
                            }
                            .font(.system(size: 16, weight: .regular, design: .default))
                            Text("환영합니다.")
                                .font(.system(size: 12, weight: .regular, design: .default))
                                .foregroundColor(Color(red: 0.39, green: 0.36, blue: 0.36))
                        }
                        Spacer() // HStack 오른쪽을 채워주기 위한 Spacer
                }
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .padding(.top, 72)
                .padding(.leading, 40)
                .padding(.bottom, 20)
                VStack {
                    NavigationLink(destination: userProfileView(user: $user)) {
                        HStack {
                            Text("유저 프로필")
                                .foregroundColor(.black)
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(Color(red: 0.27, green: 0.61, blue: 0.84))
                        }
                        .padding(.top, 8)
                        .padding(.leading, 24)
                        .padding(.trailing, 24)
                    }
                    
                    Divider()
                        .frame(height: 16) // 높이 변경
                        .background(Color(red: 0.98, green: 0.98, blue: 0.98))
                        .overlay(Rectangle().frame(height: 1).foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))) // 굵기 조정
                    
                    VStack{
                        Toggle(isOn: $darkModeEnabled) {
                            Text("다크모드")
                        }
                        .padding(.top, 4)
                        .padding(.leading, 24)
                        .padding(.trailing, 24)
                    }
                    
                    Divider()
                        .frame(height: 16)
                        .background(Color(red: 0.98, green: 0.98, blue: 0.98))
                        .overlay(Rectangle().frame(height: 1).foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98)))
                    
                    VStack {
                        NavigationLink(destination: NoticeView()) {
                            HStack {
                                Text("공지사항")
                                    .foregroundColor(.black)
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .foregroundColor(Color(red: 0.27, green: 0.61, blue: 0.84))
                            }
                            .padding(.top, 8)
                            .padding(.leading, 24)
                            .padding(.trailing, 24)
                        }
                        
                        Divider()
                            .frame(maxWidth: UIScreen.main.bounds.width - 32)
                            .frame(height: 4)
                        
                        NavigationLink(destination: EmptyView()) {
                            HStack {
                                Text("방 나가기")
                                    .foregroundColor(.black)
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .foregroundColor(Color(red: 0.27, green: 0.61, blue: 0.84))
                            }
                            .padding(.top, 4)
                            .padding(.leading, 24)
                            .padding(.trailing, 24)
                        }
                    }
                    
                    Divider()
                        .frame(height: 16) // 높이 변경
                        .background(Color(red: 0.98, green: 0.98, blue: 0.98))
                        .overlay(Rectangle().frame(height: 1).foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))) // 굵기 조정
                    
                    VStack {
                        NavigationLink(destination: EmptyView()) {
                            HStack {
                                Text("개인정보 처리방침")
                                    .foregroundColor(.black)
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .foregroundColor(Color(red: 0.27, green: 0.61, blue: 0.84))
                            }
                            .padding(.top, 8)
                            .padding(.leading, 24)
                            .padding(.trailing, 24)
                        }
                        
                        Divider()
                            .frame(maxWidth: UIScreen.main.bounds.width - 32)
                            .frame(height: 4)
                        
                        HStack {
                            Text("개발자 정보")
                            Spacer()
                            Text("3O2B")
                                .foregroundColor(.secondary)
                        }
                            .padding(.top, 4)
                            .padding(.leading, 24)
                            .padding(.trailing, 24)
                        
                        Divider()
                            .frame(maxWidth: UIScreen.main.bounds.width - 32)
                            .frame(height: 4)
                        
                        HStack {
                            Text("버전")
                            Spacer()
                            Text("1.0.0")
                                .foregroundColor(.secondary)
                        }
                            .padding(.top, 4)
                            .padding(.leading, 24)
                            .padding(.trailing, 24)
                    }
                }
                Spacer()
            }
        }
    }
}

//Previews
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        let user = User(name: "John Doe") // 임의의 User 객체 생성
        return SettingsView(user: .constant(user))
    }
}

struct aboutView: View {
    var body: some View {
        Text("test")
            .navigationBarTitle("개인정보 처리방침")
    }
}


// 유저 프로필 영역
struct userProfileView: View {
    @Binding var user: User
    
    var body: some View {
        VStack{
            if user.imgStr == "default" {
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 130, height: 130)
                    .clipShape(Circle())
                    .padding(.trailing, 10)
            } else {
                Image(user.imgStr)
                    .resizable()
                    .frame(width: 130, height: 130)
                    .clipShape(Circle())
                    .padding(.trailing, 10)
            }
            Button("사진 변경"){
                
            }
            
            Divider()
                .frame(height: 16) // 높이 변경
                .background(Color(red: 0.98, green: 0.98, blue: 0.98))
                .overlay(Rectangle().frame(height: 1).foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))) // 굵기 조정
            
            NavigationLink(destination: nicknameSettingVeiw(user: $user)) {
                HStack {
                    Text("닉네임 설정")
                        .foregroundColor(.black)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color(red: 0.27, green: 0.61, blue: 0.84))
                }
                .padding(.top, 8)
                .padding(.leading, 24)
                .padding(.trailing, 24)
            }
            
            Divider()
                .frame(maxWidth: UIScreen.main.bounds.width - 32)
                .frame(height: 4)
            
            
            
            NavigationLink(destination: EmptyView()) {
                HStack {
                    Text("테스트 재시도")
                        .foregroundColor(.black)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color(red: 0.27, green: 0.61, blue: 0.84))
                }
                .padding(.top, 4)
                .padding(.leading, 24)
                .padding(.trailing, 24)
            }
            Spacer()
            // *로그아웃 버튼 왼쪽 정렬 안됨.*
            // 나중에 꼭 디테일 잡기
            HStack(){
                Button("로그아웃"){
                    // 로그아웃 버튼 클릭시
                    // 로그아웃 로직
                }
                .font(.system(size: 10, weight: Font.Weight.bold))
                .foregroundColor(Color.gray)
                
                Spacer()
            }
        }
        .navigationBarTitle("유저 프로필")
//        .toolbarRole(.editor)
        Spacer()
    }
    
}
    

// 닉네임 설정 영역
struct nicknameSettingVeiw: View {
    @Binding var user: User
    
    var body: some View {
            VStack(alignment:.leading){
                Text("닉네임")
                    .bold()
                    .foregroundColor(Color(red: 0.44, green: 0.44, blue: 0.44))
                TextField("입력해 주세요", text: $user.name)
                    .textFieldStyle(.roundedBorder)

                HStack(spacing:1){
                    Text("※ 닉네임을 설정하면")
                        .font(.system(size: 10, weight: .regular, design: .default))
                        .foregroundColor(Color(red: 0.44, green: 0.44, blue: 0.44))
                    Text("10일간 변경할 수 없습니다.")
                        .font(.system(size: 10, design: .default))
                        .foregroundColor(Color(red: 0.27, green: 0.61, blue: 0.84))
                }
            }
            .padding(.leading, 25)
            Spacer()
            VStack {
                Button("닉네임 변경") {
                    // 버튼 클릭 시 실행할 코드
                }
                .buttonStyle(.bordered)
                .controlSize(.large)
                Spacer()
            }
        .navigationBarTitle("닉네임 설정")
//        .toolbarRole(.editor)
    }
}


struct NoticeView: View {
    var body: some View {
        Text("공지사항 메인 영역")
            .navigationBarTitle("공지사항")
    }
}



// 공지사항 페이지
// 방 나가기 alert
// 개인정보 처리방침 페이지
