//
//  roommateFindView.swift
//  WithYou
//
//  Created by 전제윤 on 2023/05/18.
//


import SwiftUI

struct RoommateFindView: View {
    @Binding var selection: Int
    @State private var favorite = false
    @ObservedObject var anothers = Anothers()
    @State private var isRoomateFilter = false
    @State var filterArr: [String?] = Array(repeating: nil, count: 13)
    @State var selectedDormitory1 = ""
    @State var selectedGrade = ""
    @State var selectedMbti1 = ""
    @State var selectedMbti2 = ""
    @State var selectedMbti3 = ""
    @State var selectedMbti4 = ""
    @State var selectedWake = ""
    @State var selectedC = ""
    @State var selectedSleeping = ""
    @State var selectedCleaning = ""
    @State var selectedScent = ""
    @State var selectedSmoking = ""
    @State var selectedAlarm = ""

    var filteredAnothers: [Another] {
        if favorite {
            return anothers.AnotherArr.filter { $0.favorit }
        } else {
            if filterArr.isEmpty {
                return anothers.AnotherArr
            } else {
                return anothers.AnotherArr.filter { object in
                    filterArr.compactMap { $0 }.allSatisfy { category in
                        object.categories.contains(category)
                    }
                }
            }
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
                        NavigationLink(destination: DetailVeiwFront(selection: $selection, another: another)) {
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
                RoommateFilterView(
                    isRoomateFilter: $isRoomateFilter,
                    selectedDormitory1: $selectedDormitory1,
                    selectedGrade: $selectedGrade,
                    selectedMbti1: $selectedMbti1,
                    selectedMbti2: $selectedMbti2,
                    selectedMbti3: $selectedMbti3,
                    selectedMbti4: $selectedMbti4,
                    selectedWake: $selectedWake,
                    selectedC: $selectedC,
                    selectedSleeping: $selectedSleeping,
                    selectedCleaning: $selectedCleaning,
                    selectedScent: $selectedScent,
                    selectedSmoking: $selectedSmoking,
                    selectedAlarm: $selectedAlarm,
                    filterArr: $filterArr
                )
            }
        }
    }
}

struct RoommateFilterView: View {
    @Binding var isRoomateFilter: Bool
    @Binding var selectedDormitory1: String
    @Binding var selectedGrade: String
    @Binding var selectedMbti1: String
    @Binding var selectedMbti2: String
    @Binding var selectedMbti3: String
    @Binding var selectedMbti4: String
    @Binding var selectedWake: String
    @Binding var selectedC: String
    @Binding var selectedSleeping: String
    @Binding var selectedCleaning: String
    @Binding var selectedScent: String
    @Binding var selectedSmoking: String
    @Binding var selectedAlarm: String
    @Binding var filterArr: [String?]

