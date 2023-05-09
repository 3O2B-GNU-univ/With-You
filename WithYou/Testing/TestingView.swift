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
    @State private var selectedButton = 0
    
    var body: some View {
        VStack {
            Text("기숙사 정보를 알려주세요.")
                .font(.system(size: 30, weight: .bold))
                .padding(.top, 50)
                .padding(.bottom, 100)
            HStack {
                Spacer()

                Button(action: {
                    self.selectedButton = 0
                }) {
                    Text("1동")
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

                Button(action: {
                    self.selectedButton = 1
                }) {
                    Text("2동")
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
                    Text("8동")
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
                Button(action: {
                    self.selectedButton = 3
                }) {
                    Text("10동")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton == 3 ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton == 3 ? Color("mainColor") : Color.white)
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
                    self.selectedButton = 4
                }) {
                    Text("개척관")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton == 4 ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton == 4 ? Color("mainColor") : Color.white)
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
    @State private var selectedButton = 0
    
    var body: some View {
        VStack {
            Text("학년을 알려주세요.")
                .font(.system(size: 30, weight: .bold))
                .padding(.top, 50)
                .padding(.bottom, 100)
            HStack {
                Spacer()

                Button(action: {
                    self.selectedButton = 0
                }) {
                    Text("1학년")
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

                Button(action: {
                    self.selectedButton = 1
                }) {
                    Text("2학년")
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
                    Text("3학년")
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
                Button(action: {
                    self.selectedButton = 3
                }) {
                    Text("4학년")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton == 3 ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton == 3 ? Color("mainColor") : Color.white)
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
    @State private var selectedButton = 0
    @State private var selectedButton1 = 0
    @State private var selectedButton2 = 0
    @State private var selectedButton3 = 0
    
    var body: some View {
        VStack {
            Text("MBTI를 알려주세요.")
                .font(.system(size: 30, weight: .bold))
                .padding(.top, 50)
                .padding(.bottom, 100)
            HStack {
                Spacer()

                Button(action: {
                    self.selectedButton = 0
                }) {
                    Text("E")
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

                Button(action: {
                    self.selectedButton = 1
                }) {
                    Text("I")
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
                    self.selectedButton1 = 0
                }) {
                    Text("N")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton1 == 0 ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton1 == 0 ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer()
                Button(action: {
                    self.selectedButton1 = 1
                }) {
                    Text("S")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton1 == 1 ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton1 == 1 ? Color("mainColor") : Color.white)
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
                    self.selectedButton2 = 0
                }) {
                    Text("F")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton2 == 0 ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton2 == 0 ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer()
                Button(action: {
                    self.selectedButton2 = 1
                }) {
                    Text("T")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton2 == 1 ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton2 == 1 ? Color("mainColor") : Color.white)
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
                    self.selectedButton3 = 0
                }) {
                    Text("P")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton3 == 0 ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton3 == 0 ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer()
                Button(action: {
                    self.selectedButton3 = 1
                }) {
                    Text("J")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton3 == 1 ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton3 == 1 ? Color("mainColor") : Color.white)
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
    @State private var selectedButton = 0
    
    var body: some View {
        VStack {
            Text("평소 기상시간을 알려주세요.")
                .font(.system(size: 30, weight: .bold))
                .padding(.top, 50)
                .padding(.bottom, 100)
            HStack {
                Spacer()

                Button(action: {
                    self.selectedButton = 0
                }) {
                    Text("06시")
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

                Button(action: {
                    self.selectedButton = 1
                }) {
                    Text("07시")
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
                    Text("08시")
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
                Button(action: {
                    self.selectedButton = 3
                }) {
                    Text("09시")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton == 3 ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton == 3 ? Color("mainColor") : Color.white)
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
                    self.selectedButton = 4
                }) {
                    Text("10시")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton == 4 ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton == 4 ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer()
                Button(action: {
                    self.selectedButton = 5
                }) {
                    Text("11시")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton == 5 ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton == 5 ? Color("mainColor") : Color.white)
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
                    self.selectedButton = 6
                }) {
                    Text("12시")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton == 6 ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton == 6 ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer()
                Button(action: {
                    self.selectedButton = 7
                }) {
                    Text("13시")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton == 7 ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton == 7 ? Color("mainColor") : Color.white)
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
    @State private var selectedButton = 0
    
    var body: some View {
        VStack {
            Text("평소 취침시간을 알려주세요.")
                .font(.system(size: 30, weight: .bold))
                .padding(.top, 50)
                .padding(.bottom, 100)
            HStack {
                Spacer()

                Button(action: {
                    self.selectedButton = 0
                }) {
                    Text("21시")
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

                Button(action: {
                    self.selectedButton = 1
                }) {
                    Text("22시")
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
                    Text("23시")
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
                Button(action: {
                    self.selectedButton = 3
                }) {
                    Text("00시")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton == 3 ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton == 3 ? Color("mainColor") : Color.white)
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
                    self.selectedButton = 4
                }) {
                    Text("01시")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton == 4 ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton == 4 ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer()
                Button(action: {
                    self.selectedButton = 5
                }) {
                    Text("02시")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton == 5 ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton == 5 ? Color("mainColor") : Color.white)
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
                    self.selectedButton = 6
                }) {
                    Text("03시")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton == 6 ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton == 6 ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer()
                Button(action: {
                    self.selectedButton = 7
                }) {
                    Text("04시")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton == 7 ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton == 7 ? Color("mainColor") : Color.white)
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
    @State private var selectedButton = 0

    
    var body: some View {
        VStack {
            Text("방 청소주기을 알려주세요.")
                .font(.system(size: 30, weight: .bold))
                .padding(.top, 50)
                .padding(.bottom, 100)
            HStack {
                           Spacer()

                           Button(action: {
                               self.selectedButton = 0
                           }) {
                               Text("매일")
                                   .fontWeight(.semibold)
                                   .foregroundColor(selectedButton == 0  ? Color.white : Color("mainColor"))
                                   .padding(.all, 10.0)
                                   .frame(width: 140.0, height: 50.0)
                                   .background(selectedButton == 0  ? Color("mainColor") : Color.white)
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
                               Text("이틀")
                                   .fontWeight(.semibold)
                                   .foregroundColor(selectedButton == 1  ? Color.white : Color("mainColor"))
                                   .padding(.all, 10.0)
                                   .frame(width: 140.0, height: 50.0)
                                   .background(selectedButton == 1  ? Color("mainColor") : Color.white)
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
                               Text("사흘")
                                   .fontWeight(.semibold)
                                   .foregroundColor(selectedButton == 2  ? Color.white : Color("mainColor"))
                                   .padding(.all, 10.0)
                                   .frame(width: 140.0, height: 50.0)
                                   .background(selectedButton == 2  ? Color("mainColor") : Color.white)
                                   .cornerRadius(40)
                                   .overlay(
                                       RoundedRectangle(cornerRadius: 40)
                                           .stroke(Color("mainColor"), lineWidth: 2)
                                   )
                           }
                           Spacer()
                           Button(action: {
                               self.selectedButton = 3
                           }) {
                               Text("나흘")
                                   .fontWeight(.semibold)
                                   .foregroundColor(selectedButton == 3  ? Color.white : Color("mainColor"))
                                   .padding(.all, 10.0)
                                   .frame(width: 140.0, height: 50.0)
                                   .background(selectedButton == 3  ? Color("mainColor") : Color.white)
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
                    self.selectedButton = 4
                }) {
                    Text("주마다")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton == 4  ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton == 4  ? Color("mainColor") : Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("mainColor"), lineWidth: 2)
                        )
                }
                Spacer()
                Button(action: {
                    self.selectedButton = 5
                }) {
                    Text("안함")
                        .fontWeight(.semibold)
                        .foregroundColor(selectedButton == 5  ? Color.white : Color("mainColor"))
                        .padding(.all, 10.0)
                        .frame(width: 140.0, height: 50.0)
                        .background(selectedButton == 5  ? Color("mainColor") : Color.white  )
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
                    
                    NavigationLink(destination: UserNameSetView(), isActive: $isUserNameSetViewActive) {
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
