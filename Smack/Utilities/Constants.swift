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

//Segues
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"

// User Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"
