//
//  AuthViewModel.swift
//  FlashCards
//
//  Created by Sean Jones on 11/10/21.
//

import Foundation
import FirebaseAuth


class AuthViewModel {
    
    init() {}
    
    
    func signUp(withUsername userName: String, email: String, _  onSuccess: @escaping ()-> Void, _ onError: @escaping (_ errorMessage: String) -> Void) {
        
        UserAPI.shared.signUp(withUsername: userName, email: email, password: email, onSuccess: {
            onSuccess()}) {
                (errorMessage) in
                onError(errorMessage)
        }
    }
}
