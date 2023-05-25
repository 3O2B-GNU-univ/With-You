//
//  TestingView.swift
//  WithYou
//
//  Created by 최성빈 on 2023/05/01.
//

import SwiftUI

struct Survey1View: View {
    @State private var selectedButton = 0
    
    var body: some View {
        VStack {
            Text("성별을 알려주세요.")
                .font(.system(size: 30, weight: .bold))
                .padding(.top, 50)
                .padding(.bottom, 100)
            HStack {
                Spacer()
                Button(action: {
                    self.selectedButton = 0
                }) {
                    Text("남성")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton == 0 ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 130.0, height: 50.0)
                        .background(selectedButton == 0 ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer()
                Button(action: {
                    self.selectedButton = 1
                }) {
                    Text("여성")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton == 1 ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 130.0, height: 50.0)
                        .background(selectedButton == 1 ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer()
            }
            Spacer()
        }
    }
}

struct Survey2View: View {
    @State private var selectedButton = "1동"
    
    var body: some View {
        VStack {
            Text("기숙사 정보를 알려주세요.")
                .font(.system(size: 30, weight: .bold))
                .padding(.top, 50)
                .padding(.bottom, 100)
            HStack {
                Spacer()

                Button(action: {
                    self.selectedButton = "1동"
                }) {
                    Text("1동")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton == "1동" ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton == "1동" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer()

                Button(action: {
                    self.selectedButton = "2동"
                }) {
                    Text("2동")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton == "2동" ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton == "2동" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer()
            }
            .padding(.bottom, 20)
            HStack {
                Spacer()
                Button(action: {
                    self.selectedButton = "8동"
                }) {
                    Text("8동")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton == "8동" ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton == "8동" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer()
                Button(action: {
                    self.selectedButton = "10동"
                }) {
                    Text("10동")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton == "10동" ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton == "10동" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer()
            }
            .padding(.bottom, 20)
            HStack {
                Spacer()
                Button(action: {
                    self.selectedButton = "개척관"
                }) {
                    Text("개척관")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton == "개척관" ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton == "개척관" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer()

            }

            Spacer()
        }
    }
}

struct Survey3View: View {
    @State private var selectedButton = "1학년"
    
    var body: some View {
        VStack {
            Text("학년을 알려주세요.")
                .font(.system(size: 30, weight: .bold))
                .padding(.top, 50)
                .padding(.bottom, 100)
            HStack {
                Spacer()

                Button(action: {
                    self.selectedButton = "1학년"
                }) {
                    Text("1학년")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton == "1학년" ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton == "1학년" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer()

                Button(action: {
                    self.selectedButton = "2학년"
                }) {
                    Text("2학년")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton == "2학년" ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton == "2학년" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer()
            }
            .padding(.bottom, 20)
            HStack {
                Spacer()
                Button(action: {
                    self.selectedButton = "3학년"
                }) {
                    Text("3학년")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton == "3학년" ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton == "3학년" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer()
                Button(action: {
                    self.selectedButton = "4학년"
                }) {
                    Text("4학년")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton == "4학년" ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton == "4학년" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer()
            }

            Spacer()
        }
    }
}

struct Survey4View: View {
    @State private var selectedButton = "E"
    @State private var selectedButton1 = "N"
    @State private var selectedButton2 = "F"
    @State private var selectedButton3 = "P"
    
    var body: some View {
        VStack {
            Text("MBTI를 알려주세요.")
                .font(.system(size: 30, weight: .bold))
                .padding(.top, 50)
                .padding(.bottom, 100)
            HStack {
                Spacer()

                Button(action: {
                    self.selectedButton = "E"
                }) {
                    Text("E")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton == "E" ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton == "E" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer()

                Button(action: {
                    self.selectedButton = "I"
                }) {
                    Text("I")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton == "I" ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton == "I" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer()
            }
            .padding(.bottom, 20)
            HStack {
                Spacer()
                Button(action: {
                    self.selectedButton1 = "N"
                }) {
                    Text("N")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton1 == "N" ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton1 == "N" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer()
                Button(action: {
                    self.selectedButton1 = "S"
                }) {
                    Text("S")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton1 == "S" ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton1 == "S" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer()
            }
            .padding(.bottom, 20)
            HStack {
                Spacer()
                Button(action: {
                    self.selectedButton2 = "F"
                }) {
                    Text("F")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton2 == "F" ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton2 == "F" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer()
                Button(action: {
                    self.selectedButton2 = "T"
                }) {
                    Text("T")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton2 == "T" ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton2 == "T" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer()
            }
            .padding(.bottom, 20)
            HStack {
                Spacer()
                Button(action: {
                    self.selectedButton3 = "P"
                }) {
                    Text("P")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton3 == "P" ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton3 == "P" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer()
                Button(action: {
                    self.selectedButton3 = "J"
                }) {
                    Text("J")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton3 == "J" ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton3 == "J" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer()
            }
            Spacer()
        }
    }
}

struct Survey5View: View {
    @State private var selectedButton = "06시"
    
    var body: some View {
        VStack {
            Text("평소 기상시간을 알려주세요.")
                .font(.system(size: 30, weight: .bold))
                .padding(.top, 50)
                .padding(.bottom, 100)
            HStack {
                Spacer()

                Button(action: {
                    self.selectedButton = "06시"
                }) {
                    Text("06시")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton == "06시" ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton == "06시" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer()

                Button(action: {
                    self.selectedButton = "07시"
                }) {
                    Text("07시")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton == "07시" ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton == "07시" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer()
            }
            .padding(.bottom, 20)
            HStack {
                Spacer()
                Button(action: {
                    self.selectedButton = "08시"
                }) {
                    Text("08시")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton == "08시" ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton == "08시" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer()
                Button(action: {
                    self.selectedButton = "09시"
                }) {
                    Text("09시")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton == "09시" ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton == "09시" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer()
            }
            .padding(.bottom, 20)
            HStack {
                Spacer()
                Button(action: {
                    self.selectedButton = "10시"
                }) {
                    Text("10시")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton == "10시" ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton == "10시" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer()
                Button(action: {
                    self.selectedButton = "11시"
                }) {
                    Text("11시")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton == "11시" ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton == "11시" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer()
            }
            .padding(.bottom, 20)
            HStack {
                Spacer()
                Button(action: {
                    self.selectedButton = "12시"
                }) {
                    Text("12시")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton == "12시" ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton == "12시" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer()
                Button(action: {
                    self.selectedButton = "13시"
                }) {
                    Text("13시")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton == "13시" ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton == "13시" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer()
            }
            Spacer()
        }
    }
}

struct Survey6View: View {
    @State private var selectedButton = "21시"
    
    var body: some View {
        VStack {
            Text("평소 취침시간을 알려주세요.")
                .font(.system(size: 30, weight: .bold))
                .padding(.top, 50)
                .padding(.bottom, 100)
            HStack {
                Spacer()

                Button(action: {
                    self.selectedButton = "21시"
                }) {
                    Text("21시")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton == "21시" ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton == "21시" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer()

                Button(action: {
                    self.selectedButton = "22시"
                }) {
                    Text("22시")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton == "22시" ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton == "22시" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer()
            }
            .padding(.bottom, 20)
            HStack {
                Spacer()
                Button(action: {
                    self.selectedButton = "23시"
                }) {
                    Text("23시")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton == "23시" ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton == "23시" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer()
                Button(action: {
                    self.selectedButton = "00시"
                }) {
                    Text("00시")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton == "00시" ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton == "00시" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer()
            }
            .padding(.bottom, 20)
            HStack {
                Spacer()
                Button(action: {
                    self.selectedButton = "01시"
                }) {
                    Text("01시")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton == "01시" ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton == "01시" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer()
                Button(action: {
                    self.selectedButton = "02시"
                }) {
                    Text("02시")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton == "02시" ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton == "02시" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer()
            }
            .padding(.bottom, 20)
            HStack {
                Spacer()
                Button(action: {
                    self.selectedButton = "03시"
                }) {
                    Text("03시")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton == "03시" ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton == "03시" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer()
                Button(action: {
                    self.selectedButton = "04시"
                }) {
                    Text("04시")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton == "04시" ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton == "04시" ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer()
            }
            Spacer()
        }
    }
}

struct Survey7View: View {
    @State private var selectedButtons = [false, false, false, false]

    
    var body: some View {
        VStack {
            Text("잠버릇을 알려주세요.")
                .font(.system(size: 30, weight: .bold))
                .padding(.top, 50)
                .padding(.bottom, 100)
            HStack {
                           Spacer()

                           Button(action: {
                               self.selectedButtons[0].toggle()
                           }) {
                               Text("코골이")
                                   .fontWeight(.semibold)
                                   .foregroundColor(selectedButtons[0] ? Color.white : Color("mainColor"))
                                   .padding(.all, 10.0)
                                   .frame(width: 140.0, height: 50.0)
                                   .background(selectedButtons[0] ? Color("mainColor") : Color.white)
                                   .cornerRadius(40)
                                   .overlay(
                                       RoundedRectangle(cornerRadius: 40)
                                           .stroke(Color("mainColor"), lineWidth: 2)
                                   )
                           }
                           Spacer()

                           Button(action: {
                               self.selectedButtons[1].toggle()
                           }) {
                               Text("이갈이")
                                   .fontWeight(.semibold)
                                   .foregroundColor(selectedButtons[1] ? Color.white : Color("mainColor"))
                                   .padding(.all, 10.0)
                                   .frame(width: 140.0, height: 50.0)
                                   .background(selectedButtons[1] ? Color("mainColor") : Color.white)
                                   .cornerRadius(40)
                                   .overlay(
                                       RoundedRectangle(cornerRadius: 40)
                                           .stroke(Color("mainColor"), lineWidth: 2)
                                   )
                           }
                           Spacer()
                       }
                       .padding(.bottom, 20)
                       HStack {
                           Spacer()
                           Button(action: {
                               self.selectedButtons[2].toggle()
                           }) {
                               Text("잠꼬대")
                                   .fontWeight(.semibold)
                                   .foregroundColor(selectedButtons[2] ? Color.white : Color("mainColor"))
                                   .padding(.all, 10.0)
                                   .frame(width: 140.0, height: 50.0)
                                   .background(selectedButtons[2] ? Color("mainColor") : Color.white)
                                   .cornerRadius(40)
                                   .overlay(
                                       RoundedRectangle(cornerRadius: 40)
                                           .stroke(Color("mainColor"), lineWidth: 2)
                                   )
                           }
                           Spacer()
                           Button(action: {
                               self.selectedButtons[3].toggle()
                           }) {
                               Text("몽유병")
                                   .fontWeight(.semibold)
                                   .foregroundColor(selectedButtons[3] ? Color.white : Color("mainColor"))
                                   .padding(.all, 10.0)
                                   .frame(width: 140.0, height: 50.0)
                                   .background(selectedButtons[3] ? Color("mainColor") : Color.white)
                                   .cornerRadius(40)
                                   .overlay(
                                       RoundedRectangle(cornerRadius: 40)
                                           .stroke(Color("mainColor"), lineWidth: 2)
                                   )
                           }
                           Spacer()
                       }
                       .padding(.bottom, 20)
            HStack {
                Spacer()
                Button(action: {
                    self.selectedButtons = [false, false, false, false]
                }) {
                    Text("없음")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButtons.contains(true) ? Color("mainColor") : Color.white)
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButtons.contains(true) ? Color.white : Color("mainColor"))
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }

                Spacer()

            }

            Spacer()
        }
    }
}

struct Survey8View: View {
    @State private var selectedButton = "매일"

    
    var body: some View {
        VStack {
            Text("방 청소주기을 알려주세요.")
                .font(.system(size: 30, weight: .bold))
                .padding(.top, 50)
                .padding(.bottom, 100)
            HStack {
                           Spacer()

                           Button(action: {
                               self.selectedButton = "매일"
                           }) {
                               Text("매일")
                                   .fontWeight(.semibold)
                                   .foregroundColor(selectedButton == "매일"  ? Color.white : Color("mainColor"))
                                   .padding(.all, 10.0)
                                   .frame(width: 140.0, height: 50.0)
                                   .background(selectedButton == "매일"  ? Color("mainColor") : Color.white)
                                   .cornerRadius(40)
                                   .overlay(
                                       RoundedRectangle(cornerRadius: 40)
                                           .stroke(Color("mainColor"), lineWidth: 2)
                                   )
                           }
                           Spacer()

                           Button(action: {
                               self.selectedButton = "이틀"
                           }) {
                               Text("이틀")
                                   .fontWeight(.semibold)
                                   .foregroundColor(selectedButton == "이틀"  ? Color.white : Color("mainColor"))
                                   .padding(.all, 10.0)
                                   .frame(width: 140.0, height: 50.0)
                                   .background(selectedButton == "이틀"  ? Color("mainColor") : Color.white)
                                   .cornerRadius(40)
                                   .overlay(
                                       RoundedRectangle(cornerRadius: 40)
                                           .stroke(Color("mainColor"), lineWidth: 2)
                                   )
                           }
                           Spacer()
                       }
                       .padding(.bottom, 20)
                       HStack {
                           Spacer()
                           Button(action: {
                               self.selectedButton = "사흘"
                           }) {
                               Text("사흘")
                                   .fontWeight(.semibold)
                                   .foregroundColor(selectedButton == "사흘"  ? Color.white : Color("mainColor"))
                                   .padding(.all, 10.0)
                                   .frame(width: 140.0, height: 50.0)
                                   .background(selectedButton == "사흘"  ? Color("mainColor") : Color.white)
                                   .cornerRadius(40)
                                   .overlay(
                                       RoundedRectangle(cornerRadius: 40)
                                           .stroke(Color("mainColor"), lineWidth: 2)
                                   )
                           }
                           Spacer()
                           Button(action: {
                               self.selectedButton = "나흘"
                           }) {
                               Text("나흘")
                                   .fontWeight(.semibold)
                                   .foregroundColor(selectedButton == "나흘"  ? Color.white : Color("mainColor"))
                                   .padding(.all, 10.0)
                                   .frame(width: 140.0, height: 50.0)
                                   .background(selectedButton == "나흘"  ? Color("mainColor") : Color.white)
                                   .cornerRadius(40)
                                   .overlay(
                                       RoundedRectangle(cornerRadius: 40)
                                           .stroke(Color("mainColor"), lineWidth: 2)
                                   )
                           }
                           Spacer()
                       }
                       .padding(.bottom, 20)
            HStack {
                Spacer()
                Button(action: {
                    self.selectedButton = "주마다"
                }) {
                    Text("주마다")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton == "주마다"  ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton == "주마다"  ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer()
                Button(action: {
                    self.selectedButton = "안함"
                }) {
                    Text("안함")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton == "안함"  ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton == "안함"  ? Color("mainColor") : Color.white  )
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }

                Spacer()

            }

            Spacer()
        }
    }
}

struct Survey9View: View {
    @State private var selectedButton = 0
    
    var body: some View {
        VStack {
            Text("향 민감도를 알려주세요.")
                .font(.system(size: 30, weight: .bold))
                .padding(.top, 50)
                .padding(.bottom, 100)
            HStack {
                Spacer()

                Button(action: {
                    self.selectedButton = 0
                }) {
                    Text("상")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton == 0 ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton == 0 ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer()

                
            }
            .padding(.bottom, 20)
            HStack {
                Spacer()
                Button(action: {
                    self.selectedButton = 1
                }) {
                    Text("중")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton == 1 ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton == 1 ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
            }
                Spacer()
            }
            .padding(.bottom, 20)
            HStack {
                Spacer()
                Button(action: {
                    self.selectedButton = 2
                }) {
                    Text("하")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton == 2 ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton == 2 ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer()
            }

            Spacer()
        }
    }
}

struct Survey10View: View {
    @State private var selectedButton = 0
    
    var body: some View {
        VStack {
            Text("흡연여부를 알려주세요.")
                .font(.system(size: 30, weight: .bold))
                .padding(.top, 50)
                .padding(.bottom, 100)
            HStack {
                Spacer()
                Button(action: {
                    self.selectedButton = 0
                }) {
                    Text("함")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton == 0 ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 130.0, height: 50.0)
                        .background(selectedButton == 0 ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer()
                Button(action: {
                    self.selectedButton = 1
                }) {
                    Text("안함")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton == 1 ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 130.0, height: 50.0)
                        .background(selectedButton == 1 ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer()
            }
            Spacer()
        }
    }
}

struct Survey11View: View {
    @State private var selectedButton = 0
    
    var body: some View {
        VStack {
            Text("알람소리에 대해 알려주세요.")
                .font(.system(size: 30, weight: .bold))
                .padding(.top, 50)
                .padding(.bottom, 100)
            HStack {
                Spacer()

                Button(action: {
                    self.selectedButton = 0
                }) {
                    Text("잘 못들음")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton == 0 ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton == 0 ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer()

                
            }
            .padding(.bottom, 20)
            HStack {
                Spacer()
                Button(action: {
                    self.selectedButton = 1
                }) {
                    Text("보통")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton == 1 ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton == 1 ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
            }
                Spacer()
            }
            .padding(.bottom, 20)
            HStack {
                Spacer()
                Button(action: {
                    self.selectedButton = 2
                }) {
                    Text("잘 들음")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton == 2 ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton == 2 ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer()
            }

            Spacer()
        }
    }
}

struct TestingView: View {
    @State private var currentViewIndex = 0
    @State private var isUserNameSetViewActive = false
    @State private var user = User()
    
    var body: some View {
        NavigationView {
            VStack {
                ProgressView(value: Double(currentViewIndex), total: Double(10))
                    .padding(.all)
                    .progressViewStyle(LinearProgressViewStyle(tint: Color("mainColor")))
                
                if currentViewIndex == 0 {
                    Survey1View()
                } else if currentViewIndex == 1 {
                    Survey2View()
                } else if currentViewIndex == 2 {
                    Survey3View()
                } else if currentViewIndex == 3 {
                    Survey4View()
                } else if currentViewIndex == 4 {
                    Survey5View()
                } else if currentViewIndex == 5 {
                    Survey6View()
                } else if currentViewIndex == 6 {
                    Survey7View()
                } else if currentViewIndex == 7 {
                    Survey8View()
                } else if currentViewIndex == 8 {
                    Survey9View()
                } else if currentViewIndex == 9 {
                    Survey10View()
                }
                
                Spacer()
                
                HStack {
                    if currentViewIndex > 0 {
                        Button("이전") {
                            currentViewIndex -= 1
                        }
                    }
                    
                    Spacer()
                    
                    NavigationLink(destination: UserNameSetView(user: $user), isActive: $isUserNameSetViewActive) {
                        Button("다음") {
                            if currentViewIndex < 9 {
                                currentViewIndex += 1
                            } else {
                                isUserNameSetViewActive = true
                            }
                        }
                    }
                }
                .padding()
            }
        }
    }
}


struct TestingView_Previews: PreviewProvider {
    static var previews: some View {
        TestingView()
    }
}
