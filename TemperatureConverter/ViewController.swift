//
//  ViewController.swift
//  TemperatureConverter
//
//  Created by cheng way on 10/24/14.
//  Copyright (c) 2014 walkingway. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var titleLable: UILabel!
  @IBOutlet weak var celsiusLabel: UILabel!
  @IBOutlet weak var fahrenheitLabel: UILabel!
  @IBOutlet weak var kelvinLabel: UILabel!
  @IBOutlet weak var temperatureSlider: UISlider!
  
  @IBAction func temperatureSliderChanged(sender: UISlider) {
    updateTemperatureDisplays()
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
  
  //  override func viewWillLayoutSubviews() {
  //    super.viewWillLayoutSubviews()
  //    let screen = UIScreen.mainScreen()
  //    // Always return the size of the screen in portraits orientation
  //    println("screen fixed bounds: \(screen.fixedCoordinateSpace.bounds)")
  //    // Since ios8, this is the size of the screen in its current orientation
  //    println("screen bounds: \(screen.bounds)")
  //
  //    println("top layout guide: \(topLayoutGuide.length)")
  //    var width = screen.bounds.width - 16 * 2
  //    titleLable.frame = CGRect(x: 16, y: 16, width: width, height: 21 + topLayoutGuide.length)
  //    titleLable.backgroundColor = UIColor.grayColor()
  //    titleLable.textAlignment = .Center
  //  }
  
  
  func updateTemperatureDisplays() {
    var c = temperatureSlider.value
    var f = (c * 9/5) + 32
    var k = c + 273.15
    celsiusLabel.text = String(format: "%.1f", arguments: [c]) + "C"
    fahrenheitLabel.text = String(format: "%.1f", arguments: [f]) + "F"
    kelvinLabel.text = String(format: "%.1f", arguments: [k]) + "K"
  }
}

