//
//  WorkNowViewController.swift
//  KinmuApp
//
//  Created by たかね ゆうき on 2022/01/30.
//

import UIKit

class WorkNowViewController: UIViewController {

    @IBOutlet weak var workLabel: UILabel!
    
    @IBOutlet weak var horidayLabel: UILabel!
    
    @IBAction func workNowSwitch(sender: UISwitch) {
        if (sender .isOn){
        workLabel.text = "Work"
        }else{
            workLabel.text = "Time Off"
        }
    }
    
    @IBAction func horidaySwitch(_ sender: UISwitch) {
        if (sender .isOn){
            horidayLabel.text = "Rest"
        }else{
            horidayLabel.text = "horiday"
        }
    }

    @IBOutlet weak var whereAboutsLabel: UILabel!
    
    
    @IBAction func whereAboutsSegmented(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex{
        case 0:
            whereAboutsLabel.text = "Office"
        case 1:
            whereAboutsLabel.text = "Outside"
        case 2:
            whereAboutsLabel.text = "Remotely"
        default:
            whereAboutsLabel.text = "Working Now"
        }
    }
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


