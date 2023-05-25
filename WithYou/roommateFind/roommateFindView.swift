//
//  roommateFindView.swift
//  WithYou
//
//  Created by 전제윤 on 2023/05/18.
//

import SwiftUI

struct RoommateFindView: View {
    @State private var favorite = false
    @ObservedObject var anothers = Anothers()
    @State private var isRoomateFilter = false

    var filteredAnothers: [Another] {
        if favorite {
            return anothers.AnotherArr.filter { $0.favorit }
        } else {
            return anothers.AnotherArr
        }
    }

    var body: some View {
            ZStack(alignment: .bottomTrailing) {
                VStack {
                    HStack {
                        Text("룸메이트 찾기")
                            .font(.system(size: 36))
                            .fontWeight(.bold)
                            .padding(.all)
                        Spacer()
                    }
                        
                    
                    Toggle("즐겨찾기", isOn: $favorite)
                        .toggleStyle(SwitchToggleStyle(tint: Color("mainColor")))
                        .padding(.leading, 240)
                        .padding(.trailing, 20)
                    
                    List(filteredAnothers) { another in
                        ZStack {
                            NavigationLink(destination: DetailVeiwFront(another: Another(id: UUID(), name: another.name, categories: another.categories))) {
                                EmptyView()
                            }
                            .opacity(0)

                            RoommateInfoView(another: another)
                                .frame(height: 84)
                        }
                        .listRowInsets(EdgeInsets())
                    }
                    .padding(.top)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .listStyle(.plain)
                    .ignoresSafeArea()
                }
                Button(action: {
                    isRoomateFilter = true
                }) {
                    Image(systemName: "magnifyingglass")
                        .frame(width: 34, height: 34)
                        .font(.title)
                        .padding()
                        .background(Color("mainColor"))
                        .foregroundColor(.white)
                        .clipShape(Circle())
                }
                .padding()
                .sheet(isPresented: $isRoomateFilter) {
                    RoommateFilterView(isRoomateFilter: $isRoomateFilter)
                }
            }
    }
}

struct RoommateFilterView: View {
    @Binding var isRoomateFilter: Bool

    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Filter1View()
                    Filter2View()
                    Filter3View()
                    Filter4View()
                    Filter5View()
                    Filter6View()


                }

            }
            .navigationBarTitle("검색필터")
            .navigationBarItems(
                leading:
                    Button(action: {
                        isRoomateFilter = false
                    }) {
                        Text("취소")
                    }
            )
        }
    }
}


struct Filter1View: View {
    @State private var GselectedButton = ""
    
