//
//  UserInfo.swift
//  Instaurant
//
//  Created by Heng Wang on 2015-10-12.
//  Copyright © 2015 Heng Wang. All rights reserved.
//

import Foundation
import UIKit
import SwiftyJSON

class UserInfo {
  
  private let userInfoJsonData: JSON!
  private var _full_name: String!
  private var _profile_picture: UIImage!
  
  var full_name: String {
    get {
      _full_name = userInfoJsonData["full_name"].stringValue
      return _full_name
    }
  }
  
  var profile_picture: UIImage {
    get {
      
      let profile_img_url = userInfoJsonData["profile_picture"].stringValue
      if let imageURL = NSURL(string: profile_img_url), imageData = NSData(contentsOfURL: imageURL) {
        _profile_picture = UIImage(data: imageData)
      } else {
        _profile_picture = UIImage(named: "profile_picture_placeholder")
      }
      return _profile_picture
    }
  }
  
  init(jsonData: JSON) {
    self.userInfoJsonData = jsonData
  }
  
  
}