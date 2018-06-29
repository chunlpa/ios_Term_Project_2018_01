//
//  pickerViewController.swift
//  UiTableViewController Test 02
//
//  Created by D7703_08 on 2018. 6. 29..
//  Copyright © 2018년 lse. All rights reserved.
//

import UIKit

class pickerViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    let MAX_ARRAY_NUM = 10
    let PICKER_VIEW_COLUMN = 1
    var imageArry = [UIImage?]()
    var imageFileName = [ "pic1, pic2, pic3, pic4, pic5, pic6, pic7"]

    @IBOutlet weak var pickerimage: UIPickerView!
    @IBOutlet weak var ImageFileName: UILabel!
    @IBOutlet weak var imageView: UIImageView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerimage.delegate = self
        pickerimage.dataSource = self

        // Do any additional setup after loading the view.
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return PICKER_VIEW_COLUMN
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return imageFileName.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow: Int, forcompcomponent: Int) -> String? {
        return imageFileName[titleForRow]
    }


    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
