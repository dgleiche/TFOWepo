//
//  User.swift
//  TFOWepo
//
//  Created by Dylan on 8/18/16.
//  Copyright © 2016 DIG Productions. All rights reserved.
//

import Foundation

class User: NSObject {
    let name: String
    let email: String
    
    init(withName name: String, email: String) {
        self.name = name
        self.email = email
        
        super.init()
    }
}