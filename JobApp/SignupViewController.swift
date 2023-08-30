//
//  SignupViewController.swift
//  JobApp
//
//  Created by Eman Khaled on 17/06/2023.
//

import UIKit
import Firebase

class SignupViewController: UIViewController {

    
    @IBOutlet weak var emailTextF: UITextField!
    
    @IBOutlet weak var passTextF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func signupBtn(_ sender: UIButton) {
        guard let email = emailTextF.text else{ return}
        guard let pass = passTextF.text else {return}
        Auth.auth().createUser(withEmail: email, password: pass){ user, error in
            if  error == nil{
                self.performSegue(withIdentifier: "goToNext", sender: self)
            }
            else {
                print(error!.localizedDescription)
              
            }
        }
    }
    
}
