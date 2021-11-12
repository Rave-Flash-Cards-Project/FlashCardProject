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
    var viewModel = AuthViewModel()
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
        guard let userName = userNameTextField.text, !userName.isEmpty else {
            warningLabel.isHidden = false
            warningLabel.text = "Please enter a valid user name"
            return
        }
        
        guard let email = passwordTextField.text, !email.isEmpty else {
            warningLabel.isHidden = false
            warningLabel.text = "Please enter a valid email address"
            return
        }
        
        viewModel.signUp(withUsername: userName, email: email) {
            UserAPI.shared.currentUserId
        } _: { (errorMessage) in
            print(errorMessage)
        }

    }

   
    
    @IBAction func createUserButtonTapped(_ sender: Any) {
        self.validateFields()
    }
}
