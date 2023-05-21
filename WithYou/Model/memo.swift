//
//  memo.swift
//  WithYou
//
//  Created by 최성빈 on 2023/04/14.
//

import Foundation

class Memo: Identifiable, Codable, Equatable{
    var id: UUID
    var title: String
    var text: String
    var fixed: Bool

    init(id: UUID = UUID(), title: String, text: String, fixed: Bool) {
        self.id = id
        self.title = title
        self.text = text
        self.fixed = fixed
        }
    
    static func == (lhs: Memo, rhs: Memo) -> Bool {
            return lhs.title == rhs.title && lhs.text == rhs.text && lhs.fixed == rhs.fixed
        }
}

class Memos: ObservableObject {
    @Published var memosArr = [Memo]()
    
    func addMemo(_ memo: Memo) {
        memosArr.append(memo)
    }
    
    func removeMemo(atOffsets indexSet: IndexSet) {
        memosArr.remove(atOffsets: indexSet)
    }
}
