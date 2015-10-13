//
//  HomeViewController.swift
//  Instaurant
//
//  Created by Heng Wang on 2015-10-10.
//  Copyright © 2015 Heng Wang. All rights reserved.
//

import UIKit
import SwiftyJSON

class HomeViewController: UIViewController {
  
  // Mark: - Properties
  @IBOutlet var home_bkImgeView: UIImageView!
  @IBOutlet weak var homeTableView: UITableView!
  
  var dataSource: HomeTableViewDataSource?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    dataSource = HomeTableViewDataSource()
    homeTableView.dataSource = dataSource
    
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
