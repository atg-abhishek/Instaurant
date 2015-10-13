//
//  ProfileViewController.swift
//  Instaurant
//
//  Created by Heng Wang on 2015-10-10.
//  Copyright © 2015 Heng Wang. All rights reserved.
//

import UIKit
import SSKeychain

class ProfileViewController: UIViewController {
  
  // MARK: - Properties
  @IBOutlet weak var background_imageView: UIImageView!
  @IBOutlet weak var profile_imageView: UIImageView!
  @IBOutlet weak var name_label: UILabel!
  
 
  override func viewWillAppear(animated: Bool) {
    profile_imageView.layer.borderWidth = 3.0
    profile_imageView.layer.borderColor = UIColor.whiteColor().CGColor
    profile_imageView.layer.cornerRadius = 10.0
    profile_imageView.clipsToBounds = true
    
    // Profile pictures
    profile_imageView.image = userInfoData.profile_picture
    
    // Profile name
    name_label.text = userInfoData.full_name
    
    
    // Profile background
    let blurView = UIVisualEffectView(effect: UIBlurEffect(style: UIBlurEffectStyle.Light))
    blurView.frame = background_imageView.bounds
    background_imageView.addSubview(blurView)
    
  }
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }

  @IBAction func logoutFromInstagram(sender: AnyObject) {
    
    if (SSKeychain.passwordForService(INSTAGRAM_SERVICE_NAME, account: INSTAGRAM_ACCOUNT) != nil) {
      SSKeychain.deletePasswordForService(INSTAGRAM_SERVICE_NAME, account: INSTAGRAM_ACCOUNT)
      let storyboard = UIStoryboard(name: "Main", bundle: nil)
      let LoginViewController = storyboard.instantiateViewControllerWithIdentifier(LOGIN_VIEW_ID)
      self.presentViewController(LoginViewController, animated: true, completion: nil)
      
    }
  }
  
  
  /*
  // MARK: - Navigation
  
  // In a storyboard-based application, you will often want to do a little preparation before navigation
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
  // Get the new view controller using segue.destinationViewController.
  // Pass the selected object to the new view controller.
  }
  */
  
}
