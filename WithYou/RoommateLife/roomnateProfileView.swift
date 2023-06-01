//
//  roomnateProfileView.swift
//  WithYou
//
//  Created by 최성빈 on 2023/06/01.
//

import SwiftUI

struct roomnateProfileView: View {
    var roommate: Another
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(systemName: "person.circle")
                    .foregroundColor(.black)
                    .font(.system(size: 70))
                Circle()
                    .foregroundColor(roommate.inRoom ? .green : .red)
                    .frame(width: 20, height: 20)
                    .padding(4)
            }
            Text(roommate.name)
                .fontWeight(.regular)
                .frame(width: 80, height: 10)
        }
    }
}

struct roomnateProfileView_Previews: PreviewProvider {
    static var previews: some View {
        roomnateProfileView(roommate: Another(id: UUID(), name: "6관 청소 마스터", categories: ["Category 1", "8동", "2학년"]))
    }
}
