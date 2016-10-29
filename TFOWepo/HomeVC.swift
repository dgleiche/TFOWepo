//
//  FirstViewController.swift
//  TFOWepo
//
//  Created by Dylan on 8/15/16.
//  Copyright © 2016 DIG Productions. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tfoGreen = UIColor(red:104/255, green:159/255, blue:56/255, alpha:1.0)
        
        self.navigationController?.navigationBar.barTintColor = tfoGreen
        self.navigationController?.navigationBar.translucent = false
        self.navigationController?.navigationBar.tintColor = UIColor.whiteColor()
        self.navigationController?.navigationBar.titleTextAttributes = [ NSFontAttributeName: UIFont(name: "AppleSDGothicNeo-UltraLight", size: 15)!, NSForegroundColorAttributeName: UIColor.whiteColor()]
        UIApplication.sharedApplication().statusBarStyle = .LightContent
        self.navigationItem.title = "HOME"
        
        //Style the tab bar
        for item in (self.tabBarController?.tabBar.items)! as [UITabBarItem] {
            if let image = item.image {
                item.image = image.imageWithColor(tfoGreen).imageWithRenderingMode(.AlwaysOriginal)
                item.selectedImage = item.selectedImage!.imageWithColor(tfoGreen).imageWithRenderingMode(.AlwaysOriginal)
                
            }
        }
        UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName: tfoGreen], forState:.Normal)
        UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName: tfoGreen], forState:.Selected)
 
        if (UserManager.sharedInstance == nil) {
            let loginPage = self.storyboard?.instantiateViewControllerWithIdentifier("loginVC") as! LoginVC
            self.tabBarController?.presentViewController(loginPage, animated: true, completion: nil)
        }
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        if let userManager = UserManager.sharedInstance {
            print(userManager.currentUser.name)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

