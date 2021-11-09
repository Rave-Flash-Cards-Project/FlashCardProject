//
//  User.swift
//  FlashCards
//
//  Created by Sean Jones on 11/8/21.
//

import Foundation

class User {
    
    var uid: String
    var userName: String
    var email: String
    var cards: [Card]
    var joinDate: Date
    
    init(uid: String, userName: String, email: String, cards: [Card] = [], joinDate : Date = Date()){
        self.uid = uid
        self.userName = userName
        self.email = email
        self.joinDate = joinDate
        self.cards = cards
        
    }
}

extension User: Equatable {
    static func == (lhs: User, rhs: User) -> Bool {
        return lhs.uid == rhs.uid
    }
}
