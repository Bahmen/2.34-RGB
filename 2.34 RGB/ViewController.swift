//
//  ViewController.swift
//  2.34 RGB
//
//  Created by Bax Bax on 26.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var viewRGB: UIView!
    @IBOutlet var labelRed: UILabel!
    @IBOutlet var labelGreen: UILabel!
    @IBOutlet var labelBlue: UILabel!
    
    @IBOutlet var sliderRed: UISlider!
    @IBOutlet var sliderGreen: UISlider!
    @IBOutlet var sliderBlue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewRGB()

        sliderActionRed()
        sliderActionGreen()
        sliderActionBlue()
    }

    @IBAction func sliderActionRed() {
        labelRed.text = (round(sliderRed.value * 100) / 100).formatted()
        viewRGB.backgroundColor = (UIColor(red: CGFloat(sliderRed.value), green: CGFloat(sliderGreen.value), blue: CGFloat(sliderBlue.value), alpha: 1))
    }
    
    @IBAction func sliderActionBlue() {
        labelBlue.text = (round(sliderBlue.value * 100) / 100).formatted()
        viewRGB.backgroundColor = (UIColor(red: CGFloat(sliderRed.value), green: CGFloat(sliderGreen.value), blue: CGFloat(sliderBlue.value), alpha: 1))
    }

    @IBAction func sliderActionGreen() {
        labelGreen.text = (round(sliderGreen.value * 100) / 100).formatted()
        viewRGB.backgroundColor = (UIColor(red: CGFloat(sliderRed.value), green: CGFloat(sliderGreen.value), blue: CGFloat(sliderBlue.value), alpha: 1))
    }

    
    private func setupViewRGB() {
        viewRGB.layer.cornerRadius = 10
    }

  
}

