//
//  Extensions.swift
//  FlashCards
//
//  Created by Sean Jones on 11/9/21.
//

import Foundation

extension String {
    enum validationType{
        
        
        case email
        case userName
     
    
    }
    
    enum Regex: String {
        case email =  "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        case userName = "^(?=.*[A-Za-z])(?=.*\\d)(?=.*[$@$!%*#?&])[A-Za-z\\d$@$!%*#?&]{8,}$"
       
        
    }
    
    // https://emailregex.com/regular-expressions-cheat-sheet
    func isValid(_ validationType: validationType) -> Bool {
        let format = "SELF MATCHES %@"
        var regex = ""
        
        switch validationType{
    
        case .email:
            regex = Regex.email.rawValue
        case .userName:
            regex = Regex.userName.rawValue
            
       
        }


        return NSPredicate(format: format, regex).evaluate(with: self)
        
    }
    
}
