//
//  roommateFindView.swift
//  WithYou
//
//  Created by 전제윤 on 2023/05/18.
//

import SwiftUI

struct RoommateFindView: View {
    @State private var favorite = false
    @ObservedObject var anothers = Anothers()

    var filteredAnothers: [Another] {
        if favorite {
            return anothers.AnotherArr.filter { $0.favorit }
        } else {
            return anothers.AnotherArr
        }
    }

    var body: some View {
            ZStack(alignment: .bottomTrailing) {
                VStack {
                    HStack {
                        Text("룸메이트 찾기")
                            .font(.system(size: 36))
                            .fontWeight(.bold)
                            .padding(.all)
                        Spacer()
                    }
                        
                    
                    Toggle("즐겨찾기", isOn: $favorite)
                        .toggleStyle(SwitchToggleStyle(tint: Color("mainColor")))
                        .padding(.leading, 240)
                        .padding(.trailing, 20)
                    
                    List(filteredAnothers) { another in
                        ZStack {
                            NavigationLink(destination: DetailVeiwFront(another: Another(id: UUID(), name: another.name, categories: another.categories))) {
                                EmptyView()
                            }
                            .opacity(0)

                            RoommateInfoView(another: another)
                                .frame(height: 84)
                        }
                        .listRowInsets(EdgeInsets())
                    }
                    .padding(.top)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .listStyle(.plain)
                    .ignoresSafeArea()
                }
                Button(action: {
                    // 검색 버튼 액션을 처리합니다.
                }) {
                    Image(systemName: "magnifyingglass")
                        .frame(width: 34, height: 34)
                        .font(.title)
                        .padding()
                        .background(Color("mainColor"))
                        .foregroundColor(.white)
                        .clipShape(Circle())
                }
                .padding()
            }
    }
}



struct RoommateFindView_Previews: PreviewProvider {
    static var previews: some View {
        return RoommateFindView()
            .environmentObject(Anothers())
    }
}
