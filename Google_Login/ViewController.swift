//
//  ViewController.swift
//  Google_Login
//
//  Created by Robert Shrestha on 5/2/18.
//  Copyright © 2018 Robert Shrestha. All rights reserved.
//

import UIKit
import GoogleSignIn

class ViewController: UIViewController,GIDSignInDelegate,GIDSignInUIDelegate{
    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
        if error != nil{
            print(error.localizedDescription)
            
        }else{
            print(signIn as Any)
            print(user.profile.email as Any)
            print(user.profile.givenName as Any)
            print(user.profile.name as Any)
            print(user.profile.imageURL(withDimension: UInt.init(50.0)) as Any)
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
            vc.googleUser = user
            self.present(vc, animated: true, completion: nil)
    }
    }
    @IBOutlet weak var loginBtn: GIDSignInButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        GIDSignIn.sharedInstance().delegate = self
        GIDSignIn.sharedInstance().uiDelegate = self
       
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    private func signIn(signIn: GIDSignIn!,
                presentViewController viewController: UIViewController!) {
        self.present(viewController, animated: true, completion: nil)
    }
    
    // Dismiss the "Sign in with Google" view
    @IBAction func logoutBtnPressed(_ sender: Any) {
        
        
    }
    private func signIn(signIn: GIDSignIn!,
                dismissViewController viewController: UIViewController!) {
        self.dismiss(animated: true, completion: nil)
    }


}

