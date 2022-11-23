//
//  ViewController.swift
//  FirebaseAnalytics
//
//  Created by Sparkout on 08/11/22.
//

import UIKit
import FirebaseCore
import FirebaseAnalytics

class ViewController: UIViewController {
    
    @IBOutlet weak var userNameTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var submitButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        submitButton.backgroundColor = UIColor.black
        submitButton.setTitle("Submit", for: .normal)
        submitButton.setTitleColor(.white, for: .normal)
        submitButton.layer.cornerRadius = 12
        submitButton.addTarget(self, action: #selector(submitButtonAction), for: .touchUpInside)
    }
    
    @objc func submitButtonAction() {
        guard let userName = userNameTextfield.text, !userName.isEmpty else {
            Analytics.logEvent("Empty_Username", parameters: ["deviceType":"ios"])
            showAlert(message: "user name must not be empty")
            return
        }
        
        guard let password = passwordTextfield.text, !password.isEmpty else {
            showAlert(message: "password must not be empty")
            return
        }
        Analytics.logEvent("LoginUser", parameters: ["userName": userName,"password": password])
    }

}

