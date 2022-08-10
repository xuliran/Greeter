//
//  ViewController.swift
//  Greeter
//
//  Created by 徐丽然 on 2022/8/10.
//

import UIKit

class ViewController: UIViewController {
    
    // 确定按钮
    @IBOutlet weak var confirmButton: UIButton!
    
    // 问候语
    @IBOutlet weak var greetingLabel: UILabel!
    
    
    // 时间选择器
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        datePicker.setDate(Date.now, animated: false)
        confirmAction(confirmButton ?? UIButton())
        
    }
    
    // 确定选择的时间
    @IBAction func confirmAction(_ sender: Any) {
        let date = datePicker.date
        let components = Calendar.current.dateComponents([.hour,.minute],from: date)
        let hour = components.hour!
        
        print(hour)
        
        let greeter: String = MyGreeterClient.configGreeter(hour: hour)
        
        greetingLabel.text = greeter;
        
    }
    

}

