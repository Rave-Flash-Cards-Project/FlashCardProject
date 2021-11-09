//
//  AuthViewController.swift
//  FlashCards
//
//  Created by Sean Jones on 11/8/21.
//

import UIKit
import FirebaseAuth

protocol AuthControllerDelegate {
    func  done()
}

class AuthViewController: UIViewController {

    //MARK: - PROPERTIES
    
    var delegate: AuthControllerDelegate?
    //MARK: - OUTLETS
    
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var signinButton: UIButton!
    
    @IBOutlet weak var createUserButton: UIButton!
    @IBOutlet weak var guestButton: UIButton!
    
    @IBOutlet weak var warningLabel: UILabel!
    //MARK: - LIFECYCLE
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        warningLabel.isHidden = true

        // Do any additional setup after loading the view.
    }
    
    static func create() -> AuthViewController {
        let controller = UIStoryboard(name: "Auth", bundle:     .main).instantiateViewController(withIdentifier: "AuthVC") as! AuthViewController
        return controller
        
    }
    
    
    //MARK: - ACTIONS & HELPERS
    
    func validateFields() {
        guard let userName = userNameLabel.text, !userName.isEmpty, user.isValid(.) else {
            warningLabel.isHidden = false
            warningLabel.text = "Please enter a valid user name"
            return
        }
        
        guard let email = passwordLabel.text, !email.isEmpty else {
            warningLabel.isHidden = false
            warningLabel.text = "Please enter a valid email address"
        }
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
