//
//  stopwarchViewController.swift
//  UiTableViewController Test 02
//
//  Created by D7703_08 on 2018. 6. 29..
//  Copyright © 2018년 lse. All rights reserved.
//

import UIKit

class stopwarchViewController: UIViewController {
    @IBOutlet weak var timeLabel: UILabel!
    var count = 0
    var myTimer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func updatetime(){
        count = count + 1
        let min = count / 60 / 100
        let sec = (count - (min * 60 * 100)) / 100
        let msec = count - (min * 60 * 100) - (sec * 100)
        timeLabel.text = String(format: "%02d:%02d:%02d", min, sec, msec)
    }
    
    @IBAction func btStart(_ sender: Any) {
        myTimer = Timer.scheduledTimer(withTimeInterval: 1/100, repeats: true, block: {(myTimer) in self.updatetime()})
        
    }
    @IBAction func btReset(_ sender: Any) {
        count = 0
        timeLabel.text = "00:00:00"
        
    }
    
    
    @IBAction func btStop(_ sender: Any) {
        myTimer.invalidate()
    }
    
    
    
}

