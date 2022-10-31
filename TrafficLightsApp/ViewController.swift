//
//  ViewController.swift
//  TrafficLightsApp
//
//  Created by Egor Yakovin on 30.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.layer.cornerRadius = 75
        redLight.backgroundColor = UIColor(red: 255, green: 0, blue: 0, alpha: 0.3)
        yellowLight.layer.cornerRadius = 75
        yellowLight.backgroundColor = UIColor(red: 255, green: 237, blue: 0, alpha: 0.3)
        greenLight.layer.cornerRadius = 75
        greenLight.backgroundColor = UIColor(red: 0, green: 255, blue: 0, alpha: 0.3)
        
    }


}