    var body: some View {
        NavigationView {
            ScrollView {
                HStack {
                     Spacer()
                     Button(action: {
                         selectedDormitory1 = ""
                         selectedGrade = ""
                         selectedMbti1 = ""
                         selectedMbti2 = ""
                         selectedMbti3 = ""
                         selectedMbti4 = ""
                         selectedWake = ""
                         selectedC = ""
                         selectedSleeping = ""
                         selectedCleaning = ""
                         selectedSmoking = ""
                         selectedAlarm = ""
                         filterArr = Array(repeating: nil, count: 13)
                     }) {
                         Image(systemName: "gobackward")
                         Text("초기화")
                             .fontWeight(.bold)
                     }
                     .padding(/*@START_MENU_TOKEN@*/.trailing, 30.0/*@END_MENU_TOKEN@*/)
                    
                 }
                VStack {
                    
                    Filter1View(selectedDormitory1: $selectedDormitory1)
                    Filter2View(selectedGrade: $selectedGrade)
                    Filter3View(
                        selectedMbti1: $selectedMbti1,
                        selectedMbti2: $selectedMbti2,
                        selectedMbti3: $selectedMbti3,
                        selectedMbti4: $selectedMbti4
                    )
                    Filter4View(selectedWake: $selectedWake)
                    Filter5View(selectedC: $selectedC)
                    Filter6View(selectedSleeping: $selectedSleeping)
                    Filter7View(selectedCleaning: $selectedCleaning)
                    Filter8View(selectedScent: $selectedScent)
                    Filter9View(selectedSmoking: $selectedSmoking)
                    Filter10View(selectedAlarm: $selectedAlarm)
                }
            }
            .navigationBarTitle("검색필터")
            .navigationBarItems(
                leading: Button("취소") {
                    isRoomateFilter = false
                },
                trailing: Button("적용") {
                    isRoomateFilter = false
                    if !selectedDormitory1.isEmpty {
                        filterArr[0] = selectedDormitory1
                    } else {
                        filterArr[0] = nil
                    }
                    
                    if !selectedGrade.isEmpty {
                        filterArr[1] = selectedGrade
                    } else {
                        filterArr[1] = nil
                    }
                    
                    if !selectedMbti1.isEmpty {
                        filterArr[2] = selectedMbti1
                    } else {
                        filterArr[2] = nil
                    }
                    
                    if !selectedMbti2.isEmpty {
                        filterArr[3] = selectedMbti2
                    } else {
                        filterArr[3] = nil
                    }
                    
                    if !selectedMbti3.isEmpty {
                        filterArr[4] = selectedMbti3
                    } else {
                        filterArr[4] = nil
                    }
                    
                    if !selectedMbti4.isEmpty {
                        filterArr[5] = selectedMbti4
                    } else {
                        filterArr[5] = nil
                    }
                    
                    if !selectedWake.isEmpty {
                        filterArr[6] = selectedWake
                    } else {
                        filterArr[6] = nil
                    }
                    
                    if !selectedC.isEmpty {
                        filterArr[7] = selectedC
                    } else {
                        filterArr[7] = nil
                    }
                    if !selectedSleeping.isEmpty {
                        filterArr[8] = selectedSleeping
                    } else {
                        filterArr[8] = nil
                    }
                    
                    if !selectedCleaning.isEmpty {
                        filterArr[9] = selectedCleaning
                    } else {
                        filterArr[9] = nil
                    }
                    
                    if !selectedScent.isEmpty {
                        filterArr[10] = selectedScent
                    } else {
                        filterArr[10] = nil
                    }
                    
                    if !selectedSmoking.isEmpty {
                        filterArr[11] = selectedSmoking
                    } else {
                        filterArr[11] = nil
                    }
                    
                    if !selectedAlarm.isEmpty {
                        filterArr[12] = selectedAlarm
                    } else {
                        filterArr[12] = nil
                    }
                }
            )
        }
    }
}



