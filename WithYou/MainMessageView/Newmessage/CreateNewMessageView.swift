//
//  CreateNewMessageView.swift
//  withyou
//
//  Created by 전제윤 on 2023/05/25.
//

import SwiftUI
import SDWebImageSwiftUI

class CreateNewMessageViewModel: ObservableObject {
    
    @Published var users = [ChatUser]()
    @Published var errorMessage = ""
    
    init() {
        fetchAllUsers()
    }
    
    private func fetchAllUsers() {
        FirebaseManager.shared.firestore.collection("users")
            .getDocuments { documentsSnapshot, error in
                if let error = error {
                    self.errorMessage = "Failed to fetch users: \(error)"
                    print("Failed to fetch users: \(error)")
                    return
                }
                
                documentsSnapshot?.documents.forEach({ snapshot in
                    let data = snapshot.data()
                    let user = ChatUser(data: data)
                    if user.uid != FirebaseManager.shared.auth.currentUser?.uid {
                        self.users.append(.init(data: data))
                    }
                    
                })
            }
    }
}

struct CreateNewMessageView: View {
    
    let didSelectNewUser: (ChatUser) -> ()
    
    @Environment(\.presentationMode) var presentationMode
    
    @ObservedObject var vm = CreateNewMessageViewModel()
    
    var body: some View {
        VStack{
            HStack {
                Text("채팅 목록")
                    .font(.system(size: 36))
                    .fontWeight(.bold)
                    .padding(.all)
                Spacer()
            }
            NavigationView {
                ScrollView {
                    Text(vm.errorMessage)
                    
                    ForEach(vm.users) { user in
                        Button {
                            presentationMode.wrappedValue.dismiss()
                            didSelectNewUser(user)
                            
                            
                        } label: {
                            HStack(spacing: 16) {
                                WebImage(url: URL(string: user.profileImageUrl))
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 50, height: 50)
                                    .clipped()
                                    .cornerRadius(50)
                                    .overlay(RoundedRectangle(cornerRadius: 50)
                                                .stroke(Color(.label), lineWidth: 2)
                                    )
                                Text(user.email)
                                    .foregroundColor(Color(.label))
                                Spacer()
                            }.padding(.horizontal)
                        }
                        Divider()
                            .padding(.vertical, 8)
                    }
                }
            }
        }
        
    }
}

struct CreateNewMessageView_Previews: PreviewProvider {
    static var previews: some View {
        let isButtonPressed = Binding.constant(false)
//        CreateNewMessageView()
        MainMessagesView(isButtonPressed: isButtonPressed)
    }
}
