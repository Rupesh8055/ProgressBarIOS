//
//  ViewController.swift
//  ProgreeBar
//
//  Created by Rupesh Mittal on 10/08/17.
//  Copyright © 2017 Rupesh Mittal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var progressBarView: ProgressBarVIew!
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

   

    @IBAction func sliderMoved(_ sender: Any) {
        progressBarView.innerProgress = CGFloat(slider.value)
    }

}

