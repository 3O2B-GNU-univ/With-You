//
//  roommateFindView.swift
//  WithYou
//
//  Created by 전제윤 on 2023/05/18.
//

import SwiftUI

struct RoommateFindView: View {
    @State private var favorite = false
    @ObservedObject  var anothers = Anothers()
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .bottomTrailing) {
                VStack {
                    Toggle("즐겨찾기", isOn: $favorite)
                        .padding(.leading, 240)
                        .padding(.trailing, 20)
                    List(anothers.AnotherArr) { another in
                        ZStack {
                            NavigationLink(destination:  DetailVeiwFront(another: Another(id: UUID(), name: another.name, categories: another.categories))) {
                                
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
                    // Handle search button action
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
            .navigationBarTitle("룸메이트 찾기")
        }
        .foregroundColor(.black)
        .onAppear {
            // Load data into `AnotherArr`
        }
    }
}


struct RoommateFindView_Previews: PreviewProvider {
    static var previews: some View {
        return RoommateFindView()
            .environmentObject(Anothers())
    }
}
