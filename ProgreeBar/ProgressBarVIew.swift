//
//  ProgressBarVIew.swift
//  ProgreeBar
//
//  Created by Rupesh Mittal on 10/08/17.
//  Copyright © 2017 Rupesh Mittal. All rights reserved.
//

import UIKit

class ProgressBarVIew: UIView {

    private var _innerProgress: CGFloat = 0.0
    
    var innerProgress: CGFloat {
        set {
            if newValue > 1.0 {
                _innerProgress = 1.0
            }
            else if newValue < 0.0 {
                _innerProgress = 0.0
            }
            else {
                _innerProgress = newValue
            }
            setNeedsDisplay()
        }
        get {
            return _innerProgress * bounds.width
        }
    }
    override func draw(_ rect: CGRect) {
        ProgressBarDraw.drawProgressBar(frame: bounds, progress: innerProgress)
    }
   }
