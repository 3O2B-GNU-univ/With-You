//
//  ToDoCon.swift
//  WithYou
//
//  Created by 최성빈 on 2023/04/03.
//

import SwiftUI



struct ToDoCon: View {
    @State private var selectedButton = 0
    @StateObject var reminders = Reminders()
    @StateObject var memos = Memos()
    
    var body: some View {
            VStack {
                HStack(spacing: 20) {
                    Button(action: {
                        self.selectedButton = 0
                    }) {
                        Text("할 일")
                            .fontWeight(.semibold)
                            .foregroundColor(selectedButton == 0 ? Color.white : Color("mainColor"))
                            .padding(.all, 10.0)
                            .frame(width: 69.0, height: 38.0)
                            .background(selectedButton == 0 ? Color("mainColor") : Color.white)
                            .cornerRadius(19)
                            .overlay(
                                RoundedRectangle(cornerRadius: 19)
                                    .stroke(Color("mainColor"), lineWidth: 2)
                            )
                    }
                    
                    Button(action: {
                        self.selectedButton = 1
                    }) {
                        Text("메모")
                            .fontWeight(.semibold)
                            .foregroundColor(selectedButton == 1 ? Color.white : Color("mainColor"))
                            .padding(.all, 10.0)
                            .frame(width: 65.0, height: 38.0)
                            .background(selectedButton == 1 ? Color("mainColor") : Color.white)
                            .cornerRadius(19)
                            .overlay(
                                RoundedRectangle(cornerRadius: 19)
                                    .stroke(Color("mainColor"), lineWidth: 2)
                            )
                    }
                }
                .padding(.top, 10)
                
                switch selectedButton {
                    case 0:
                        ToDoView(reminders: reminders)
                    case 1:
                        MemoListView(memos: memos)
                    default:
                        EmptyView()
                }
            }
        }
}

struct ToDoCon_Previews: PreviewProvider {
    static var previews: some View {
        ToDoCon()
            .environmentObject(Reminders())
            .environmentObject(Memos())
    }
}

