//
//  ToDoView.swift
//  WithYou
//
//  Created by 최성빈 on 2023/04/03.
//

import SwiftUI


struct ToDoView: View {
    @ObservedObject var reminders: Reminders
    @State private var newReminderTitle = ""
    @State private var newReminderIsTapped = false
    @State private var isAddingNewReminder = false

    
    var body: some View {

            ZStack(alignment: .bottomTrailing) {
                List {
                    ForEach(reminders.remindersArr) { reminder in
                        ReminderRow(reminder: $reminders.remindersArr[reminders.remindersArr.firstIndex(of: reminder)!])
                    }
                    .onDelete(perform: reminders.removeReminder)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .listStyle(.plain)
                .ignoresSafeArea()
                
                Button(action: {
                    isAddingNewReminder = true
                }) {
                    Image(systemName: "plus")
                        .frame(width: 34, height: 34)
                        .font(.title)
                        .padding()
                        .background(Color("mainColor"))
                        .foregroundColor(.white)
                        .clipShape(Circle())
                }
                .padding()
                .sheet(isPresented: $isAddingNewReminder) {
                    NewReminderView(
                        newReminderTitle: $newReminderTitle, newReminderIsTapped: $newReminderIsTapped,
                        isAddingNewReminder: $isAddingNewReminder,
                        reminders: reminders
                    )
                }
            
        }
    }
}



struct ReminderRow: View {
    @Binding var reminder: Reminder
    @State private var refresh = false
    
    var body: some View {
        HStack {
            Button(action: {
                reminder.isTapped.toggle()
                refresh.toggle()
            }) {
                Image(systemName: "checkmark")
                    .font(.system(size: 15))
                    .font(.title)
                    .padding()
                    .frame(width: 25.0, height: 25.0)
                    .background(reminder.isTapped ? Color("mainColor") : .gray.opacity(0.5))
                    .foregroundColor(.white)
                    .clipShape(Circle())
            }
            VStack(alignment: .leading) {
                Text(reminder.title)
                    .font(.headline)
            }
            Spacer()
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: Color.gray.opacity(0.5), radius: 5, x: 0, y: 2)
        .id(refresh)
    }
}


struct NewReminderView: View {
    @Binding var newReminderTitle: String
    @Binding var newReminderIsTapped: Bool
    @Binding var isAddingNewReminder: Bool
    @ObservedObject var reminders: Reminders

    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("할 일")) {
                    TextField("", text: $newReminderTitle)
                }
                Section {
                    Button("추가") {
                        let newReminder = Reminder(title: newReminderTitle, isTapped: newReminderIsTapped)
                        reminders.addReminder(newReminder)
                        newReminderTitle = ""
                        isAddingNewReminder = false

                    }
                }
            }
            .navigationBarTitle("새로운 할 일")
            .navigationBarItems(
                leading:
                    Button(action: {
                        isAddingNewReminder = false

                    }) {
                        Text("취소")
                    }
                
            )
        }
    }
}

struct ToDoView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoView(reminders: Reminders())
    }
}

