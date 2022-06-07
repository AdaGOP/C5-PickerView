//
//  ViewController.swift
//  PickerView
//
//  Created by zein rezky chandra on 07/06/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pickerView: UIPickerView!
    
    // Preparing the dataSource with multiple dimention
    var pickerData: [[String]] = [[String]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Load the data source, this will be 1 dimention of data source
        pickerData = [["Technical", "Design", "Product"], ["morning", "afternoon"], ["cohort 1", "cohort 2", "cohort 3", "cohort 4", "cohort 5"]]
        
        // Connect pickerView to the datasource and delegate
        prepareConnection()
    }

    func prepareConnection() {
        pickerView.dataSource = self
        pickerView.delegate = self
    }

}

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        pickerData[component].count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        pickerData[component][row]
    }
    
    // capturing what user selecting
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(pickerData[component][row])
    }
}
