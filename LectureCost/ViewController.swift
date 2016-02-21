//
//  ViewController.swift
//  LectureCost
//
//  Created by Apple on 2/20/16.
//  Copyright © 2016 Adhitya Vadivel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //@IBOutlet weak var classNameValue: UITextField!
    @IBOutlet weak var tuitionCostValue: UITextField!
    @IBOutlet weak var totalHoursValue: UITextField!
    @IBOutlet weak var numberOfWeeksValue: UITextField!
    @IBOutlet weak var finalCostLabel: UILabel!
    @IBOutlet weak var minuteCostLabel: UILabel!
    
    //convert string to int for both values above
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tuitionCostValue.text = ""
        totalHoursValue.text = ""
        numberOfWeeksValue.text = ""
        finalCostLabel.text = "$0.00"
        minuteCostLabel.text = "$0.00"
    }

    @IBAction func calcButtonClick(sender: AnyObject) {
        let cost:String = tuitionCostValue.text!
        let weeks:String = numberOfWeeksValue.text!
        let hours:String = totalHoursValue.text!
        
        let costValue:Double = Double(cost)!
        let weeksValue:Double = Double(weeks)!
        let hoursValue:Double = Double(hours)!
        
        var totalHours:Double
        var costPerClass:Double
        var costPerMinute: Double
        totalHours = weeksValue * hoursValue
        costPerClass = costValue / totalHours
        costPerMinute = costPerClass / 50
    
        finalCostLabel.text = "$" + String(format: "%.2f", costPerClass)
    
        minuteCostLabel.text = "$" + String(format: "%.2f", costPerMinute)
    }
    
    @IBAction func clearButtonClick(sender: AnyObject) {
            //classNameValue.text = ""
            tuitionCostValue.text = ""
            totalHoursValue.text = ""
            numberOfWeeksValue.text = ""
            finalCostLabel.text = "$0.00"
            minuteCostLabel.text = "$0.00"
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

