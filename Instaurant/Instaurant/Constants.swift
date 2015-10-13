//
//  Constants.swift
//  Instaurant
//
//  Created by Heng Wang on 2015-10-12.
//  Copyright © 2015 Heng Wang. All rights reserved.
//

import Foundation


// Instagram credentials
let INSTAGRAM_CLIENT_ID = "76c2eb472833493a912a4a462dbd6a77"
let INSTAGRAM_REDIRECT_URI = "https://instaurant.auth0.com/login/callback"
let INSTAGRAM_SERVICE_NAME = "com.artekr.instaurant"
let INSTAGRAM_ACCOUNT = "instaurant"


// Storyboard Identifier
let TAB_BAR_VIEW_ID = "TabBarView"
let HOME_VIEW_ID = "HomeView"
let LOGIN_VIEW_ID = "LoginView"


// Test json data
let userInfoData = UserInfo(jsonData: LocalJsonReader().getJsonData("test"))