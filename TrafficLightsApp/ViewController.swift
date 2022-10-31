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
        redLight.layer.cornerRadius = 10
    }


}

