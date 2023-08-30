//
//  LoginViewController.swift
//  JobApp
//
//  Created by Eman Khaled on 17/06/2023.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTF: UITextField!
    
    @IBOutlet weak var passTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
 
    
    @IBAction func forgetPassBtn(_ sender: UIButton) {
        
    }
    
    @IBAction func loginBtn(_ sender: UIButton) {
        guard let email = emailTF.text else{ return}
        guard let pass = passTF.text else {return}
        Auth.auth().signIn(withEmail: email, password: pass){ user, error in
            if  error == nil{
                self.performSegue(withIdentifier: "goToNext", sender: self)
            }
            else{
                
                let errorMessage = error!.localizedDescription
                let alert = UIAlertController(title: "Error", message: errorMessage, preferredStyle: .alert)
                let okAction = UIAlertAction(title: "OK", style: .default)
                alert.addAction(okAction)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    }
    

