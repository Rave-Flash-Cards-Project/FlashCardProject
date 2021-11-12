//
//  UserAPI.swift
//  FlashCards
//
//  Created by Sean Jones on 11/10/21.
//

import Foundation
import Firebase
import FirebaseAuth


class UserAPI {
    
    static var shared = UserAPI()
    
    var currentUserId: String {
        
        return Auth.auth().currentUser != nil ? Auth.auth().currentUser!.uid : ""
    }
    
    
    func signUp(withUsername username: String, email: String, password: String, onSuccess: @escaping()-> Void, onError: @escaping(_ errorMessage: String) -> Void) {
        
        Auth.auth().createUser(withEmail: email, password: password) { (authDataResult, error) in
            if let error = error {
                print(error.localizedDescription)
            }
            
            if let authData = authDataResult {
                let dict: Dictionary<String, Any> = [
                    UID : authData.user.uid,
                    EMAIL : authData.user.email,
                    USERNAME: username,
                    CARDS: [Card]()
                ]
            }
            
        }
        
    }
    
    
    func signIn( email: String, password: String, onSuccess: @escaping() -> Void, onError: @escaping(_ errorMessage: String) -> Void) {
        Auth.auth().signIn(withEmail: email, password: password) { (authData, error) in
            if let error = error {
                onError(error.localizedDescription)
                return
            }
            print(authData?.user.uid)
            
            onSuccess()
        }
    }
}
