//
//  Ref.swift
//  FlashCards
//
//  Created by Sean Jones on 11/8/21.
//

import Foundation
import Firebase

let REF_User = "users"
let UID = "uid"
let EMAIL = "email"
let USERNAME = "userName"
let CARDS = "CARDS"

class Ref {
    
    let databaseRoot: DatabaseReference = Database.database().reference()
    
    var dataBaseUsers: DatabaseReference {
        return databaseRoot.child(REF_User)
    }
    
    func databaseSpecificUser(uid: String) -> DatabaseReference {
        return dataBaseUsers.child(uid)
    }
    
}
