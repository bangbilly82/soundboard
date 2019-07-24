//
//  User.swift
//  soundboard
//
//  Created by Phincon on 14/07/19.
//  Copyright © 2019 dustry corportaon. All rights reserved.
//

import Foundation
import UIKit

class User {
    var name: String
    var username: String
    var email: String
    var image: UIImage
    
    init(name: String, username: String, email: String, image: UIImage) {
        self.name = name
        self.username = username
        self.email = email
        self.image = image
    }
}
