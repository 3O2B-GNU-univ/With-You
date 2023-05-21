//
//  LodingView.swift
//  WithYou
//
//  Created by 준호 on 2023/05/18.
//

import SwiftUI

struct LodingView: View {
    var body: some View {
        ZStack{
            Color("mainColor")
                .ignoresSafeArea()
            Text("위듀")
                .font(.system(size: 65, weight: .bold, design: .default))
                .foregroundColor(Color.white)
                .shadow(radius: 10)
        }
    }
}

struct LodingView_Previews: PreviewProvider {
    static var previews: some View {
        LodingView()
    }
}
