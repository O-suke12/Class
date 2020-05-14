//
//  Mentor.swift
//  Class
//
//  Created by RS on 2020/05/14.
//  Copyright © 2020 osuke. All rights reserved.
//

import  UIKit

class Mentor {
    var name: String!
    var course: String!
    var imageName: String!
    
    init(name: String, imageName: String, course: String) {
        self.name = name
        self.imageName = imageName
        self.course = course
    }
    
    func  getImage() -> UIImage  {
        return  UIImage(named: imageName)!
    }
}
