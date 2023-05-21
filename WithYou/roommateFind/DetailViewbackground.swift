//
//  DetailViewbackground.swift
//  WithYou
//
//  Created by 전제윤 on 2023/05/18.
//

import SwiftUI


struct DetailViewbackground : View {
    
    var body : some View {
        VStack{
            Spacer()
            Text("닉네임이 들어가는 자리")
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                .padding(.top, 300)
            
            
        }
        .edgesIgnoringSafeArea(.all)
        .background(Color(red: 0.273, green: 0.609, blue: 0.834))
        
    }
}

struct DetailViewbackground_Previews: PreviewProvider {
    static var previews: some View {
        DetailViewbackground()
    }
}
