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
    var imgStr: String
    var favorit: Bool
    var score: Float
    var categories: [String]

    init(id: UUID = UUID(), name: String = "", imgStr: String = "default", favorit: Bool = false, score: Float = 0, categories: [String] = []) {
        self.id = id
        self.name = name
        self.imgStr = imgStr
        self.favorit = favorit
        self.score = score
        self.categories = categories
    }
}


class Anothers: ObservableObject {
    @Published var AnotherArr = [Another]()
    
    init() {
           AnotherArr = [
            Another(name: "샘플 사용자 0",favorit: true, score: 4.2 , categories: ["Category 1", "8동", "3학년","ENTJ","9시","22시","없음",
                                                      "매일","중", "안함", "중간"]),
               Another(name: "샘플 사용자 1", score: 3.4, categories: ["카테고리 2", "1동", "2학년","INTJ","10시","23시","코골이",
                       "매일","상", "안함", "중간"]),
               Another(name: "샘플 사용자 2", categories: ["카테고리 3", "4동", "1학년","ESFJ","7시","21시","없음",
                                                      "이틀","하", "안함", "잘들음"]),
               Another(name: "샘플 사용자 3", favorit: true, score: 1.7, categories: ["카테고리 4", "3동", "4학년","ENTP","9시","22시","없음",
                                                      "매일","중", "함", "중간"])
           ]
       }
}

