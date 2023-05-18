//
//  roommateFindView.swift
//  WithYou
//
//  Created by 전제윤 on 2023/05/18.
//

import SwiftUI

struct roommateFindView: View {
    
    @State private var favorite = false
    @State private var user_grade : Double = 0.0
    
    var body: some View {
        
        NavigationView {
            VStack{
             Toggle("즐겨찾기", isOn: $favorite)
                    .padding(.leading, 240)
                    .padding(.trailing, 20)
                ScrollView{
                    
                    NavigationLink(destination: DetailVeiwFront())
                    {
                        RoommateInfoView(userImage: "person.circle", nickName: "6관 청소 마스터", dormitory: 8, school_grade: 3, user_grade: user_grade)
                        
                    }
                    NavigationLink(destination: DetailVeiwFront())
                    {
                        RoommateInfoView(userImage: "person.circle", nickName: "6관 청소 마스터", dormitory: 8, school_grade: 3, user_grade: 2.32)
                        
                    }
                }

            
            }
        
            .navigationBarTitle("룸메이트 찾기")
        }
        .foregroundColor(.black)
        
       
    }//ContentView struct
}


struct roommateFindView_Previews: PreviewProvider {
    static var previews: some View {
        roommateFindView()
    }
}
