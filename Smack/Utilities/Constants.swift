//
//  Constants.swift
//  Smack
//
//  Created by Serena Lambert on 12/12/2017.
//  Copyright © 2017 Serena Lambert. All rights reserved.
//

import Foundation

typealias CompletionHandler = (_ Success: Bool) -> ()
// URL
let BASE_URL = "https://smack-serena.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register/"
let URL_LOGIN = "\(BASE_URL)account/login/"
let URL_USER_ADD = "\(BASE_URL)user/add/"

//Segues
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"
let TO_AVATAR_PICKER = "toAvatarPicker"

// User Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"

// Headers
let HEADER = [
    "Content-Type": "application/json; charset=utf-8"
]
