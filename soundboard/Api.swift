//
//  Api.swift
//  soundboard
//
//  Created by Phincon on 14/07/19.
//  Copyright © 2019 dustry corportaon. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class Api {
    let URL: String
    
    init (url: String) {
        self.URL = url
    }
    
    func callGetApi() {
        Alamofire.request(URL).responseJSON { (response) in
            let json = response.result.value!
            let parseResponse = JSON(json)
            print(parseResponse[0]["name"])
        }
    }
}
