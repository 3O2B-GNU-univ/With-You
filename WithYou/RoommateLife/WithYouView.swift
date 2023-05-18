//
//  WithYouView.swift
//  WithYou
//
//  Created by 최성빈 on 2023/04/02.
//

import SwiftUI

struct WithYouView: View {
    
    var body: some View {
            VStack {
                HStack {
                    MyProfileConView()
                        .padding([.top, .leading, .trailing])
                    Spacer()
                }
                
                Divider()
                    .frame(width: 353.0, height: 2.0)
                    .background(Color("mainColor"))
                
                ToDoCon()
                    .padding(.top, 10.0)
                

            }
        }
        
}

struct WithYouView_Previews: PreviewProvider {
    static var previews: some View {
        WithYouView()
    }
}
