//
//  AuthViewController.swift
//  FlashCards
//
//  Created by Sean Jones on 11/8/21.
//

import UIKit

protocol AuthControllerDelegate {
    func  done()
}

class AuthViewController: UIViewController {

    //MARK: - PROPERTIES
    
    var delegate: AuthControllerDelegate?
    
    //MARK: -
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    static func create() -> AuthViewController {
        let controller = UIStoryboard(name: "Auth", bundle:     .main).instantiateViewController(withIdentifier: "AuthVC") as! AuthViewController
        return controller
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
