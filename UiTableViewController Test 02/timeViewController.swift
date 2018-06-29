//
//  timeViewController.swift
//  UiTableViewController Test 02
//
//  Created by D7703_08 on 2018. 6. 29..
//  Copyright © 2018년 lse. All rights reserved.
//

import UIKit

class timeViewController: UIViewController {
    let timeSelector: Selector = #selector(timeViewController.updateTime)
    let tnterval = 1.0
    var count = 0
    
    
    
   
    @IBOutlet weak var currenttime: UILabel!
    @IBOutlet weak var pickertime: UILabel!
    
 
    override func viewDidLoad() {
        super.viewDidLoad()

        Timer.scheduledTimer(timeInterval: tnterval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        pickertime.text =
        "선택시간: " + formatter.string(from: datePickerView.date)
         }
    @objc func updateTime() {
   //     currenttime.text = String(count)
   //     count = count + 1
        
        
        let date = Date()        
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        currenttime.text = "현재시간:" + formatter.string(from: date as Date)
    }
    
}
