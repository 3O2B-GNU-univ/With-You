//
//  Todo.swift
//  WithYou
//
//  Created by 최성빈 on 2023/04/14.
//

import Foundation

class Reminder: Identifiable, Codable, Equatable{
    var id: UUID
    var title: String
    var isTapped: Bool

    init(id: UUID = UUID(), title: String, isTapped: Bool) {
        self.id = id
        self.title = title
        self.isTapped = isTapped
        }
    static func == (lhs: Reminder, rhs: Reminder) -> Bool {
            return lhs.title == rhs.title && lhs.isTapped == rhs.isTapped
        }
}

class Reminders: ObservableObject {
    @Published var remindersArr = [Reminder]()
    
    func addReminder(_ reminder: Reminder) {
        remindersArr.append(reminder)
    }
    
    func removeReminder(atOffsets indexSet: IndexSet) {
        remindersArr.remove(atOffsets: indexSet)
    }
}
