//
//  ViewController.swift
//  Class
//
//  Created by RS on 2020/05/14.
//  Copyright © 2020 osuke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var namemLabel: UILabel!
    @IBOutlet var couseLabel: UILabel!
    var mentorArray: [Mentor] = []
    var index: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mentorArray.append(Mentor(name: "ながた",imageName: "nagata.jpg", course: "iPhone"))
        mentorArray.append(Mentor(name: "りょう",imageName: "ryo.jpg", course: "Unity"))
        mentorArray.append(Mentor(name: "たいてぃ",imageName: "taithi.JPG", course: "WebS,WebD"))
        setUI()
    }
    
    func setUI() {
        print(index)
        imageView.image = mentorArray[index].getImage()
        namemLabel.text = mentorArray[index].name
        couseLabel.text = mentorArray[index].course
    }

    @IBAction func mae() {
        if index == 0 {
            index = 2
            setUI()
        } else {
            index = index - 1
            setUI()
        }
    }
    
    @IBAction func usi() {
        if index == 2 {
            index = 0
            setUI()
        }else {
            index = index + 1
            setUI()
        }
       
    }
    

}

