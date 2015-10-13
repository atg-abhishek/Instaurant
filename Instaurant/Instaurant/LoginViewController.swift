//
//  LoginViewController.swift
//  Instaurant
//
//  Created by Heng Wang on 2015-10-12.
//  Copyright © 2015 Heng Wang. All rights reserved.
//

import UIKit
import SimpleAuth
import SwiftyJSON
import SSKeychain
import Alamofire

class LoginViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Configure Instagram login
    SimpleAuth.configuration()["instagram"] = [
      "client_id": INSTAGRAM_CLIENT_ID,
      SimpleAuthRedirectURIKey: INSTAGRAM_REDIRECT_URI
    ]
    
  }
  
  @IBAction func loginWithInstagram(sender: AnyObject) {
    SimpleAuth.authorize("instagram") { (responseObject, error) -> Void in
      
      if error == nil {
        // Convert responseObject to json object
        let json = JSON(responseObject)
        
        // Get username and access token from response object
        let username = json["user_info"]["username"].stringValue
        let accessToken = json["credentials"]["token"].stringValue
        
        print("username : \(username)")
        print("token : \(accessToken)")
        
        // Save accessToken in the keychain in local device
        SSKeychain.setPassword(accessToken, forService: INSTAGRAM_SERVICE_NAME, account: INSTAGRAM_ACCOUNT)
        
        print("sskeychain token : \(SSKeychain.passwordForService(INSTAGRAM_SERVICE_NAME, account: INSTAGRAM_ACCOUNT))")
        
        // Send user credential to the server
        let parameters = ["username": username, "token": accessToken]
        Alamofire.request(.POST, "http://localhost:5000/login", parameters: parameters).responseJSON(completionHandler: { (response) -> Void in
          print("Login response : \(response.result.value)")
      
        })
        
        // Prepare for view transition if login successfully
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let HomeViewController = storyboard.instantiateViewControllerWithIdentifier(TAB_BAR_VIEW_ID) as! UITabBarController
        self.presentViewController(HomeViewController, animated: false, completion: nil)
      
      }
    }
  }
  
}
