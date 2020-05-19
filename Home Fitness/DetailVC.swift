//
//  ViewController.swift
//  Home Fitness
//
//  Created by User on 22.04.2020.
//  Copyright © 2020 Sergey Tkachenko. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var opisanieButton: UIButton!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var nameExerciseLabel: UILabel!
    var opisanieTitle = ""
    var uprajneniaName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        image.image = UIImage(named: opisanieTitle)
        
    }


}

