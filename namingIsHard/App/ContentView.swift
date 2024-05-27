//
//  ContentView.swift
//  namingIsHard
//
//  Created by Macbook on 25.05.2024.
//

import SwiftUI
import SwiftData
import Foundation
struct User: Identifiable {
    let id = UUID()
    let fullName: String
}

extension User {
    static let users = [
        User(fullName: "Abel Thomas"),
        User(fullName: "King Farley"),
        User(fullName: "Amiah Hurley"),
        User(fullName: "Thomas Lloyd"),
    ]
}

struct ContentView: View {
    @State var users = User.users
    
    var body: some View {
        List(users) { user in
            DefaultAvatar(user: user)
        }
        VStack {
            HStack(alignment: .top, content: {
                Text("Документы").font(.title).foregroundColor(.white)
                    .padding(5)
                    .background(.blue)
                    .cornerRadius(20)
                Spacer()
                
            })
            .padding(.top, 10)  // Увеличьте верхний отступ для "Документы"
            
            HStack(alignment: .top, content: {
                Menu("Menu") {
                    Text("На подписании")
                    Text("Подписанные")
                    Text("Архив")
                }
                .padding(.trailing, 10)
                Spacer()
            })
            .padding(.top, 20)  // Уменьшите верхний отступ для Menu
            
            Spacer()  // Этот Spacer подвинет все элементы выше
        }
        .padding(.horizontal, 30)  // Добавьте горизонтальные отступы
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
