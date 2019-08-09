//
//  DetailViewController.swift
//  Google_Login
//
//  Created by Robert Shrestha on 2/19/18.
//  Copyright © 2018 Robert Shrestha. All rights reserved.
//

import UIKit
import GoogleSignIn
import Kingfisher

class DetailViewController: UIViewController {
    @IBOutlet weak var emailLblTxt:UILabel!
    @IBOutlet weak var nameLblTxt:UILabel!
    @IBOutlet weak var profileImgView:UIImageView!
    
    var googleUser = GIDGoogleUser()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.emailLblTxt.text = googleUser.profile.email
        self.nameLblTxt.text = googleUser.profile.name
       // let url = URL(string: googleUser.profile.imageURL(withDimension: UInt.init(100.0)))
        self.profileImgView.kf.setImage(with: googleUser.profile.imageURL(withDimension: UInt.init(100.0)))

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func logOutBtnPressed(_ sender: Any) {
        GIDSignIn.sharedInstance().signOut()
        self.dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
