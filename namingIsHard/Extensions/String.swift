//
//  String.swift
//  namingIsHard
//
//  Created by Macbook on 27.05.2024.
//

import Foundation

import SwiftUI

extension String {
    subscript(idx: Int) -> String {
        String(self[index(startIndex, offsetBy: idx)])
    }
}

struct DefaultAvatar: View {
    var user: User
    
    var body: some View {
        HStack {
            let name = String(user.fullName[user.fullName.startIndex]) + String(user.fullName.split(separator: " ")[1][user.fullName.split(separator: " ")[1].startIndex])
            
            ZStack {
                Circle().frame(width: 50, height: 50)
                Text(name).foregroundStyle(Color(UIColor.white))
            }
            Spacer().frame(width: 12)
            Text(user.fullName)
        }
    }
}
