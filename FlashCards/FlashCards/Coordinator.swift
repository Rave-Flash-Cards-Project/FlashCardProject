//
//  Coordinator.swift
//  FlashCards
//
//  Created by Sean Jones on 11/8/21.
//

import Foundation
import UIKit


class Coordinator {
    let navigationController: UINavigationController
    
    init( _ rootController: UIViewController) {
        self.navigationController = UINavigationController(rootViewController: rootController)
    }
}

extension Coordinator: AuthControllerDelegate {
    func done() {
        
    }
    
    
}
