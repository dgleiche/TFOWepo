//
//  LoginVC.swift
//  TFOWepo
//
//  Created by Dylan on 8/18/16.
//  Copyright © 2016 DIG Productions. All rights reserved.
//

import Foundation
import UIKit

class LoginVC: UIViewController, GIDSignInDelegate, GIDSignInUIDelegate {
    
    @IBOutlet var signInButton: GIDSignInButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        GIDSignIn.sharedInstance().uiDelegate = self
        GIDSignIn.sharedInstance().delegate = self
        GIDSignIn.sharedInstance().signInSilently()
    
    }
    
    func signIn(signIn: GIDSignIn!, didSignInForUser user: GIDGoogleUser!, withError error: NSError!) {
        if error == nil {
            //Successfully completed Google auth process
            print("login w/ email: \(user.profile.email)")
            
            UserManager.createUser(withName: user.profile.name, email: user.profile.email, token: user.authentication.idToken)
            
            self.dismissViewControllerAnimated(true, completion: nil)
            
        } else {
            print("\(error.localizedDescription)")
        }
    }
    
    
    func signIn(signIn: GIDSignIn!, didDisconnectWithUser user: GIDGoogleUser!, withError error: NSError!) {
        //User disconnected
    }
}