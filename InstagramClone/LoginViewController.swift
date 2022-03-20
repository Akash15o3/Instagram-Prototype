//
//  LoginViewController.swift
//  InstagramClone
//
//  Created by Akash Aggarwal on 3/20/22.
//

import UIKit
import Parse

class LoginViewController: ViewController {

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onSignIn(_ sender: Any) {
        
        let username = usernameField.text!
        let password = passwordField.text!
        
        PFUser.logInWithUsername(inBackground:username, password: password) {
          (user: PFUser?, error: Error?) -> Void in
          if user != nil {
            self.performSegue(withIdentifier: "loginSegue", sender: nil)
            print("Login Success")
          } else {
              print("Error: \(error?.localizedDescription)")
          }
    }
    }
    
    @IBAction func onSignUp(_ sender: Any) {
        
        let user = PFUser()
        user.username = usernameField.text
        user.password = passwordField.text
        
        user.signUpInBackground { (success,error) in
            
            if success {
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
                print("Success Signing Up")
                
            }
            
            else {
                print("Error: \(error?.localizedDescription)")
            }
            
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
