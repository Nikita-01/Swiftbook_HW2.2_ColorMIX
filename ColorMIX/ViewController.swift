//
//  ViewController.swift
//  ColorMIX
//
//  Created by Никита Рыжкин on 22.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var coloredView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greenValueLabel.text = String(round(greenSlider.value * 100) / 100)
        blueValueLabel.text = String(round(blueSlider.value * 100) / 100)
        redValueLabel.text = String(round(redSlider.value * 100) / 100)
        coloredView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    @IBAction func redSliderAction() {
        coloredView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
        redValueLabel.text = String(round(redSlider.value * 100) / 100)
    }
    
    @IBAction func greenSliderAction() {
        coloredView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
        greenValueLabel.text = String(round(greenSlider.value * 100) / 100)
}
    
    @IBAction func blueSliderAction() {
        coloredView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
        blueValueLabel.text = String(round(blueSlider.value * 100) / 100)
    }
}

