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
    fileprivate var startTimeAlternative: Date?
    
    @IBAction func startButtonTapped(_ sender: Any) {
        startTime = DispatchTime.now()
        startTimeAlternative = Date()
        durationLabel.text = ""
        alternateResultLabel.text = ""
        
    }
    @IBAction func endButtonTapped(_ sender: Any) {
        
        let endTime = DispatchTime.now()
        let endTimeAlternative = Date()
        
        let nanoTime = endTime.uptimeNanoseconds - startTime!.uptimeNanoseconds
        
        let duration = Double(nanoTime) / 1_000_000 // Make it millis
        let durationAlternative = startTimeAlternative!.timeIntervalSinceNow * -1 * 1000
        durationLabel.text = "\(duration) ms"
        alternateResultLabel.text = "\(durationAlternative) ms"
    }
    
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var alternateResultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

