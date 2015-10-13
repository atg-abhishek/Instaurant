//
//  LocalJsonReader.swift
//  Instaurant
//
//  Created by Heng Wang on 2015-10-12.
//  Copyright © 2015 Heng Wang. All rights reserved.
//

import Foundation
import SwiftyJSON

class LocalJsonReader {
  
  func getJsonData(fileName: String) -> JSON {
    if let path = NSBundle.mainBundle().pathForResource(fileName, ofType: "json") {
      print(path)
      if let data = NSData(contentsOfFile: path) {
        let jsonData = JSON(data: data, options: NSJSONReadingOptions.AllowFragments, error: nil)
        print("jsonData:\(jsonData)")
        return jsonData
      }
    }
    return []
  }
}