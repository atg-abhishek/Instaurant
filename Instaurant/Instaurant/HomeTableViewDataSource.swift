//
//  HomeTableViewDataSource.swift
//  Instaurant
//
//  Created by Heng Wang on 2015-10-12.
//  Copyright © 2015 Heng Wang. All rights reserved.
//

import UIKit

class HomeTableViewDataSource: NSObject, UITableViewDataSource {
  
  
  func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    return 1
  }
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 1
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    if let cell = tableView.dequeueReusableCellWithIdentifier("restaurantCell") as? HomeTableViewCell {
      
      var restaurantImage: UIImage!
      
      let imageURL = NSURL(string: "https://scontent.cdninstagram.com/hphotos-xfa1/t51.2885-19/s150x150/11850374_967077700011679_1016423893_a.jpg")!
      if let imageData = NSData(contentsOfURL: imageURL) {
        restaurantImage = UIImage(data: imageData)
      }
      
      cell.configureCell(restaurantImage, name: "Kanbai", msg: "comcomcomcomc")
      
      return cell
    } else {
      return HomeTableViewCell()
    }
  }
}
