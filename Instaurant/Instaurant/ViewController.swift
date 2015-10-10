//
//  ViewController.swift
//  Instaurant
//
//  Created by Heng Wang on 2015-10-10.
//  Copyright © 2015 Heng Wang. All rights reserved.
//

import UIKit
import SimpleAuth

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    SimpleAuth.configuration()["instagram"] = [
      "client_id": "76c2eb472833493a912a4a462dbd6a77",
      SimpleAuthRedirectURIKey: "https://instaurant.auth0.com/login/callback"
    ]
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  @IBAction func connectWithInstagram(sender: AnyObject) {
    SimpleAuth.authorize("instagram") { (responseObject, error) -> Void in
      self.performSegueWithIdentifier("succeedLogin", sender: self)
      print("Instagram login response \(responseObject)")
      
      
    }
    
    
    
  }
  

}

