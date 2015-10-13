//
//  HomeTableViewCell.swift
//  Instaurant
//
//  Created by Heng Wang on 2015-10-10.
//  Copyright © 2015 Heng Wang. All rights reserved.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
  
  @IBOutlet weak var restaurantImageView: UIImageView!
  @IBOutlet weak var restaurantName: UILabel!
  @IBOutlet weak var restaurantMsg: UILabel!
  
  override func awakeFromNib() {
    super.awakeFromNib()
    // Initialization code
    restaurantImageView.layer.cornerRadius = 50
    restaurantImageView.clipsToBounds = true
  }
  
  override func setSelected(selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
    
    // Configure the view for the selected state
  }
  
  func configureCell(image: UIImage, name: String, msg: String) {
    restaurantImageView.image = image
    restaurantName.text = name
    restaurantMsg.text = msg
    
  }
  
  
}
