//
//  MemoView.swift
//  WithYou
//
//  Created by 최성빈 on 2023/04/05.
//

import SwiftUI


struct MemoListView: View {
    @ObservedObject var memos: Memos
    @State private var newMemoTitle = ""
    @State private var newMemoText = ""
    @State private var newMemoFixed = false
    
    var body: some View {
            ZStack(alignment: .bottomTrailing) {
                List {
                    if !memos.memosArr.filter({ $0.fixed }).isEmpty {
                            Section(header: Text("고정된 메모")) {
                                ForEach(memos.memosArr.filter { $0.fixed }) { memo in
                                    NavigationLink(destination: MemoDetail(memo: $memos.memosArr[memos.memosArr.firstIndex(of: memo)!])) {
                                        HStack {
                                            VStack(alignment: .leading) { Text(memo.title.prefix(30)).font(.headline)
                                                Text(memo.text.prefix(100) + "...")
                                                    .lineLimit(4)
                                            }
                                        Spacer()
                                        }
                                        .padding()
                                    }
                                    .background(Color.white)
                                    .cornerRadius(10)
                                    .shadow(color: Color.gray.opacity(0.5), radius: 5, x: 0, y: 2)
                                }
                                .onDelete(perform: memos.removeMemo)
                            }
                        }
                        
                        if !memos.memosArr.filter({ !$0.fixed }).isEmpty {
                            Section(header: Text("메모")) {
                                ForEach(memos.memosArr.filter { !$0.fixed }) { memo in
                                    NavigationLink(destination: MemoDetail(memo: $memos.memosArr[memos.memosArr.firstIndex(of: memo)!])) {
                                        HStack {
                                            VStack(alignment: .leading) { Text(memo.title.prefix(30)).font(.headline)
                                                Text(memo.text.prefix(100) + "...")
                                                    .lineLimit(4)
                                            }
                                        Spacer()
                                        }
                                        .padding()
                                    }
                                    .background(Color.white)
                                    .cornerRadius(10)
                                    .shadow(color: Color.gray.opacity(0.5), radius: 5, x: 0, y: 2)
                                }
                                .onDelete(perform: memos.removeMemo)
                            }
                        }
                    
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .listStyle(.plain)
                .ignoresSafeArea()
                
                
                
                NavigationLink {
                    NewMemoView(
                        memos: memos, newMemoTitle: $newMemoTitle, newMemoText: $newMemoText, newMemoFixed: $newMemoFixed
                    )
                } label: {
                    Image(systemName: "plus")
                        .frame(width: 34, height: 34)
                        .font(.title)
                        .padding()
                        .background(Color("mainColor"))
                        .foregroundColor(.white)
                        .clipShape(Circle())
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)

            }
        }
}


    
struct MemoDetail: View {
    @Binding var memo: Memo
    
    var body: some View {
        VStack {
            TextField("제목", text: $memo.title)
                .font(.system(size: 20, weight: .bold))
            TextEditor(text: $memo.text)
            Spacer()
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Toggle("고정", isOn: $memo.fixed)
            }
        }
    }
}




struct NewMemoView: View {
    @ObservedObject var memos: Memos
    @Binding var newMemoTitle: String
    @Binding var newMemoText: String
    @Binding var newMemoFixed: Bool
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
            VStack {
                TextField("제목", text: $newMemoTitle)
                    .font(.system(size: 20, weight: .bold))
                TextEditor(text: $newMemoText)
                Spacer()
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("추가") {
                        let newMemo = Memo(title: newMemoTitle, text: newMemoText, fixed: false)
                        memos.addMemo(newMemo)
                        newMemoTitle = ""
                        newMemoText = ""
                        newMemoFixed = false
                        presentationMode.wrappedValue.dismiss()
                    }
                }
            }
    }
}

struct MemoListView_Previews: PreviewProvider {
    static var previews: some View {
        MemoListView(memos: Memos())
    }
}


