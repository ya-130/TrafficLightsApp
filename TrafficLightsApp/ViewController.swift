//
//  ViewController.swift
//  TrafficLightsApp
//
//  Created by Egor Yakovin on 30.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    private enum CurrentLight {
        case red, yellow, green
    }
    
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    
    private var currentLight = CurrentLight.green
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 10
        startButton.setTitle("START", for: .normal)
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        print(redLight.frame.width)
    }
    
    override func viewDidLayoutSubviews() {
        redLight.layer.cornerRadius = stackView.frame.width / 2
        yellowLight.layer.cornerRadius = stackView.frame.width / 2
        greenLight.layer.cornerRadius = stackView.frame.width / 2
    }
    
    
    @IBAction func changeLightButoonPressed() {
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
        }
        
        switch currentLight {
        case .red:
            redLight.alpha = 0.3
            yellowLight.alpha = 1
            currentLight = .yellow
        case .yellow:
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
            currentLight = .green
        case .green:
            greenLight.alpha = 0.3
            redLight.alpha = 1
            currentLight = .red
        }
    }
}

