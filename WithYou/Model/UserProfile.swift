//
//  UserProfile.swift
//  WithYou
//
//  Created by 최성빈 on 2023/05/01.
//
import Foundation

class User: Identifiable, Codable {
    var id: UUID
    var name: String
    var gender: String
    var imgStr: String
    var categories: [String]
    var roommate: Another?

    init(id: UUID = UUID(), name: String = "",gender: String = "남성", imgStr: String = "default", categories: [String] = [], roommate: Another? = nil) {
        self.id = id
        self.name = name
        self.gender = gender
        self.imgStr = imgStr
        self.categories = categories
        self.roommate = roommate
    }

}








