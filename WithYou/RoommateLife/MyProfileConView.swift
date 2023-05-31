//
//  WithYouView.swift
//  WithYou
//
//  Created by 최성빈 on 2023/04/02.
//

import SwiftUI

struct MyProfileConView: View {
    @State private var isPressed = false // added @State property
    
    var body: some View {
        VStack {
            Button(action: {
                    self.isPressed.toggle()
                }) {
                    ZStack(alignment: .bottomTrailing) {
                        Image(systemName: "person.circle")
                            .foregroundColor(.black)
                            .font(.system(size: 70))
                        Circle()
                            .foregroundColor(isPressed ? .red : .green)
                            .frame(width: 20, height: 20)
                            .padding(4)
                }
            }
            Text("나")
                .fontWeight(.regular)
        }
    }
}


struct MyProfileConView_Previews: PreviewProvider {
    static var previews: some View {
        MyProfileConView()
    }
}