    var body: some View{
        VStack{
            // 기숙사
            HStack {
                Text("기숙사")
                    .font(.system(size: 24))
                    .fontWeight(.semibold)
                    .padding(.all)
                Spacer()
            }
            HStack(spacing: 10) { // 버튼 간의 간격을 설정합니다
                Spacer()
                    .frame(width: 10)
                Button(action: {
                    if self.GselectedButton == "1동" {
                        self.GselectedButton = ""
                    } else {
                        self.GselectedButton = "1동"
                    }
                }) {
                    Text("1동")
                        .fontWeight(.semibold)
                        .foregroundColor(GselectedButton == "1동" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0) // 상하 여백을 설정합니다
                        .padding(.horizontal, 16.0) // 좌우 여백을 설정합니다
                        .background(GselectedButton == "1동" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    if self.GselectedButton == "2동" {
                        self.GselectedButton = ""
                    } else {
                        self.GselectedButton = "2동"
                    }
                }) {
                    Text("2동")
                        .fontWeight(.semibold)
                        .foregroundColor(GselectedButton == "2동" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(GselectedButton == "2동" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    if self.GselectedButton == "8동" {
                        self.GselectedButton = ""
                    } else {
                        self.GselectedButton = "8동"
                    }
                }) {
                    Text("8동")
                        .fontWeight(.semibold)
                        .foregroundColor(GselectedButton == "8동" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(GselectedButton == "8동" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer() // 왼쪽에 붙도록 Spacer 추가
            }
            HStack(spacing: 10) {
                Spacer()
                    .frame(width: 10)
                Button(action: {
                    if self.GselectedButton == "10동" {
                        self.GselectedButton = ""
                    } else {
                        self.GselectedButton = "10동"
                    }
                }) {
                    Text("10동")
                        .fontWeight(.semibold)
                        .foregroundColor(GselectedButton == "10동" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(GselectedButton == "10동" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    if self.GselectedButton == "개척관" {
                        self.GselectedButton = ""
                    } else {
                        self.GselectedButton = "개척관"
                    }
                }) {
                    Text("개척관")
                        .fontWeight(.semibold)
                        .foregroundColor(GselectedButton == "개척관" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(GselectedButton == "개척관" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer() // 왼쪽에 붙도록 Spacer 추가
            }
            .padding(.bottom, 10)
        }
    }
}
struct Filter2View: View {
    @State private var HselectedButton = ""
    
    var body: some View{
        VStack{
            //학년
            HStack {
                Text("학년")
                    .font(.system(size: 24))
                    .fontWeight(.semibold)
                    .padding(.all)
                Spacer()
            }
            HStack(spacing: 10) { // 버튼 간의 간격을 설정합니다
                Spacer()
                    .frame(width: 10)
                Button(action: {
                    if self.HselectedButton == "1학년" {
                        self.HselectedButton = ""
                    } else {
                        self.HselectedButton = "1학년"
                    }
                }) {
                    Text("1학년")
                        .fontWeight(.semibold)
                        .foregroundColor(HselectedButton == "1학년" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0) // 상하 여백을 설정합니다
                        .padding(.horizontal, 16.0) // 좌우 여백을 설정합니다
                        .background(HselectedButton == "1학년" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    if self.HselectedButton == "2학년" {
                        self.HselectedButton = ""
                    } else {
                        self.HselectedButton = "2학년"
                    }
                }) {
                    Text("2학년")
                        .fontWeight(.semibold)
                        .foregroundColor(HselectedButton == "2학년" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(HselectedButton == "2학년" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    if self.HselectedButton == "3학년" {
                        self.HselectedButton = ""
                    } else {
                        self.HselectedButton = "3학년"
                    }
                }) {
                    Text("3학년")
                        .fontWeight(.semibold)
                        .foregroundColor(HselectedButton == "3학년" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(HselectedButton == "3학년" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    if self.HselectedButton == "4학년" {
                        self.HselectedButton = ""
                    } else {
                        self.HselectedButton = "4학년"
                    }
                }) {
                    Text("4학년")
                        .fontWeight(.semibold)
                        .foregroundColor(HselectedButton == "4학년" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(HselectedButton == "4학년" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer() // 왼쪽에 붙도록 Spacer 추가
            }
            .padding(.bottom, 20)
        }
    }

}
struct Filter3View: View {
    @State private var MselectedButton1 = ""
    @State private var MselectedButton2 = ""
    @State private var MselectedButton3 = ""
    @State private var MselectedButton4 = ""
    
    var body: some View{
        VStack{
            //MBTI
            HStack {
                Text("MBTI")
                    .font(.system(size: 24))
                    .fontWeight(.semibold)
                    .padding(.all)
                Spacer()
            }
            HStack(spacing: 10) { // 버튼 간의 간격을 설정합니다
                Spacer()
                    .frame(width: 10)
                Button(action: {
                    if self.MselectedButton1 == "E" {
                        self.MselectedButton1 = ""
                    } else {
                        self.MselectedButton1 = "E"
                    }
                }) {
                    Text("E")
                        .fontWeight(.semibold)
                        .frame(width: 20.0, height: 20.0)
                        .foregroundColor(MselectedButton1 == "E" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0) // 상하 여백을 설정합니다
                        .padding(.horizontal, 16.0) // 좌우 여백을 설정합니다
                        .background(MselectedButton1 == "E" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    if self.MselectedButton2 == "N" {
                        self.MselectedButton2 = ""
                    } else {
                        self.MselectedButton2 = "N"
                    }
                }) {
                    Text("N")
                        .fontWeight(.semibold)
                        .frame(width: 20.0, height: 20.0)
                        .foregroundColor(MselectedButton2 == "N" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(MselectedButton2 == "N" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    if self.MselectedButton3 == "F" {
                        self.MselectedButton3 = ""
                    } else {
                        self.MselectedButton3 = "F"
                    }
                }) {
                    Text("F")
                        .fontWeight(.semibold)
                        .frame(width: 20.0, height: 20.0)
                        .foregroundColor(MselectedButton3 == "F" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(MselectedButton3 == "F" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    if self.MselectedButton4 == "P" {
                        self.MselectedButton4 = ""
                    } else {
                        self.MselectedButton4 = "P"
                    }
                }) {
                    Text("P")
                        .fontWeight(.semibold)
                        .frame(width: 20.0, height: 20.0)
                        .foregroundColor(MselectedButton4 == "P" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(MselectedButton4 == "P" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer() // 왼쪽에 붙도록 Spacer 추가
            }
            HStack(spacing: 10) { // 버튼 간의 간격을 설정합니다
                Spacer()
                    .frame(width: 10)
                Button(action: {
                    if self.MselectedButton1 == "I" {
                        self.MselectedButton1 = ""
                    } else {
                        self.MselectedButton1 = "I"
                    }
                }) {
                    Text("I")
                        .fontWeight(.semibold)
                        .frame(width: 20.0, height: 20.0)
                        .foregroundColor(MselectedButton1 == "I" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0) // 상하 여백을 설정합니다
                        .padding(.horizontal, 16.0) // 좌우 여백을 설정합니다
                        .background(MselectedButton1 == "I" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    if self.MselectedButton2 == "S" {
                        self.MselectedButton2 = ""
                    } else {
                        self.MselectedButton2 = "S"
                    }
                }) {
                    Text("S")
                        .fontWeight(.semibold)
                        .frame(width: 20.0, height: 20.0)
                        .foregroundColor(MselectedButton2 == "S" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(MselectedButton2 == "S" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    if self.MselectedButton3 == "T" {
                        self.MselectedButton3 = ""
                    } else {
                        self.MselectedButton3 = "T"
                    }
                }) {
                    Text("T")
                        .fontWeight(.semibold)
                        .frame(width: 20.0, height: 20.0)
                        .foregroundColor(MselectedButton3 == "T" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(MselectedButton3 == "T" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    if self.MselectedButton4 == "J" {
                        self.MselectedButton4 = ""
                    } else {
                        self.MselectedButton4 = "J"
                    }
                }) {
                    Text("J")
                        .fontWeight(.semibold)
                        .frame(width: 20.0, height: 20.0)
                        .foregroundColor(MselectedButton4 == "J" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(MselectedButton4 == "J" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer() // 왼쪽에 붙도록 Spacer 추가
            }
            .padding(.bottom, 20)
        }
    }

}
struct Filter4View: View {
    @State private var selectedButton: String = ""
    
    var body: some View {
        VStack {
            // 기상시간
            HStack {
                Text("기상시간")
                    .font(.system(size: 24))
                    .fontWeight(.semibold)
                    .padding(.all)
                Spacer()
            }
            HStack(spacing: 10) {
                Spacer().frame(width: 10)
                Button(action: {
                    selectedButton = selectedButton == "06시" ? "" : "06시"
                }) {
                    Text("06시")
                        .fontWeight(.semibold)
                        .frame(width: 46.0, height: 20.0)
                        .foregroundColor(selectedButton == "06시" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(selectedButton == "06시" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    selectedButton = selectedButton == "07시" ? "" : "07시"
                }) {
                    Text("07시")
                        .fontWeight(.semibold)
                        .frame(width: 46.0, height: 20.0)
                        .foregroundColor(selectedButton == "07시" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(selectedButton == "07시" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    selectedButton = selectedButton == "08시" ? "" : "08시"
                }) {
                    Text("08시")
                        .fontWeight(.semibold)
                        .frame(width: 46.0, height: 20.0)
                        .foregroundColor(selectedButton == "08시" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(selectedButton == "08시" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    selectedButton = selectedButton == "09시" ? "" : "09시"
                }) {
                    Text("09시")
                        .fontWeight(.semibold)
                        .frame(width: 46.0, height: 20.0)
                        .foregroundColor(selectedButton == "09시" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(selectedButton == "09시" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer()
            }
            HStack(spacing: 10) {
                Spacer().frame(width: 10)
                Button(action: {
                    selectedButton = selectedButton == "10시" ? "" : "10시"
                }) {
                    Text("10시")
                        .fontWeight(.semibold)
                        .frame(width: 46.0, height: 20.0)
                        .foregroundColor(selectedButton == "10시" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(selectedButton == "10시" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    selectedButton = selectedButton == "11시" ? "" : "11시"
                }) {
                    Text("11시")
                        .fontWeight(.semibold)
                        .frame(width: 46.0, height: 20.0)
                        .foregroundColor(selectedButton == "11시" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(selectedButton == "11시" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    selectedButton = selectedButton == "12시" ? "" : "12시"
                }) {
                    Text("12시")
                        .fontWeight(.semibold)
                        .frame(width: 46.0, height: 20.0)
                        .foregroundColor(selectedButton == "12시" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(selectedButton == "12시" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    selectedButton = selectedButton == "13시" ? "" : "13시"
                }) {
                    Text("13시")
                        .fontWeight(.semibold)
                        .frame(width: 46.0, height: 20.0)
                        .foregroundColor(selectedButton == "13시" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(selectedButton == "13시" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer()
            }
            .padding(.bottom, 20)
        }
    }
}
struct Filter5View: View {
    @State private var CselectedButton: String = ""
    
    var body: some View {
        VStack {
            // 취침시간
            HStack {
                Text("취침시간")
                    .font(.system(size: 24))
                    .fontWeight(.semibold)
                    .padding(.all)
                Spacer()
            }
            HStack(spacing: 10) {
                Spacer().frame(width: 10)
                Button(action: {
                    CselectedButton = CselectedButton == "21시" ? "" : "21시"
                }) {
                    Text("21시")
                        .fontWeight(.semibold)
                        .frame(width: 46.0, height: 20.0)
                        .foregroundColor(CselectedButton == "21시" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(CselectedButton == "21시" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    CselectedButton = CselectedButton == "22시" ? "" : "22시"
                }) {
                    Text("22시")
                        .fontWeight(.semibold)
                        .frame(width: 46.0, height: 20.0)
                        .foregroundColor(CselectedButton == "22시" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(CselectedButton == "22시" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    CselectedButton = CselectedButton == "23시" ? "" : "23시"
                }) {
                    Text("23시")
                        .fontWeight(.semibold)
                        .frame(width: 46.0, height: 20.0)
                        .foregroundColor(CselectedButton == "23시" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(CselectedButton == "23시" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    CselectedButton = CselectedButton == "00시" ? "" : "00시"
                }) {
                    Text("00시")
                        .fontWeight(.semibold)
                        .frame(width: 46.0, height: 20.0)
                        .foregroundColor(CselectedButton == "00시" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(CselectedButton == "00시" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer()
            }
            HStack(spacing: 10) {
                Spacer().frame(width: 10)
                Button(action: {
                    CselectedButton = CselectedButton == "01시" ? "" : "01시"
                }) {
                    Text("01시")
                        .fontWeight(.semibold)
                        .frame(width: 46.0, height: 20.0)
                        .foregroundColor(CselectedButton == "01시" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(CselectedButton == "01시" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    CselectedButton = CselectedButton == "02시" ? "" : "02시"
                }) {
                    Text("02시")
                        .fontWeight(.semibold)
                        .frame(width: 46.0, height: 20.0)
                        .foregroundColor(CselectedButton == "02시" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(CselectedButton == "02시" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer()
            }
            .padding(.bottom, 20)
        }
    }
}

struct Filter6View: View {
    @State private var CselectedButtons = [Bool](repeating: false, count: 4)
    
    var body: some View{
        VStack{
            // 기숙사
            HStack {
                Text("잠버릇")
                    .font(.system(size: 24))
                    .fontWeight(.semibold)
                    .padding(.all)
                Spacer()
            }
            HStack(spacing: 10) { // 버튼 간의 간격을 설정합니다
                Spacer()
                    .frame(width: 10)
                Button(action: {
                    self.CselectedButtons[0].toggle()
                }) {
                    Text("코골이")
                        .fontWeight(.semibold)
                        .frame(width: 46.0, height: 20.0)
                        .foregroundColor(CselectedButtons[0] ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0) // 상하 여백을 설정합니다
                        .padding(.horizontal, 16.0) // 좌우 여백을 설정합니다
                        .background(CselectedButtons[0] ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    self.CselectedButtons[1].toggle()
                }) {
                    Text("이갈이")
                        .fontWeight(.semibold)
                        .frame(width: 46.0, height: 20.0)
                        .foregroundColor(CselectedButtons[1] ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(CselectedButtons[1] ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    self.CselectedButtons[2].toggle()
                }) {
                    Text("잠꼬대")
                        .fontWeight(.semibold)
                        .frame(width: 46.0, height: 20.0)
                        .foregroundColor(CselectedButtons[2] ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(CselectedButtons[2] ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer() // 왼쪽에 붙도록 Spacer 추가
            }
            HStack(spacing: 10) {
                Spacer()
                    .frame(width: 10)
                Button(action: {
                    self.CselectedButtons[3].toggle()
                }) {
                    Text("몽유병")
                        .fontWeight(.semibold)
                        .frame(width: 46.0, height: 20.0)
                        .foregroundColor(CselectedButtons[3] ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(CselectedButtons[3] ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    self.CselectedButtons = [false, false, false, false]
                }) {
                    Text("없음")
                        .fontWeight(.semibold)
                        .frame(width: 46.0, height: 20.0)
                        .foregroundColor(CselectedButtons.contains(true) ? Color("mainColor") : Color.white)
                        .padding(.all, 10.0)
                        .background(CselectedButtons.contains(true) ? Color.white : Color("mainColor"))
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer() // 왼쪽에 붙도록 Spacer 추가
            }
            .padding(.bottom, 10)
        }
    }
}

struct Filter7View: View {
    @State private var GselectedButton = "1동"
    
    var body: some View{
        VStack{
            
        }
    }
}

struct Filter8View: View {
    @State private var GselectedButton = "1동"
    
    var body: some View{
        VStack{
            
        }
    }
}

struct Filter9View: View {
    @State private var GselectedButton = "1동"
    
    var body: some View{
        VStack{
            
        }
    }
}

struct Filter10View: View {
    @State private var GselectedButton = "1동"
    
    var body: some View{
        VStack{
            
        }
    }
}

struct Filter11View: View {
    @State private var GselectedButton = "1동"
    
    var body: some View{
        VStack{
            
        }
    }
}



struct RoommateFindView_Previews: PreviewProvider {
    static var previews: some View {
        return RoommateFindView()
            .environmentObject(Anothers())
    }
}
