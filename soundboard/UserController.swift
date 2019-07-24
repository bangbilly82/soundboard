//
//  UserController.swift
//  soundboard
//
//  Created by Phincon on 14/07/19.
//  Copyright © 2019 dustry corportaon. All rights reserved.
//

import UIKit

class UserController: UIViewController {
    
    let API = Api(url: "https://jsonplaceholder.typicode.com/users")
    var User: [User] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        callApi()
    }
    
    func callApi() {
        API.callGetApi()
    }

}
