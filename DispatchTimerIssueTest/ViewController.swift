//
//  ViewController.swift
//  TestDispatchTime
//
//  Created by John on 27.01.17.
//  Copyright © 2017 John. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    fileprivate var startTime: DispatchTime?
    
    @IBAction func startButtonTapped(_ sender: Any) {
        startTime = DispatchTime.now()
        durationLabel.text = ""
        
    }
    @IBAction func endButtonTapped(_ sender: Any) {
        
        let endTime = DispatchTime.now()
        let nanoTime = endTime.uptimeNanoseconds - startTime!.uptimeNanoseconds
        
        let duration = Double(nanoTime) / 1_000_000 // Make it millis
        
        durationLabel.text = "\(duration) ms"
    }
    
    @IBOutlet weak var durationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

