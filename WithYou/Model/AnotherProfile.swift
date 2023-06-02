//
//  AuthourProfile.swift
//  WithYou
//
//  Created by 최성빈 on 2023/05/22.
//

import Foundation

class Another: Identifiable, Codable {
    var id: UUID
    var name: String
    var gender: String
    var imgStr: String
    var favorit: Bool
    var score: Float
    var categories: [String]
    var inRoom: Bool
    var roommate: User?

    init(id: UUID = UUID(), name: String = "",gender: String = "남성", imgStr: String = "default", favorit: Bool = false, score: Float = 0, categories: [String] = [], inRoom: Bool = false, roommate: User? = nil) {
        self.id = id
        self.name = name
        self.gender = gender
        self.imgStr = imgStr
        self.favorit = favorit
        self.score = score
        self.categories = categories
        self.inRoom = inRoom
        self.roommate = roommate
    }
}


class Anothers: ObservableObject {
    @Published var AnotherArr = [Another]()
    
    init() {
           AnotherArr = [
            //남성
            Another(name: "샘플 사용자 0", score: 4.2 , categories: ["Category 1", "8동", "3학년","E","N","T","J","09시","22시","없음",
                                                      "매일","중", "안함", "중간"]),
               Another(name: "샘플 사용자 1", score: 3.4, categories: ["카테고리 2", "1동", "2학년","I","N","T","J","10시","23시","코골이",
                       "매일","상", "안함", "중간"]),
               Another(name: "샘플 사용자 2", categories: ["카테고리 3", "4동", "1학년","E","S","F","J","07시","21시","없음",
                                                      "이틀","하", "안함", "잘들음"]),
            Another(name: "샘플 사용자 3", score: 3.9, categories: ["카테고리 4", "8동", "2학년","E","N","F","P","06시","23시","코골이",
                                                      "매일","중", "함", "잘들음"]),
            Another(name: "샘플 사용자 4", score: 1.7, categories: ["카테고리 4", "10동", "2학년","I","S","T","J","07시","00시","없음",
                                                   "사흘","상", "안함", "중간"]),
            Another(name: "샘플 사용자 5",  score: 2.8, categories: ["카테고리 4", "1동", "1학년","E","S","F","P","07시","00시","이갈이",
                                                   "매일","중", "안함", "못들음"]),
            Another(name: "샘플 사용자 6", score: 3.5, categories: ["카테고리 4", "개척관", "1학년","I","N","T","J","09시","21시","없음",
                                                   "나흘","상", "안함", "중간"]),
            Another(name: "샘플 사용자 7", score: 3.1, categories: ["카테고리 4", "개척관", "1학년","E","S","F","P","08시","00시","잠꼬대",
                                                   "안함","상", "함", "못들음"]),
            Another(name: "샘플 사용자 8", score: 4.2, categories: ["카테고리 4", "2동", "3학년","E","S","T","J","08시","01시","몽유병",
                                                   "매일","중", "안함", "잘들음"]),
            Another(name: "샘플 사용자 9", score: 3.0, categories: ["카테고리 4", "2동", "3학년","E","N","F","P","10시","02시","몽유병",
                                                   "사흘","하", "함", "못들음"]),
            Another(name: "샘플 사용자 10", score: 4.1, categories: ["카테고리 4", "개척관", "4학년","I","S","T","J","11시","02시","잠꼬대",
                                                   "이틀","중", "안함", "중간"]),
            Another(name: "샘플 사용자 11", score: 5.0, categories: ["카테고리 4", "10동", "2학년","E","N","F","P","12시","03시","코골이",
                                                   "안함","하", "함", "잘들음"]),
            Another(name: "샘플 사용자 12", score: 1.2, categories: ["카테고리 4", "10동", "1학년","E","S","F","J","13시","01시","이갈이",
                                                   "나흘","중", "안함", "중간"]),
            Another(name: "샘플 사용자 13", score: 4.3, categories: ["카테고리 4", "1동", "2학년","I","N","F","P","11시","04시","없음",
                                                   "나흘","하", "함", "잘들음"]),
            Another(name: "샘플 사용자 14", score: 4.0, categories: ["카테고리 4", "1동", "3학년","I","N","T","P","12시","23시","없음",
                                                   "사흘","상", "함", "중간"]),
            //여성
            Another(name: "샘플 사용자 0",gender: "여성", score: 4.2 , categories: ["Category 1", "4동", "3학년","E","N","T","J","09시","22시","없음",
                                                      "매일","중", "안함", "중간"]),
               Another(name: "샘플 사용자 1",gender: "여성", score: 3.4, categories: ["카테고리 2", "5동", "2학년","I","N","T","J","10시","23시","코골이",
                       "매일","상", "안함", "중간"]),
               Another(name: "샘플 사용자 2",gender: "여성", categories: ["카테고리 3", "4동", "1학년","E","S","F","J","07시","21시","없음",
                                                      "이틀","하", "안함", "잘들음"]),
            Another(name: "샘플 사용자 3",gender: "여성", score: 3.9, categories: ["카테고리 4", "4동", "2학년","E","N","F","P","06시","23시","코골이",
                                                      "매일","중", "함", "잘들음"]),
            Another(name: "샘플 사용자 4",gender: "여성", score: 1.7, categories: ["카테고리 4", "5동", "2학년","I","S","T","J","07시","00시","없음",
                                                   "사흘","상", "안함", "중간"]),
            Another(name: "샘플 사용자 5",gender: "여성",  score: 2.8, categories: ["카테고리 4", "7동", "1학년","E","S","F","P","07시","00시","이갈이",
                                                   "매일","중", "안함", "못들음"]),
            Another(name: "샘플 사용자 6",gender: "여성", score: 3.5, categories: ["카테고리 4", "9동", "1학년","I","N","T","J","09시","21시","없음",
                                                   "나흘","상", "안함", "중간"]),
            Another(name: "샘플 사용자 7",gender: "여성", score: 3.1, categories: ["카테고리 4", "11동", "1학년","E","S","F","P","08시","00시","잠꼬대",
                                                   "안함","상", "함", "못들음"]),
            Another(name: "샘플 사용자 8",gender: "여성", score: 4.2, categories: ["카테고리 4", "4동", "3학년","E","S","T","J","08시","01시","몽유병",
                                                   "매일","중", "안함", "잘들음"]),
            Another(name: "샘플 사용자 9",gender: "여성", score: 3.0, categories: ["카테고리 4", "5동", "3학년","E","N","F","P","10시","02시","몽유병",
                                                   "사흘","하", "함", "못들음"]),
            Another(name: "샘플 사용자 10",gender: "여성", score: 4.1, categories: ["카테고리 4", "7동", "4학년","I","S","T","J","11시","02시","잠꼬대",
                                                   "이틀","중", "안함", "중간"]),
            Another(name: "샘플 사용자 11",gender: "여성", score: 5.0, categories: ["카테고리 4", "9동", "2학년","E","N","F","P","12시","03시","코골이",
                                                   "안함","하", "함", "잘들음"]),
            Another(name: "샘플 사용자 12",gender: "여성", score: 1.2, categories: ["카테고리 4", "11동", "1학년","E","S","F","J","13시","01시","이갈이",
                                                   "나흘","중", "안함", "중간"]),
            Another(name: "샘플 사용자 13",gender: "여성", score: 4.3, categories: ["카테고리 4", "4동", "2학년","I","N","F","P","11시","04시","없음",
                                                   "나흘","하", "함", "잘들음"]),
            Another(name: "샘플 사용자 14",gender: "여성", score: 4.0, categories: ["카테고리 4", "5동", "3학년","I","N","T","P","12시","23시","없음",
                                                   "사흘","상", "함", "중간"])
           ]
       }
}