//DormitoryselectedButton 기숙사
struct Filter1View: View {
    @Binding var selectedDormitory1: String
    
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
                    if selectedDormitory1 == "1동" {
                        selectedDormitory1 = ""
                    } else {
                        selectedDormitory1 = "1동"
                    }
                }) {
                    Text("1동")
                        .fontWeight(.semibold)
                        .frame(width: 46.0, height: 20.0)
                        .foregroundColor(selectedDormitory1 == "1동" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0) // 상하 여백을 설정합니다
                        .padding(.horizontal, 16.0) // 좌우 여백을 설정합니다
                        .background(selectedDormitory1 == "1동" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    if selectedDormitory1 == "2동" {
                        selectedDormitory1 = ""
                    } else {
                        selectedDormitory1 = "2동"
                    }
                }) {
                    Text("2동")
                        .fontWeight(.semibold)
                        .frame(width: 46.0, height: 20.0)
                        .foregroundColor(selectedDormitory1 == "2동" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(selectedDormitory1 == "2동" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    if selectedDormitory1 == "8동" {
                        selectedDormitory1 = ""
                    } else {
                        selectedDormitory1 = "8동"
                    }
                }) {
                    Text("8동")
                        .fontWeight(.semibold)
                        .frame(width: 46.0, height: 20.0)
                        .foregroundColor(selectedDormitory1 == "8동" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(selectedDormitory1 == "8동" ? Color("mainColor") : Color.white)
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
                    if selectedDormitory1 == "10동" {
                        selectedDormitory1 = ""
                    } else {
                        selectedDormitory1 = "10동"
                    }
                }) {
                    Text("10동")
                        .fontWeight(.semibold)
                        .frame(width: 46.0, height: 20.0)
                        .foregroundColor(selectedDormitory1 == "10동" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(selectedDormitory1 == "10동" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    if selectedDormitory1 == "개척관" {
                        selectedDormitory1 = ""
                    } else {
                        selectedDormitory1 = "개척관"
                    }
                }) {
                    Text("개척관")
                        .fontWeight(.semibold)
                        .frame(width: 46.0, height: 20.0)
                        .foregroundColor(selectedDormitory1 == "개척관" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(selectedDormitory1 == "개척관" ? Color("mainColor") : Color.white)
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
//GradeselectedButton 학년
struct Filter2View: View {
    @Binding var selectedGrade: String
    
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
                    if selectedGrade == "1학년" {
                        selectedGrade = ""
                    } else {
                        selectedGrade = "1학년"
                    }
                }) {
                    Text("1학년")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedGrade == "1학년" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0) // 상하 여백을 설정합니다
                        .padding(.horizontal, 16.0) // 좌우 여백을 설정합니다
                        .background(selectedGrade == "1학년" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    if selectedGrade == "2학년" {
                        selectedGrade = ""
                    } else {
                        selectedGrade = "2학년"
                    }
                }) {
                    Text("2학년")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedGrade == "2학년" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(selectedGrade == "2학년" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    if selectedGrade == "3학년" {
                        selectedGrade = ""
                    } else {
                        selectedGrade = "3학년"
                    }
                }) {
                    Text("3학년")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedGrade == "3학년" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(selectedGrade == "3학년" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    if selectedGrade == "4학년" {
                        selectedGrade = ""
                    } else {
                        selectedGrade = "4학년"
                    }
                }) {
                    Text("4학년")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedGrade == "4학년" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(selectedGrade == "4학년" ? Color("mainColor") : Color.white)
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
//MselectedButton1 mbti
struct Filter3View: View {
    @Binding var selectedMbti1: String
    @Binding var selectedMbti2: String
    @Binding var selectedMbti3: String
    @Binding var selectedMbti4: String
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
                    if selectedMbti1 == "E" {
                        selectedMbti1 = ""
                    } else {
                        selectedMbti1 = "E"
                    }
                }) {
                    Text("E")
                        .fontWeight(.semibold)
                        .frame(width: 20.0, height: 20.0)
                        .foregroundColor(selectedMbti1 == "E" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0) // 상하 여백을 설정합니다
                        .padding(.horizontal, 16.0) // 좌우 여백을 설정합니다
                        .background(selectedMbti1 == "E" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    if selectedMbti2 == "N" {
                        selectedMbti2 = ""
                    } else {
                        selectedMbti2 = "N"
                    }
                }) {
                    Text("N")
                        .fontWeight(.semibold)
                        .frame(width: 20.0, height: 20.0)
                        .foregroundColor(selectedMbti2 == "N" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(selectedMbti2 == "N" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    if selectedMbti3 == "F" {
                        selectedMbti3 = ""
                    } else {
                        selectedMbti3 = "F"
                    }
                }) {
                    Text("F")
                        .fontWeight(.semibold)
                        .frame(width: 20.0, height: 20.0)
                        .foregroundColor(selectedMbti3 == "F" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(selectedMbti3 == "F" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    if selectedMbti4 == "P" {
                        selectedMbti4 = ""
                    } else {
                        selectedMbti4 = "P"
                    }
                }) {
                    Text("P")
                        .fontWeight(.semibold)
                        .frame(width: 20.0, height: 20.0)
                        .foregroundColor(selectedMbti4 == "P" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(selectedMbti4 == "P" ? Color("mainColor") : Color.white)
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
                    if selectedMbti1 == "I" {
                        selectedMbti1 = ""
                    } else {
                        selectedMbti1 = "I"
                    }
                }) {
                    Text("I")
                        .fontWeight(.semibold)
                        .frame(width: 20.0, height: 20.0)
                        .foregroundColor(selectedMbti1 == "I" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0) // 상하 여백을 설정합니다
                        .padding(.horizontal, 16.0) // 좌우 여백을 설정합니다
                        .background(selectedMbti1 == "I" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    if selectedMbti2 == "S" {
                        selectedMbti2 = ""
                    } else {
                        selectedMbti2 = "S"
                    }
                }) {
                    Text("S")
                        .fontWeight(.semibold)
                        .frame(width: 20.0, height: 20.0)
                        .foregroundColor(selectedMbti2 == "S" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(selectedMbti2 == "S" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    if selectedMbti3 == "T" {
                        selectedMbti3 = ""
                    } else {
                        selectedMbti3 = "T"
                    }
                }) {
                    Text("T")
                        .fontWeight(.semibold)
                        .frame(width: 20.0, height: 20.0)
                        .foregroundColor(selectedMbti3 == "T" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(selectedMbti3 == "T" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    if selectedMbti4 == "J" {
                        selectedMbti4 = ""
                    } else {
                        selectedMbti4 = "J"
                    }
                }) {
                    Text("J")
                        .fontWeight(.semibold)
                        .frame(width: 20.0, height: 20.0)
                        .foregroundColor(selectedMbti4 == "J" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(selectedMbti4 == "J" ? Color("mainColor") : Color.white)
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
//WakeselectedButton 기상시간
struct Filter4View: View {
    @Binding var selectedWake: String
    
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
                    selectedWake = selectedWake == "06시" ? "" : "06시"
                }) {
                    Text("06시")
                        .fontWeight(.semibold)
                        .frame(width: 46.0, height: 20.0)
                        .foregroundColor(selectedWake == "06시" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(selectedWake == "06시" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    selectedWake = selectedWake == "07시" ? "" : "07시"
                }) {
                    Text("07시")
                        .fontWeight(.semibold)
                        .frame(width: 46.0, height: 20.0)
                        .foregroundColor(selectedWake == "07시" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(selectedWake == "07시" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    selectedWake = selectedWake == "08시" ? "" : "08시"
                }) {
                    Text("08시")
                        .fontWeight(.semibold)
                        .frame(width: 46.0, height: 20.0)
                        .foregroundColor(selectedWake == "08시" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(selectedWake == "08시" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    selectedWake = selectedWake == "09시" ? "" : "09시"
                }) {
                    Text("09시")
                        .fontWeight(.semibold)
                        .frame(width: 46.0, height: 20.0)
                        .foregroundColor(selectedWake == "09시" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(selectedWake == "09시" ? Color("mainColor") : Color.white)
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
                    selectedWake = selectedWake == "10시" ? "" : "10시"
                }) {
                    Text("10시")
                        .fontWeight(.semibold)
                        .frame(width: 46.0, height: 20.0)
                        .foregroundColor(selectedWake == "10시" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(selectedWake == "10시" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    selectedWake = selectedWake == "11시" ? "" : "11시"
                }) {
                    Text("11시")
                        .fontWeight(.semibold)
                        .frame(width: 46.0, height: 20.0)
                        .foregroundColor(selectedWake == "11시" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(selectedWake == "11시" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    selectedWake = selectedWake == "12시" ? "" : "12시"
                }) {
                    Text("12시")
                        .fontWeight(.semibold)
                        .frame(width: 46.0, height: 20.0)
                        .foregroundColor(selectedWake == "12시" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(selectedWake == "12시" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    selectedWake = selectedWake == "13시" ? "" : "13시"
                }) {
                    Text("13시")
                        .fontWeight(.semibold)
                        .frame(width: 46.0, height: 20.0)
                        .foregroundColor(selectedWake == "13시" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(selectedWake == "13시" ? Color("mainColor") : Color.white)
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
//selectedC 취침시간
struct Filter5View: View {
    @Binding var selectedC: String
    
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
                    selectedC = selectedC == "21시" ? "" : "21시"
                }) {
                    Text("21시")
                        .fontWeight(.semibold)
                        .frame(width: 46.0, height: 20.0)
                        .foregroundColor(selectedC == "21시" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(selectedC == "21시" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    selectedC = selectedC == "22시" ? "" : "22시"
                }) {
                    Text("22시")
                        .fontWeight(.semibold)
                        .frame(width: 46.0, height: 20.0)
                        .foregroundColor(selectedC == "22시" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(selectedC == "22시" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    selectedC = selectedC == "23시" ? "" : "23시"
                }) {
                    Text("23시")
                        .fontWeight(.semibold)
                        .frame(width: 46.0, height: 20.0)
                        .foregroundColor(selectedC == "23시" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(selectedC == "23시" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    selectedC = selectedC == "00시" ? "" : "00시"
                }) {
                    Text("00시")
                        .fontWeight(.semibold)
                        .frame(width: 46.0, height: 20.0)
                        .foregroundColor(selectedC == "00시" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(selectedC == "00시" ? Color("mainColor") : Color.white)
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
                    selectedC = selectedC == "01시" ? "" : "01시"
                }) {
                    Text("01시")
                        .fontWeight(.semibold)
                        .frame(width: 46.0, height: 20.0)
                        .foregroundColor(selectedC == "01시" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(selectedC == "01시" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    selectedC = selectedC == "02시" ? "" : "02시"
                }) {
                    Text("02시")
                        .fontWeight(.semibold)
                        .frame(width: 46.0, height: 20.0)
                        .foregroundColor(selectedC == "02시" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(selectedC == "02시" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    selectedC = selectedC == "03시" ? "" : "03시"
                }) {
                    Text("03시")
                        .fontWeight(.semibold)
                        .frame(width: 46.0, height: 20.0)
                        .foregroundColor(selectedC == "03시" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(selectedC == "03시" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    selectedC = selectedC == "04시" ? "" : "04시"
                }) {
                    Text("04시")
                        .fontWeight(.semibold)
                        .frame(width: 46.0, height: 20.0)
                        .foregroundColor(selectedC == "04시" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(selectedC == "04시" ? Color("mainColor") : Color.white)
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
// selectedSleepings 잠버릇
struct Filter6View: View {
    @Binding var selectedSleeping: String
    
    var body: some View{
        VStack{
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
                    selectedSleeping = selectedSleeping == "코골이" ? "" : "코골이"
                }) {
                    Text("코골이")
                        .fontWeight(.semibold)
                        .frame(width: 46.0, height: 20.0)
                        .foregroundColor(selectedSleeping == "코골이" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0) // 상하 여백을 설정합니다
                        .padding(.horizontal, 16.0) // 좌우 여백을 설정합니다
                        .background(selectedSleeping == "코골이" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    selectedSleeping = selectedSleeping == "이갈이" ? "" : "이갈이"
                }) {
                    Text("이갈이")
                        .fontWeight(.semibold)
                        .frame(width: 46.0, height: 20.0)
                        .foregroundColor(selectedSleeping == "이갈이" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(selectedSleeping == "이갈이" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                            selectedSleeping = selectedSleeping == "잠꼬대" ? "" : "잠꼬대"
                }) {
                    Text("잠꼬대")
                        .fontWeight(.semibold)
                        .frame(width: 46.0, height: 20.0)
                        .foregroundColor(selectedSleeping == "잠꼬대" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(selectedSleeping == "잠꼬대" ? Color("mainColor") : Color.white)
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
                    selectedSleeping = selectedSleeping == "몽유병" ? "" : "몽유병"
                }) {
                    Text("몽유병")
                        .fontWeight(.semibold)
                        .frame(width: 46.0, height: 20.0)
                        .foregroundColor(selectedSleeping == "몽유병" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(selectedSleeping == "몽유병" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    selectedSleeping = selectedSleeping == "없음" ? "" : "없음"
                }) {
                    Text("없음")
                        .fontWeight(.semibold)
                        .frame(width: 46.0, height: 20.0)
                        .foregroundColor(selectedSleeping == "없음" ?  Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .background(selectedSleeping == "없음" ? Color("mainColor") : Color.white)
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
//selectedSleeping 청소주기
struct Filter7View: View {
    @Binding var selectedCleaning: String
    
    var body: some View{
        VStack{
            // 기숙사
            HStack {
                Text("청소주기")
                    .font(.system(size: 24))
                    .fontWeight(.semibold)
                    .padding(.all)
                Spacer()
            }
            HStack(spacing: 10) { // 버튼 간의 간격을 설정합니다
                Spacer()
                    .frame(width: 10)
                Button(action: {
                    if selectedCleaning == "매일" {
                        selectedCleaning = ""
                    } else {
                        selectedCleaning = "매일"
                    }
                }) {
                    Text("매일")
                        .fontWeight(.semibold)
                        .frame(width: 36.0, height: 20.0)
                        .foregroundColor(selectedCleaning == "매일" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0) // 상하 여백을 설정합니다
                        .padding(.horizontal, 16.0) // 좌우 여백을 설정합니다
                        .background(selectedCleaning == "매일" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    if selectedCleaning == "하루" {
                        selectedCleaning = ""
                    } else {
                        selectedCleaning = "하루"
                    }
                }) {
                    Text("하루")
                        .fontWeight(.semibold)
                        .frame(width: 36.0, height: 20.0)
                        .foregroundColor(selectedCleaning == "하루" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(selectedCleaning == "하루" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    if selectedCleaning == "이틀" {
                        selectedCleaning = ""
                    } else {
                        selectedCleaning = "이틀"
                    }
                }) {
                    Text("이틀")
                        .fontWeight(.semibold)
                        .frame(width: 36.0, height: 20.0)
                        .foregroundColor(selectedCleaning == "이틀" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(selectedCleaning == "이틀" ? Color("mainColor") : Color.white)
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
                    if selectedCleaning == "사흘" {
                        selectedCleaning = ""
                    } else {
                        selectedCleaning = "사흘"
                    }
                }) {
                    Text("사흘")
                        .fontWeight(.semibold)
                        .frame(width: 36.0, height: 20.0)
                        .foregroundColor(selectedCleaning == "사흘" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(selectedCleaning == "사흘" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    if selectedCleaning == "나흘" {
                        selectedCleaning = ""
                    } else {
                        selectedCleaning = "나흘"
                    }
                }) {
                    Text("나흘")
                        .fontWeight(.semibold)
                        .frame(width: 36.0, height: 20.0)
                        .foregroundColor(selectedCleaning == "나흘" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(selectedCleaning == "나흘" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    if selectedCleaning == "안함" {
                        selectedCleaning = ""
                    } else {
                        selectedCleaning = "안함"
                    }
                }) {
                    Text("안함")
                        .fontWeight(.semibold)
                        .frame(width: 36.0, height: 20.0)
                        .foregroundColor(selectedCleaning == "안함" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(selectedCleaning == "안함" ? Color("mainColor") : Color.white)
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
//selectedScent 향 민감도
struct Filter8View: View {
    @Binding var selectedScent: String
    
    var body: some View{
        VStack{
            HStack {
                Text("향 민감도")
                    .font(.system(size: 24))
                    .fontWeight(.semibold)
                    .padding(.all)
                Spacer()
            }
            HStack(spacing: 10) { // 버튼 간의 간격을 설정합니다
                Spacer()
                    .frame(width: 10)
                Button(action: {
                    if selectedScent == "상" {
                        selectedScent = ""
                    } else {
                        selectedScent = "상"
                    }
                }) {
                    Text("상")
                        .fontWeight(.semibold)
                        .frame(width: 36.0, height: 20.0)
                        .foregroundColor(selectedScent == "상" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0) // 상하 여백을 설정합니다
                        .padding(.horizontal, 16.0) // 좌우 여백을 설정합니다
                        .background(selectedScent == "상" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    if selectedScent == "중" {
                        selectedScent = ""
                    } else {
                        selectedScent = "중"
                    }
                }) {
                    Text("중")
                        .fontWeight(.semibold)
                        .frame(width: 36.0, height: 20.0)
                        .foregroundColor(selectedScent == "중" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(selectedScent == "중" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    if selectedScent == "하" {
                        selectedScent = ""
                    } else {
                        selectedScent = "하"
                    }
                }) {
                    Text("하")
                        .fontWeight(.semibold)
                        .frame(width: 36.0, height: 20.0)
                        .foregroundColor(selectedScent == "하" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(selectedScent == "하" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer() // 왼쪽에 붙도록 Spacer 추가
            }
        }
    }
}
//selectedSmoking 흡연 여부
struct Filter9View: View {
    @Binding var selectedSmoking: String
    
    var body: some View{
        VStack{
            HStack {
                Text("흡연 여부")
                    .font(.system(size: 24))
                    .fontWeight(.semibold)
                    .padding(.all)
                Spacer()
            }
            HStack(spacing: 10) { // 버튼 간의 간격을 설정합니다
                Spacer()
                    .frame(width: 10)
                Button(action: {
                    if selectedSmoking == "함" {
                        selectedSmoking = ""
                    } else {
                        selectedSmoking = "함"
                    }
                }) {
                    Text("함")
                        .fontWeight(.semibold)
                        .frame(width: 36.0, height: 20.0)
                        .foregroundColor(selectedSmoking == "함" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0) // 상하 여백을 설정합니다
                        .padding(.horizontal, 16.0) // 좌우 여백을 설정합니다
                        .background(selectedSmoking == "함" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    if selectedSmoking == "안함" {
                        selectedSmoking = ""
                    } else {
                        selectedSmoking = "안함"
                    }
                }) {
                    Text("안함")
                        .fontWeight(.semibold)
                        .frame(width: 36.0, height: 20.0)
                        .foregroundColor(selectedSmoking == "안함" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(selectedSmoking == "안함" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }

                Spacer() // 왼쪽에 붙도록 Spacer 추가
            }
        }
    }
}
//selectedAlarm 알람소리
struct Filter10View: View {
    @Binding var selectedAlarm: String
    
    var body: some View{
        VStack{
            HStack {
                Text("알람소리")
                    .font(.system(size: 24))
                    .fontWeight(.semibold)
                    .padding(.all)
                Spacer()
            }
            HStack(spacing: 10) { // 버튼 간의 간격을 설정합니다
                Spacer()
                    .frame(width: 10)
                Button(action: {
                    if selectedAlarm == "잘못들음" {
                        selectedAlarm = ""
                    } else {
                        selectedAlarm = "잘못들음"
                    }
                }) {
                    Text("잘못들음")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedAlarm == "잘못들음" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0) // 상하 여백을 설정합니다
                        .padding(.horizontal, 16.0) // 좌우 여백을 설정합니다
                        .background(selectedAlarm == "잘못들음" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    if selectedAlarm == "중간" {
                        selectedAlarm = ""
                    } else {
                        selectedAlarm = "중간"
                    }
                }) {
                    Text("중간")
                        .fontWeight(.semibold)
                        .frame(width: 52.0, height: 20.0)
                        .foregroundColor(selectedAlarm == "중간" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(selectedAlarm == "중간" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Button(action: {
                    if selectedAlarm == "잘들음" {
                        selectedAlarm = ""
                    } else {
                        selectedAlarm = "잘들음"
                    }
                }) {
                    Text("잘들음")
                        .fontWeight(.semibold)
                        .frame(width: 52.0, height: 20.0)
                        .foregroundColor(selectedAlarm == "잘들음" ? Color.white : Color("mainColor"))
                        .padding(.vertical, 10.0)
                        .padding(.horizontal, 16.0)
                        .background(selectedAlarm == "잘들음" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer() // 왼쪽에 붙도록 Spacer 추가
            }
        }
    }
}




struct RoommateFindView_Previews: PreviewProvider {
    @State static private var selection = 1
    
    static var previews: some View {
        return RoommateFindView(selection: $selection)
            .environmentObject(Anothers())
    }
}
