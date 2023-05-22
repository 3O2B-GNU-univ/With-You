//
//  UserImage.swift
//  WithYou
//
//  Created by 전제윤 on 2023/05/18.
//

import SwiftUI

struct UserImage: View {
    var body: some View {

        Image(systemName: "person.circle")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width : 100, height: 100)
            .foregroundColor(.black)
            .background(.white)
         
            .cornerRadius(90)
            
    }
}

struct UserImage_Previews: PreviewProvider {
    static var previews: some View {
        UserImage()
    }
}
